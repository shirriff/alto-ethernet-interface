/*
 * iface.h
 *
 * Interface between PRU and host
 */

#ifndef IFACE_H_
#define IFACE_H_
#include <stdint.h>

#define STATUS_INPUT_COMPLETE (0 << 8)
#define STATUS_OUTPUT_COMPLETE (1 << 8)
#define STATUS_INPUT_OVERRUN (2 << 8)
#define STATUS_LOAD_OVERFLOW (3 << 8)
#define STATUS_ZERO_LENGTH (4 << 8)
#define STATUS_SOFTWARE_RESET (5 << 8)

#define STATUS_TRUNCATED 36 // Not part of real interface
#define STATUS_TIMING_ERROR 32 // Not part of real interface
#define STATUS_BIT_COLLISION 16
#define STATUS_BIT_CRC_BAD 8 // unused
#define STATUS_BIT_ICMD 4 // unused
#define STATUS_BIT_OCMD 2 // unused
#define STATUS_BIT_INCOMPLETE 1 // Not byte boundary

#define COMMAND_NONE 0
#define COMMAND_SEND 1
#define COMMAND_RECV 2
#define COMMAND_HALT 3

// Interface between host and PRU
struct iface {
	uint32_t r_command; // in
	uint32_t r_max_length; // in, bytes
	uint32_t r_received_length; // out, bytes
	uint32_t r_buf; // in (pointer)
	uint32_t r_status; // out
	uint32_t w_command; // in
	uint32_t w_length; // bytes, in (buffer length)
	uint32_t w_buf; // in (pointer)
	uint32_t w_status; // out
};

// For debugging. Offset into RAM
#define CIRCULAR_BUF_START ((uint32_t *)0x00001000)
#define CIRCULAR_BUF_END ((uint32_t *)0x00002000)
#endif /* IFACE_H_ */
