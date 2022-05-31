lbl_80385370:
/* 80385370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80385374  7C 08 02 A6 */	mflr r0
/* 80385378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038537C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80385380  3B E0 00 00 */	li r31, 0
lbl_80385384:
/* 80385384  7F E3 FB 78 */	mr r3, r31
/* 80385388  48 02 E2 8D */	bl mHS_get_pl_no_detail
/* 8038538C  2C 03 FF FF */	cmpwi r3, -1
/* 80385390  40 82 00 0C */	bne lbl_8038539C
/* 80385394  7F E3 FB 78 */	mr r3, r31
/* 80385398  48 00 00 25 */	bl mCkRh_InitGokiSaveData_1Room
lbl_8038539C:
/* 8038539C  3B FF 00 01 */	addi r31, r31, 1
/* 803853A0  2C 1F 00 04 */	cmpwi r31, 4
/* 803853A4  41 80 FF E0 */	blt lbl_80385384
/* 803853A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803853AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803853B0  7C 08 03 A6 */	mtlr r0
/* 803853B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803853B8  4E 80 00 20 */	blr 
