lbl_80592150:
/* 80592150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592154  7C 08 02 A6 */	mflr r0
/* 80592158  7C 64 1B 78 */	mr r4, r3
/* 8059215C  38 60 00 07 */	li r3, 7
/* 80592160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80592168  3B E0 00 00 */	li r31, 0
/* 8059216C  4B E0 80 F9 */	bl mDemo_Check
/* 80592170  2C 03 00 00 */	cmpwi r3, 0
/* 80592174  40 82 00 08 */	bne lbl_8059217C
/* 80592178  3B E0 00 01 */	li r31, 1
lbl_8059217C:
/* 8059217C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592180  7F E3 FB 78 */	mr r3, r31
/* 80592184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80592188  7C 08 03 A6 */	mtlr r0
/* 8059218C  38 21 00 10 */	addi r1, r1, 0x10
/* 80592190  4E 80 00 20 */	blr 
