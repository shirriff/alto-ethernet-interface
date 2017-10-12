/*
 * pru_defs.h
 *
 * Definitions of PRU pins and registers.
 */

#ifndef PRU_DEFS_H_
#define PRU_DEFS_H_

// Configurations:
// PROD: sending and receiving run in PRU0
// TEST: sending from PRU0, receiving in PRU1
// This allows the two PRUs to be connected for testing
#define PROD
#define PRU0

#ifdef PRU0 /* sending PRU */
#ifdef PROD
#define READ_PIN 16 /* P9_24, pr1_PRU0_pru_r31_16, Ethernet input data */
#endif /* PROD */
#define WRITE_PIN 15 /* P8_11, Ethernet output data, pr1_PRU0_pru_r30_15 */
#define COLL_PIN 14 /* P8_12, Collision detected output, pr1_PRU0_pru_r30_14 */
#endif

#if defined(PRU1) && defined(TEST) /* receiving PRU for testing configuration */
#define READ_PIN 16 /* P9_26, Ethernet input data, pr1_PRU1_pru_r31_16, wire to P8_11 */
#endif

#ifdef PRU0
#define PRU_CTRL_BASE 0x00022000 // TRM 4.3.1.2
#else /* PRU0 */
#define PRU_CTRL_BASE 0x00024000
#endif /* PRU0 */

#define PRU_CTRL ((volatile uint32_t *)(PRU_CTRL_BASE + 0x00))// PRU control register, TRM 4.5.1.1
#define PRU_CYCLE ((volatile uint32_t *)(PRU_CTRL_BASE + 0x0c))// PRU cycle count register, TRM 4.5.1.4

volatile register unsigned int __R31, __R30;

#define ECAP 0x00030000 // ECAP0 offset, TRM 4.3.1.2
// Using APWM mode (TRM 15.3.2.1) to get timer (TRM 15.3.3.5.1)
#define ECAP_TSCTR ((volatile uint32_t *)(ECAP + 0x00)) // 32-bit counter register, TRM 15.3.4.1.1
#define ECAP_CTRPHS ((volatile uint32_t *)(ECAP + 0x04)) // Phase, TRM 15.3.4.1.2
#define ECAP_CAP1 ((volatile uint32_t *)(ECAP + 0x08)) // TRM 15.3.4.1.3, loaded from APRD
#define ECAP_APRD ((volatile uint32_t *)(ECAP + 0x10)) // Period shadow, TRM 15.3.4.1.5, aka CAP3
#define ECAP_ECCTL1 ((volatile uint32_t *)(ECAP + 0x28)) // Control 1, TRM 15.3.4.1.7
#define ECAP_ECCTL2 ((volatile uint32_t *)(ECAP + 0x2a)) // Control 2, TRM 15.3.4.1.8
#define ECAP_ECEINT ((volatile uint16_t *)(ECAP + 0x2c)) // Enable interrupt, TRM 15.3.4.1.9
#define ECAP_ECFLG ((volatile uint16_t *)(ECAP + 0x2e)) // Flags, TRM 15.3.4.1.10
#define ECAP_ECCLR ((volatile uint16_t *)(ECAP + 0x30)) // Clear flags, TRM 15.3.4.1.11
#define ECAP_ECFRC ((volatile uint16_t *)(ECAP + 0x32)) // Force interrupt, TRM 15.3.4.1.12
#define ECAP_REVID ((volatile uint32_t *)(ECAP + 0x5c)) // TRM 15.3.4.1.13

#define MEM_START 0x00000000

#define IEP_TMR 0x0002E000 // Start of PRU IEP registers TRM 4.3.1.2
#define IEP_TMR_GLB_CFG ((volatile uint32_t *)(IEP_TMR + 0x0)) // Global config, TRM 4.5.4.1
#define IEP_TMR_GLB_STS ((volatile uint32_t *)(IEP_TMR + 0x4)) // Global status, TRM 4.5.4.2
#define IEP_TMR_COMPEN ((volatile uint32_t *)(IEP_TMR + 0x8)) // Compensation, TRM 4.5.4.3
#define IEP_TMR_CNT ((volatile uint32_t *)(IEP_TMR + 0xc)) // Timer count, TRM 4.5.4.4
#define IEP_TMR_CMP_CFG ((volatile uint32_t *)(IEP_TMR + 0x40)) // Compare configure, TRM 4.5.4.5
#define IEP_TMR_CMP_STS ((volatile uint32_t *)(IEP_TMR + 0x44)) // Compare status, TRM 4.5.4.6
#define IEP_TMR_CMP0 ((volatile uint32_t *)(IEP_TMR + 0x48)) // Compare 0, TRM 4.5.4.7
#define IEP_TMR_CMP1 ((volatile uint32_t *)(IEP_TMR + 0x4c)) // Compare 1, TRM 4.5.4.8
#define IEP_TMR_CMP2 ((volatile uint32_t *)(IEP_TMR + 0x50)) // Compare 2, TRM 4.5.4.9

#define PRU_ICSS_CFG 0x00026000 // Start of PRU CFG registers TRM 4.3.1.2

#define SYSCFG ((volatile uint32_t *)(PRU_ICSS_CFG + 0x4)) // TRM 4.5.9.2

#define PRU_INTC 0x00020000 // Start of PRU INTC registers TRM 4.3.1.2
#define PRU_INTC_GER ((volatile uint32_t *)(PRU_INTC + 0x10)) // Global Interrupt Enable, TRM 4.5.3.3
#define PRU_INTC_SICR ((volatile uint32_t *)(PRU_INTC + 0x24)) // Interrupt, TRM 4.5.3.6
#define PRU_INTC_GPIR ((volatile uint32_t *)(PRU_INTC + 0x80)) // Interrupt, TRM 4.5.3.11


#endif /* PRU_DEFS_H_ */
