.include "macros.inc"

.section .text

.org 0x8005D15C

.global coss
coss:
/* 8005D15C 0005A0BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005D160 0005A0C0  7C 08 02 A6 */	mflr r0
/* 8005D164 0005A0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005D168 0005A0C8  38 03 40 00 */	addi r0, r3, 0x4000
/* 8005D16C 0005A0CC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8005D170 0005A0D0  48 00 16 F1 */	bl sins
/* 8005D174 0005A0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005D178 0005A0D8  7C 08 03 A6 */	mtlr r0
/* 8005D17C 0005A0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8005D180 0005A0E0  4E 80 00 20 */	blr 
