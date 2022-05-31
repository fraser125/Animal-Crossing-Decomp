lbl_803E7750:
/* 803E7750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7754  7C 08 02 A6 */	mflr r0
/* 803E7758  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E775C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E7760  7C 7F 1B 78 */	mr r31, r3
/* 803E7764  4B FF FE A5 */	bl mRmTp_GetNowSceneFloorBitInfoP
/* 803E7768  28 03 00 00 */	cmplwi r3, 0
/* 803E776C  41 82 00 10 */	beq lbl_803E777C
/* 803E7770  88 03 00 00 */	lbz r0, 0(r3)
/* 803E7774  53 E0 36 72 */	rlwimi r0, r31, 6, 0x19, 0x19
/* 803E7778  98 03 00 00 */	stb r0, 0(r3)
lbl_803E777C:
/* 803E777C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E7784  7C 08 03 A6 */	mtlr r0
/* 803E7788  38 21 00 10 */	addi r1, r1, 0x10
/* 803E778C  4E 80 00 20 */	blr 
