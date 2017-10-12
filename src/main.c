/*
 * Ethernet emulator for Alto.
 * Ken Shirriff, http://righto.com
 */
#include <stdint.h>
#include <stdint.h>
#include <stdbool.h>

#include "pru_defs.h"
#include "iface.h"

// The interface structure between the host and PRU
#define IFACE ((volatile struct iface *)MEM_START)

// Forward definitions
uint16_t send_packet();
uint16_t receive_packet();
void init_pwm();
void wait_for_pwm_timer();
void write_circular_buf(uint32_t val);
void reset_iep_timer();
void init_iep_timer();

#if 1 /* live */
#define HIGH 0
#define LOW 1
#else /* testing */
#define HIGH 1
#define LOW 0
#endif

void main() {
	*PRU_CTRL |= 8; // Enable cycle count, TRM 4.5.1.1

	__R30 = HIGH << WRITE_PIN; // Set output

	init_pwm();
	init_iep_timer();
	reset_iep_timer();

	int done = 0;
	while (!done) {
		if (IFACE->r_command == COMMAND_RECV) {
			// Will block until packet received or interrupted by w_command
			uint16_t status = receive_packet();
			if (status != STATUS_SOFTWARE_RESET) {
				// receive completed
				IFACE->r_status = status;
				__R31 = 35;  // Interrupt to host
				__delay_cycles(20);
				__R31 = 0;
				write_circular_buf(0xcafe0000 + status);
			}
		}
		uint8_t w_command = IFACE->w_command;
		if (w_command != 0) {
			write_circular_buf(0xa0000000 + w_command);
			if (w_command == COMMAND_SEND) {
				IFACE->w_status = send_packet();
			} else if (w_command == COMMAND_HALT) {
				done = 1;
			}
			write_circular_buf(0xb0000000 | IFACE->w_status);

			IFACE->w_command = COMMAND_NONE; // Wait for new command
			__R31 = 35;  // Interrupt to host
			__delay_cycles(20);
			__R31 = 0;
			write_circular_buf(0xc0000000);
		}
	}
	__halt();
}

// Sends an Ethernet packet. Must be stored big-endian.
inline uint16_t send_packet() {
	uint16_t len /* bytes */ = IFACE->w_length /* bytes */;
	uint8_t *buf = (uint8_t *)IFACE->w_buf;


	__R30 = HIGH << WRITE_PIN; // XXX

	// Generate CTR = PRD (counter = period) event
	// Send sync 1 bit (0 then 1)

	// Wait for timer, send (hold) 1
	wait_for_pwm_timer();
	__R30 = HIGH << WRITE_PIN;

	// Wait for timer, send 0
	wait_for_pwm_timer();
	__R30 = LOW << WRITE_PIN;

	short i;
	for (i = 0; i < len; i++) {
		uint8_t byte = buf[i];
		uint8_t bit_count;
		for (bit_count = 0; bit_count < 8; bit_count++) {
			if (__R31 && (1 << READ_PIN) && 0) {
				// Raise collision signal
				write_circular_buf(0xdeaddead);
				__R30 = (1 << COLL_PIN) | (HIGH << WRITE_PIN);
				__delay_cycles(200); // 1000 ns
				__R30 = HIGH << WRITE_PIN;
				return STATUS_OUTPUT_COMPLETE | STATUS_BIT_COLLISION;
			}
			if (byte & 0x80) {
				// Send 1 (1 then 0)
				wait_for_pwm_timer();
				__R30 = HIGH << WRITE_PIN;
				wait_for_pwm_timer();
				__R30 = LOW << WRITE_PIN;

			} else {
				wait_for_pwm_timer();
				__R30 = LOW << WRITE_PIN;
				wait_for_pwm_timer();
				__R30 = HIGH << WRITE_PIN;
			}
			byte <<= 1;
		}
	}

	// End with 1
	wait_for_pwm_timer();
	__R30 = HIGH << WRITE_PIN;
	// Return status
	return STATUS_OUTPUT_COMPLETE;

}

// Receive an Ethernet packet as raw durations.
// Dump the durations as bytes to buf (the shared memory).
// Durations in units of 2 ns (i.e. divided by 2 so max value fits in a byte)
inline uint16_t receive_packet() {
	uint32_t prev_timer_cnt; // Old timer read value
	uint32_t timer_cnt; // New timer read value
	uint32_t last = 0; // last value read, low because of sync
	uint16_t max_len /* bytes */ = IFACE->r_length /* bytes */;
	uint8_t *buf = (uint8_t *)IFACE->r_buf; // Input buffer address
	uint16_t count;
	int i;

#if 0
	if (!(__R31 & (1 << READ_PIN))) {
	  return STATUS_ZERO_LENGTH;
	}
#else
    // Wait for high (carrier)
	while (!(__R31 & (1 << READ_PIN))) {
		// Check for interrupt of receive, i.e. host wants to send
		if (IFACE->w_command != 0) {
			write_circular_buf(0xe0000000);
			return STATUS_SOFTWARE_RESET;
		}
	}
#endif

	do {
		prev_timer_cnt = *IEP_TMR_CNT;
		// Wait for sync (low transition)
		while (__R31 & (1 << READ_PIN)) {
			// Check for interrupt of receive, i.e. host wants to send
			if (IFACE->w_command != 0) {
				write_circular_buf(0xf0000000);
				return STATUS_SOFTWARE_RESET;
			}
		}
		timer_cnt = *IEP_TMR_CNT;
	} while (timer_cnt - prev_timer_cnt < 1000);

	prev_timer_cnt = timer_cnt;

	// Check for input transition (unrolled loop)
	for (count = 0; count < max_len; count++) {
#pragma UNROLL(32) // 3 cycles per iteration = 15ns. Want to detect max pulse of 400ns.
		for (i = 0; i < 32; i++) {
			if ((__R31 & (1 << READ_PIN)) != last)
				goto detected;
		}

		// End of packet timeout. Return.
		IFACE->r_length = count;
		write_circular_buf(0x10000000 + count);
		// Record last value, just for debugging
		timer_cnt = *IEP_TMR_CNT;
		buf[count] = (timer_cnt - prev_timer_cnt) / 2; // Store (scaled) time since previous transition

		return STATUS_INPUT_COMPLETE;

		// Transition detected. Record pulse width.
		detected:
		timer_cnt = *IEP_TMR_CNT;
		buf[count] = (timer_cnt - prev_timer_cnt) / 2; // Store (scaled) time since previous transition
		prev_timer_cnt = timer_cnt;

		last = last ? 0 : (1 << READ_PIN); // Flip bit that we're waiting for.
	}
	write_circular_buf(0x20000000);
	return STATUS_INPUT_OVERRUN;
}

// Initializes the PWM timer, used to control output transitions.
inline void init_pwm() {
	*PRU_INTC_GER = 1; // Enable global interrupts
	*ECAP_APRD = 170 / 5 - 1; // 170 ns period
    *ECAP_ECCTL2 = (1<<9) /* APWM */ | (1<<4) /* counting */;
	*ECAP_TSCTR = 0; // Clear counter
	*ECAP_ECEINT = 0x80; // Enable compare equal interrupt
	*ECAP_ECCLR = 0xff; // Clear interrupt flags
}

int status = 1;
// Wait for the PWM timer to fire, once every 170 ns.
// This timer controls the output signal
// see TRM 15.2.4.26
inline void wait_for_pwm_timer() {
    while (!(__R31 & (1 << 30))) {
    } // Wait for timer compare interrupt
	*ECAP_ECCLR = 0xff; // Clear interrupt flags
    *PRU_INTC_SICR =  15; // *PRU_INTC_GPIR; // Clear interrupt
    __delay_cycles(1);
}

// Initialize IEP timer (see TRM 4.4.3.2.2)
// This timer is used to measure the time between input transitions
// when reading from Ethernet.
inline void init_iep_timer() {
	// Initialize default values
	*IEP_TMR_GLB_CFG = 0; // disable
	*IEP_TMR_CNT = 0xffffffff; // clear all bits
	*IEP_TMR_COMPEN = 0; // disable compensation
	*IEP_TMR_GLB_STS = 1; // clear counter overflow status
	*IEP_TMR_CMP_STS = 0xff; // clear compare statuses
	// Disable compare events
	*IEP_TMR_CMP_CFG = 0;
	// Set increment value, enable counter
	*IEP_TMR_GLB_CFG = 0x551; // 5 to count nanoseconds, 1=enable
}

// Clears the IEP timer.
// This resets the measurement between input transitions
inline void reset_iep_timer() {
	*IEP_TMR_CNT = 0xffffffff; // clear all bits
}

uint16_t circular_buf_count = 0;
uint32_t *circular_buf = CIRCULAR_BUF_START;
inline void write_circular_buf(uint32_t val) {
	*circular_buf++ = val;
	if (circular_buf == CIRCULAR_BUF_END) {
		circular_buf = CIRCULAR_BUF_START;
	}
}
