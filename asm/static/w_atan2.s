.include "macros.inc"

.section .text

.org 0x800A1FD4

.global atan2
atan2:
/* 800A1FD4 0009EF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A1FD8 0009EF38  7C 08 02 A6 */	mflr r0
/* 800A1FDC 0009EF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A1FE0 0009EF40  4B FF E1 55 */	bl __ieee754_atan2
/* 800A1FE4 0009EF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A1FE8 0009EF48  7C 08 03 A6 */	mtlr r0
/* 800A1FEC 0009EF4C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A1FF0 0009EF50  4E 80 00 20 */	blr 
