.include "macros.inc"

.section .text

.org 0x800A1FB4

.global acos
acos:
/* 800A1FB4 0009EF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A1FB8 0009EF18  7C 08 02 A6 */	mflr r0
/* 800A1FBC 0009EF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A1FC0 0009EF20  4B FF DE 65 */	bl __ieee754_acos
/* 800A1FC4 0009EF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A1FC8 0009EF28  7C 08 03 A6 */	mtlr r0
/* 800A1FCC 0009EF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A1FD0 0009EF30  4E 80 00 20 */	blr 
