lbl_803BF338:
/* 803BF338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF33C  7C 08 02 A6 */	mflr r0
/* 803BF340  28 03 00 00 */	cmplwi r3, 0
/* 803BF344  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF348  41 82 00 24 */	beq lbl_803BF36C
/* 803BF34C  88 03 00 02 */	lbz r0, 2(r3)
/* 803BF350  28 00 00 04 */	cmplwi r0, 4
/* 803BF354  40 82 00 18 */	bne lbl_803BF36C
/* 803BF358  A8 03 09 78 */	lha r0, 0x978(r3)
/* 803BF35C  2C 00 00 00 */	cmpwi r0, 0
/* 803BF360  41 82 00 0C */	beq lbl_803BF36C
/* 803BF364  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803BF368  4B FF FF 45 */	bl mMld_MakeMelody
lbl_803BF36C:
/* 803BF36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF370  7C 08 03 A6 */	mtlr r0
/* 803BF374  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF378  4E 80 00 20 */	blr 
