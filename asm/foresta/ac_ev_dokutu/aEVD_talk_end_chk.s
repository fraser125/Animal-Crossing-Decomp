lbl_8051E0FC:
/* 8051E0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E100  7C 08 02 A6 */	mflr r0
/* 8051E104  7C 64 1B 78 */	mr r4, r3
/* 8051E108  38 60 00 07 */	li r3, 7
/* 8051E10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051E114  3B E0 00 00 */	li r31, 0
/* 8051E118  4B E7 C1 4D */	bl mDemo_Check
/* 8051E11C  2C 03 00 00 */	cmpwi r3, 0
/* 8051E120  40 82 00 08 */	bne lbl_8051E128
/* 8051E124  3B E0 00 01 */	li r31, 1
lbl_8051E128:
/* 8051E128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E12C  7F E3 FB 78 */	mr r3, r31
/* 8051E130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051E134  7C 08 03 A6 */	mtlr r0
/* 8051E138  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E13C  4E 80 00 20 */	blr 