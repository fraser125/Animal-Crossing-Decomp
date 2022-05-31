lbl_804AC330:
/* 804AC330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AC334  7C 08 02 A6 */	mflr r0
/* 804AC338  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AC33C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AC340  7C 7F 1B 78 */	mr r31, r3
/* 804AC344  80 03 02 4C */	lwz r0, 0x24c(r3)
/* 804AC348  2C 00 00 01 */	cmpwi r0, 1
/* 804AC34C  40 82 00 18 */	bne lbl_804AC364
/* 804AC350  3C 60 80 64 */	lis r3, lit_459@ha /* 0x80645EB8@ha */
/* 804AC354  38 00 00 00 */	li r0, 0
/* 804AC358  90 1F 02 4C */	stw r0, 0x24c(r31)
/* 804AC35C  C0 03 5E B8 */	lfs f0, lit_459@l(r3)  /* 0x80645EB8@l */
/* 804AC360  D0 1F 01 88 */	stfs f0, 0x188(r31)
lbl_804AC364:
/* 804AC364  38 7F 01 7C */	addi r3, r31, 0x17c
/* 804AC368  4B EC 4C AD */	bl cKF_SkeletonInfo_R_play
/* 804AC36C  2C 03 00 01 */	cmpwi r3, 1
/* 804AC370  40 82 00 18 */	bne lbl_804AC388
/* 804AC374  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 804AC378  3C 60 80 64 */	lis r3, lit_433@ha /* 0x80645EB4@ha */
/* 804AC37C  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 804AC380  C0 03 5E B4 */	lfs f0, lit_433@l(r3)  /* 0x80645EB4@l */
/* 804AC384  D0 1F 01 88 */	stfs f0, 0x188(r31)
lbl_804AC388:
/* 804AC388  7F E3 FB 78 */	mr r3, r31
/* 804AC38C  4B FF FF 25 */	bl aTRD_set_door_SE
/* 804AC390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AC394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AC398  7C 08 03 A6 */	mtlr r0
/* 804AC39C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AC3A0  4E 80 00 20 */	blr 
