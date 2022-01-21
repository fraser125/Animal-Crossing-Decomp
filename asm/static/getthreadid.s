.include "macros.inc"

.section .text

.org 0x80060034

.global osGetThreadId
osGetThreadId:
/* 80060034 0005CF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060038 0005CF98  7C 08 02 A6 */	mflr r0
/* 8006003C 0005CF9C  28 03 00 00 */	cmplwi r3, 0
/* 80060040 0005CFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80060044 0005CFA4  40 82 00 08 */	bne lbl_8006004C
/* 80060048 0005CFA8  48 01 DC 95 */	bl OSGetCurrentThread
lbl_8006004C:
/* 8006004C 0005CFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80060050 0005CFB0  38 60 00 00 */	li r3, 0
/* 80060054 0005CFB4  7C 08 03 A6 */	mtlr r0
/* 80060058 0005CFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8006005C 0005CFBC  4E 80 00 20 */	blr 
