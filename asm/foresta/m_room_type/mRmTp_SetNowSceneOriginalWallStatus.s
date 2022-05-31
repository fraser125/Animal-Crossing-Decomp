lbl_803E7710:
/* 803E7710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7714  7C 08 02 A6 */	mflr r0
/* 803E7718  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E771C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E7720  7C 7F 1B 78 */	mr r31, r3
/* 803E7724  4B FF FE E5 */	bl mRmTp_GetNowSceneFloorBitInfoP
/* 803E7728  28 03 00 00 */	cmplwi r3, 0
/* 803E772C  41 82 00 10 */	beq lbl_803E773C
/* 803E7730  88 03 00 00 */	lbz r0, 0(r3)
/* 803E7734  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 803E7738  98 03 00 00 */	stb r0, 0(r3)
lbl_803E773C:
/* 803E773C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E7744  7C 08 03 A6 */	mtlr r0
/* 803E7748  38 21 00 10 */	addi r1, r1, 0x10
/* 803E774C  4E 80 00 20 */	blr 
