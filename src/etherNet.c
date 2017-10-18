// Runs ethernet PRU code.
// Works with the LCM's .Net code.
// Receives Alto Ethernet packets, broadcasts as UDP on port 42424.
// Receives UDP packets on port 42425 and send over Alto Ethernet
//
// Usage:
// $ ./etherNet
//
// Compile with:
// gcc -o ether ether.c -lprussdrv
//
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <errno.h>
#include <prussdrv.h>
#include <pruss_intc_mapping.h>
#include "iface.h"

void enableRecv();
void sendToAlto();
void recvFromAlto();
uint16_t crc(uint8_t *buf, int len);
void halt();
int decode(int len);

void sendEchoPacket();

int dataram; // Address of the PRU's data ram
// Memory map:
// 0x 0000: iface     .... 8K PRU0 RAM
// 0x 0400: write buf
// 0x 1000: circular buf
// 0x 2000: end       .... end of 8K PRU0 RAM
// 0x10000: read buf  .... start of 12K shared RAM
// 0x13000: end       .... end of 12K shared RAM
volatile struct iface *iface; // Interface block to the PRU code

volatile uint8_t *w_ptr; // Processor's pointer write buf at 0x0400
volatile uint8_t *r_ptr; // Processor's pointer to read buf at 0x10000
#define W_PTR_OFFSET 0x400
#define R_PTR_OFFSET 0x10000

#define MAX_PUP_LENGTH (554 + 10) // Extra 10 for slop
// Worst case is 16 transitions per byte. Needs to be under 12K.

// Buffer for packet bytes
const size_t byteBufLen = MAX_PUP_LENGTH;
uint8_t *udpBuf; // UDP buffer has 2 bytes at beginning for length
uint8_t *byteBuf; // Packet bytes
// Buffer for raw transitions from PRU. Could be 2 transitions per bit
size_t durationBufLen = 12*1024;
uint8_t *durationBuf;
// Buffer to hold individual bits.
size_t bitBufLen = 8 * MAX_PUP_LENGTH;
uint8_t *bitBuf;

int packetCount = 0, badPacketCount = 0;

#define UDP_RECV_PORT 42424 // Defined in ifs.cfg
#define UDP_SEND_PORT 42425

int sendSock;
int recvSock;
struct sockaddr_in s_send;
struct sockaddr_in s_recv;

#define PRUSS_INTC_CUSTOM {   \
  { PRU0_PRU1_INTERRUPT, PRU1_PRU0_INTERRUPT, PRU0_ARM_INTERRUPT, PRU1_ARM_INTERRUPT, ARM_PRU0_INTERRUPT, ARM_PRU1_INTERRUPT,  15, (char)-1  },  \
  { {PRU0_PRU1_INTERRUPT,CHANNEL1}, {PRU1_PRU0_INTERRUPT, CHANNEL0}, {PRU0_ARM_INTERRUPT,CHANNEL2}, {PRU1_ARM_INTERRUPT, CHANNEL3}, {ARM_PRU0_INTERRUPT, CHANNEL0}, {ARM_PRU1_INTERRUPT, CHANNEL1}, {15, CHANNEL0}, {-1,-1}},  \
  {  {CHANNEL0,PRU0}, {CHANNEL1, PRU1}, {CHANNEL2, PRU_EVTOUT0}, {CHANNEL3, PRU_EVTOUT1}, {-1,-1} },  \
  (PRU0_HOSTEN_MASK | PRU1_HOSTEN_MASK | PRU_EVTOUT0_HOSTEN_MASK | PRU_EVTOUT1_HOSTEN_MASK) /*Enable PRU0, PRU1, PRU_EVTOUT0, PRU_EVTOUT1 */ \
}

FILE *logFile;

int main(int argc, char **argv) {
  logFile = fopen("/tmp/log", "w");
  prussdrv_init();
  if (prussdrv_open(PRU_EVTOUT_0) == -1) {
    fprintf(stderr, "prussdrv_open() failed. Run:\n");
    fprintf(stderr, "echo PRU-ETHER-ALTO > /sys/devices/bone_capemgr.?/slots\n");
    exit(-1);
  }

  tpruss_intc_initdata pruss_intc_initdata = PRUSS_INTC_CUSTOM;
  prussdrv_pruintc_init(&pruss_intc_initdata);

  if (prussdrv_load_datafile(0 /* PRU0 */, "etherdata.bin") < 0) {
    fprintf(stderr, "Error loading etherdata.bin\n");
    exit(-1);
  }
  if (prussdrv_exec_program(0 /* PRU0 */, "ethertext.bin") < 0) {
    fprintf(stderr, "Error loading ethertext.bin\n");
    exit(-1);
  }

  if (prussdrv_map_prumem(PRUSS0_PRU0_DATARAM, (void *)&dataram) < 0) {
    fprintf(stderr, "map_prumem failed");
    exit(-1);
  }

  udpBuf = malloc(byteBufLen + 2); // UDP buffer has 2 bytes at beginning for length
  byteBuf = udpBuf + 2; // Packet bytes
  durationBuf = malloc(durationBufLen);
  bitBuf = malloc(bitBufLen); // Buffer to hold individual bits.

  iface = (struct iface *)dataram;
  w_ptr = (uint8_t *)(dataram + W_PTR_OFFSET);
  r_ptr = (uint8_t *)(dataram + R_PTR_OFFSET);

  // Init sockets
  sendSock = socket(AF_INET, SOCK_DGRAM, 0);
  int broadcastEnable = 1;
  setsockopt(sendSock, SOL_SOCKET, SO_BROADCAST, &broadcastEnable, sizeof(broadcastEnable));
  memset(&s_send, '\0', sizeof(s_send));
  s_send.sin_family = AF_INET;
  s_send.sin_port = htons(UDP_SEND_PORT);
  s_send.sin_addr.s_addr = htonl(INADDR_BROADCAST);

  recvSock = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
  broadcastEnable = 1;
  setsockopt(recvSock, SOL_SOCKET, SO_BROADCAST, &broadcastEnable, sizeof(broadcastEnable));
  memset(&s_recv, '\0', sizeof(s_recv));
  s_recv.sin_family = AF_INET;
  s_recv.sin_port = htons(UDP_RECV_PORT);
  s_recv.sin_addr.s_addr = INADDR_ANY;
  if (bind(recvSock, (struct sockaddr *)&s_recv, sizeof(struct sockaddr_in)) < 0) {
    perror("Bind on recv");
    exit(-1);
  }

  while (1) {
    enableRecv();
    // fprintf(stderr, "Waiting on recv %x %x\n", iface->r_buf, iface->r_max_length);
    int pruFd = prussdrv_pru_event_fd(PRU_EVTOUT_0);
    fd_set rfds;
    FD_ZERO(&rfds);
    FD_SET(pruFd, &rfds);
    FD_SET(recvSock, &rfds);
    int maxfd = pruFd > recvSock ? pruFd : recvSock;
    int retval = select(maxfd + 1, &rfds, NULL /* wfds */, NULL /* exceptfds */, NULL /* timeout */);
    if (retval == 0) {
      fprintf(stderr, "Timeout\n");
      continue;
    }
    if (FD_ISSET(recvSock, &rfds)) {
      // Packet received from UDP; send to Alto
      // fprintf(stderr, "sendToAlto\n");
      sendToAlto();
    }
    if (FD_ISSET(pruFd, &rfds)) {
      // Packet received from Alto; send over UDP
      // fprintf(stderr, "recvFromAlto\n");
      recvFromAlto();
    }
  }
}

#define RECV_WIDTH 2 // Recv values are in units of 2 ns (to fit in byte)

void enableRecv() {
  iface->r_buf = R_PTR_OFFSET;
  iface->r_max_length = durationBufLen;
  iface->r_command = COMMAND_RECV;
}

// Receive packet from Alto
void recvFromAlto() {
  prussdrv_pru_wait_event(PRU_EVTOUT_0);
  prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
  // fprintf(stderr, "\nr_length status %d w_length status %d\n", iface->r_received_length, iface->w_length);
  if (iface->r_status != STATUS_INPUT_COMPLETE) {
    fprintf(stderr, "Bad status %x\n", iface->r_status);
    fprintf(logFile, "Bad status %x\n", iface->r_status);
    int i;
    for (i = 0; i < durationBufLen; i++) {
      fprintf(logFile, "%d ", r_ptr[i]);
    }
    fprintf(logFile, "\n");
  int r_length = iface->r_received_length;
    memcpy(durationBuf, (uint8_t *) r_ptr, r_length);
    int decodedLen = decode(r_length);
    printf("decodedLen %d\n", decodedLen);
    return;
  }
  int r_length = iface->r_received_length;
  if (r_length > durationBufLen) {
    fprintf(stderr, "Received data too long %d vs %d\n", r_length, durationBufLen);
    return;
  }
  memcpy(durationBuf, (uint8_t *) r_ptr, r_length);
  enableRecv(); // Ready for next packet
  packetCount++;
  int decodedLen = decode(r_length);
  if (decodedLen < 0) {
    badPacketCount++;
    fprintf(stderr, "Received bad data %d:\n", iface->r_received_length);
    fprintf(stderr, "%d packets, %d bad\n", packetCount, badPacketCount);
    return;
  }
  // fprintf(stderr, "Recv: %d bytes\n", decodedLen);
#if 0
  // fprintf(logFile, "Recv: %d bytes\n", decodedLen);
  int i;
  for (i = 0; i < decodedLen; i++) {
    fprintf(logFile, "%02x ", byteBuf[i]);
  }
  fprintf(logFile, "\n");
#endif

  // LCM's UDP encoding: prepend the data with the length in words
  int wordLength = (decodedLen + 1) / 2;
  udpBuf[0] = wordLength >> 8;
  udpBuf[1] = wordLength & 0xff;
  if (sendto(sendSock, udpBuf, decodedLen + 2, 0, (struct sockaddr *)&s_send, sizeof(struct sockaddr_in)) < 0) {
    perror("send");
  }
}

void sendTestToAlto() {

  int wordLength = (udpBuf[0] << 8) | udpBuf[1];
  memcpy((uint8_t *) w_ptr, byteBuf, wordLength * 2);
  iface->w_buf = W_PTR_OFFSET;
  iface->w_length = wordLength * 2;
  iface->w_command = COMMAND_SEND;
  fprintf(stderr, "Waiting on send\n");
  prussdrv_pru_wait_event(PRU_EVTOUT_0);
  prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
  fprintf(stderr, "Send completed\n");
}

// Send packet to Alto
void sendToAlto() {
  // Read data from socket
  struct sockaddr_storage src_addr;
  socklen_t src_addr_len = sizeof(src_addr);
  ssize_t count = recvfrom(recvSock, udpBuf, byteBufLen + 2, 0 /* flags */, (struct sockaddr *)&src_addr, &src_addr_len);
  if (count == -1) {
    perror("recvfrom");
    return;
  } 

  int wordLength = (udpBuf[0] << 8) | udpBuf[1];
  uint16_t crcVal = crc(byteBuf, wordLength);
  // printf("CRC val %x\n", crcVal);
  byteBuf[wordLength * 2] = crcVal >> 8;
  byteBuf[wordLength * 2 + 1] = crcVal & 0xff;
  wordLength += 1;
  memcpy((uint8_t *) w_ptr, byteBuf, wordLength * 2);
  iface->w_buf = W_PTR_OFFSET;
  iface->w_length = wordLength * 2;
  iface->w_command = COMMAND_SEND;
#if 0
  fprintf(logFile, "sendToAlto: %d words\n", wordLength);
  int i;
  for (i = 0; i < wordLength*2; i++) {
    fprintf(logFile, "%02x ", w_ptr[i]);
  }
  fprintf(logFile, "\n");
#endif
  printf("Sending: len %d, offset %x %02x %02x %02x %02x\n", wordLength, W_PTR_OFFSET,
      w_ptr[10], w_ptr[11], w_ptr[wordLength*2 - 4], w_ptr[wordLength*2-3]);
  //fprintf(stderr, "Waiting on send\n");
  prussdrv_pru_wait_event(PRU_EVTOUT_0);
  prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
  //fprintf(stderr, "Send completed\n");
}

// Decode timings from PRU into bytes.
// Return lenth in bytes or -1 for error
int decode(int len) {
  // Convert timings into high/low vector
  int offset1; // Offset into timing vector
  int offset2 = 0; // Offset into bit vector
  int value = 1; // Current high/low value
  for (offset1 = 0; offset1 < len; offset1++) {
    int width = durationBuf[offset1] * RECV_WIDTH;
    if (width < 120) {
      fprintf(stderr, "Bad width %d at %d of %d\n", width, offset1, len);
      return -1;
    } else if (width < 230) {
      value = !value;
      bitBuf[offset2++] = value;
    } else if (width < 280) {
      fprintf(stderr, "Bad width %d at %d of %d\n", width, offset1, len);
      return -1;
    } else if (width < 400) {
      value = !value;
      bitBuf[offset2++] = value;
      bitBuf[offset2++] = value;
    } else {
      fprintf(stderr, "Bad width %d at %d of %d\n", width, offset1, len);
      return -1;
    }
  }
  // fprintf(stderr, "Len: %d %d\n", offset2, offset2 % 16);
  // Convert bit pairs to bytes
  uint8_t byte = 0;
  int byteCount = 0;
  int i;
  if ((offset2 % 2) == 0) {
    // For a 0 bit, the last 1 signal gets combined with the no-signal state and lost.
    // So add it back.
    bitBuf[offset2] = 1;
    offset2 += 1;
  }
  for (i = 1; i < offset2; i += 2) {
    if (bitBuf[i] == bitBuf[i+1]) {
      fprintf(stderr, "Bad bit sequence at %d of %d: %d %d\n", i, offset2, bitBuf[i], bitBuf[i+1]);
      byte = byte << 1;
    } else {
      byte = (byte << 1) | bitBuf[i];
    }
    if ((i % 16) == 15) {
      byteBuf[byteCount++] = byte;
      if (byteCount >= byteBufLen) {
        fprintf(stderr, "Buffer overflow\n");
	return -1;
      }
      byte = 0;
    }
  }
  if ((offset2 % 16) != 1) {
    fprintf(stderr, "Bad offset2: %d\n", offset2);
    return -1;
  }
  uint16_t crcVal = crc(byteBuf, (byteCount - 2) / 2);
  uint16_t readCrcVal = (byteBuf[byteCount - 2] << 8) | byteBuf[byteCount - 1];
  if (crcVal != readCrcVal) {
    fprintf(stderr, "Bad checksum %04x vs %04x\n", crcVal, readCrcVal);
    return -1;
  }
  return byteCount;
}

void halt() {
  fprintf(stderr, "Halting\n");
  volatile struct iface *iface = (struct iface *)dataram;
  iface->r_command = COMMAND_HALT;
}

// Generate CRC-16 for Alto Ethernet
// buf is sequence of words stored big-endian.
// len is length in words
uint16_t crc(uint8_t *buf, int len) {
  uint16_t crc = 0x8005; // Due to the sync bit
  int n;
  int i;
  for (n = 0; n < 2 * len; n++) {
    uint16_t data = buf[n] << 8;
    for (i = 0; i < 8; i++) {
      uint16_t xorFeedback = (crc ^ data) & 0x8000; // Test upper bit
      crc = crc << 1;
      data = data << 1;
      if (xorFeedback) {
        crc ^= 0x8005; // CRC-16 polynomial constant
      }
    }
  }
  return crc;
}

int hexCharToInt(char c) {
  if (c >= '0' && c <= '9') {
    return c - '0';
  } else if (c >= 'A' && c <= 'F') {
    return c - 'A' + 10;
  } else if (c >= 'a' && c <= 'f') {
    return c - 'a' + 10;
  } else {
    printf("Bad char %c\n", c);
    exit(-1);
  }
}

int c = 0;
void sendEchoPacket() {
  // send
  int buf_offset = 1024;
  uint8_t *buf = malloc(1024);
  
  // int len = getData("bootblock", buf, 1024);
  // char *bytes = "00 43 02 00 00 19 00 01 00 00 00 00 00 00 00 00 00 05 00 43 8e d0 cc 9d 66 6f 6f 21 ff ff ff ff";
  char *bytes = "42 43 01 C0 09 6d ff ff 00 01 01 01 ff ff";
  printf("Sending echo packet\n");
  int byteCount = 0;
  int i;
  for (i = 0; i < strlen(bytes); i += 3) { 
    buf[byteCount++] = hexCharToInt(bytes[i]) * 16 + hexCharToInt(bytes[i + 1]);
  }
  buf[0] = 0;
  buf[1] = 0;
  //buf[6] = c >> 8;
  //buf[7] = c & 0xff;
   c++;
  uint16_t crc_val = crc(buf, byteCount / 2);
  printf("crc: %04x\n", crc_val);
  buf[byteCount++] = crc_val >> 8;
  buf[byteCount++] = crc_val & 0xff;
    printf("Sending\n");
    //sendbuf(buf, byteCount / 2);

  int wordLength = byteCount / 2;
  memcpy((uint8_t *) w_ptr, buf, wordLength * 2);
  for (i = 0; i < wordLength; i++) {
    printf("%04x ", ((uint16_t *)w_ptr)[i]);
  }
  printf("\n");
  iface->w_buf = W_PTR_OFFSET;
  printf("Echo code sending len %d, offset %x\n", wordLength, W_PTR_OFFSET);
  iface->w_length = wordLength * 2;
  iface->w_command = COMMAND_SEND;
  fprintf(stderr, "Waiting on send\n");
  prussdrv_pru_wait_event(PRU_EVTOUT_0);
  prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
  fprintf(stderr, "Send completed\n");
}
