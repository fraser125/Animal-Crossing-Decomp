lbl_803E0044:
/* 803E0044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E0048  7C 08 02 A6 */	mflr r0
/* 803E004C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E0054  3B E0 00 00 */	li r31, 0
/* 803E0058  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 803E005C  28 00 FF FF */	cmplwi r0, 0xffff
/* 803E0060  40 82 00 14 */	bne lbl_803E0074
/* 803E0064  4B FF FE 7D */	bl mPr_NullCheckPlayerName
/* 803E0068  2C 03 00 01 */	cmpwi r3, 1
/* 803E006C  40 82 00 08 */	bne lbl_803E0074
/* 803E0070  3B E0 00 01 */	li r31, 1
lbl_803E0074:
/* 803E0074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E0078  7F E3 FB 78 */	mr r3, r31
/* 803E007C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E0080  7C 08 03 A6 */	mtlr r0
/* 803E0084  38 21 00 10 */	addi r1, r1, 0x10
/* 803E0088  4E 80 00 20 */	blr 
