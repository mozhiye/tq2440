
.text
.global _start

/*
 * PB5 -> LED1
 * PB6 -> LED2
 * PB7 -> LED3
 * PB8 -> LED4
 */

#define PB_CON_ADDR    0x56000010
#define PB_DAT_ADDR    0x56000014
#define PB_CON_SET_DAT 0x15400
#define PB_DAT_SET_DAT 0x0

_start:
    LDR R1, =PB_CON_ADDR;
    LDR R0, =PB_CON_SET_DAT;
    STR R0, [R1];

    LDR R1, =PB_DAT_ADDR;
    LDR R0, =PB_DAT_SET_DAT;
    STR R0, [R1];

halt:
    b halt
