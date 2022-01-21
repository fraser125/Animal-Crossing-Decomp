.include "macros.inc"

.section .text

.org 0x80060594

.global __osTimerServicesInit
__osTimerServicesInit:
/* 80060594 0005D4F4  80 8D 82 98 */	lwz r4, __osTimerList-_SDA_BASE_(r13)
/* 80060598 0005D4F8  38 00 00 00 */	li r0, 0
/* 8006059C 0005D4FC  90 84 00 2C */	stw r4, 0x2c(r4)
/* 800605A0 0005D500  80 6D 82 98 */	lwz r3, __osTimerList-_SDA_BASE_(r13)
/* 800605A4 0005D504  90 83 00 28 */	stw r4, 0x28(r3)
/* 800605A8 0005D508  80 6D 82 98 */	lwz r3, __osTimerList-_SDA_BASE_(r13)
/* 800605AC 0005D50C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800605B0 0005D510  90 03 00 38 */	stw r0, 0x38(r3)
/* 800605B4 0005D514  80 6D 82 98 */	lwz r3, __osTimerList-_SDA_BASE_(r13)
/* 800605B8 0005D518  90 03 00 34 */	stw r0, 0x34(r3)
/* 800605BC 0005D51C  90 03 00 30 */	stw r0, 0x30(r3)
/* 800605C0 0005D520  80 6D 82 98 */	lwz r3, __osTimerList-_SDA_BASE_(r13)
/* 800605C4 0005D524  90 03 00 40 */	stw r0, 0x40(r3)
/* 800605C8 0005D528  80 6D 82 98 */	lwz r3, __osTimerList-_SDA_BASE_(r13)
/* 800605CC 0005D52C  90 03 00 44 */	stw r0, 0x44(r3)
/* 800605D0 0005D530  4E 80 00 20 */	blr 
