.include "macros.inc"

.section .text

.org 0x80060060

.global osGetTime
osGetTime:
/* 80060060 0005CFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060064 0005CFC4  7C 08 02 A6 */	mflr r0
/* 80060068 0005CFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006006C 0005CFCC  48 01 F6 8D */	bl OSGetTime
/* 80060070 0005CFD0  80 AD 8A CC */	lwz r5, lbl_8021864C-_SDA_BASE_(r13)
/* 80060074 0005CFD4  80 0D 8A C8 */	lwz r0, __osTimeOffset-_SDA_BASE_(r13)
/* 80060078 0005CFD8  7C 85 20 14 */	addc r4, r5, r4
/* 8006007C 0005CFDC  7C 60 19 14 */	adde r3, r0, r3
/* 80060080 0005CFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80060084 0005CFE4  7C 08 03 A6 */	mtlr r0
/* 80060088 0005CFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8006008C 0005CFEC  4E 80 00 20 */	blr 
