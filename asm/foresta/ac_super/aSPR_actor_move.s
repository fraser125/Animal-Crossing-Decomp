lbl_805BD978:
/* 805BD978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BD97C  7C 08 02 A6 */	mflr r0
/* 805BD980  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BD984  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BD988  7C 7F 1B 78 */	mr r31, r3
/* 805BD98C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BD990  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BD994  7C 9E 23 78 */	mr r30, r4
/* 805BD998  4B DB 36 7D */	bl cKF_SkeletonInfo_R_play
/* 805BD99C  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805BD9A0  7F E3 FB 78 */	mr r3, r31
/* 805BD9A4  7F C4 F3 78 */	mr r4, r30
/* 805BD9A8  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805BD9AC  FC 00 00 1E */	fctiwz f0, f0
/* 805BD9B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BD9B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BD9B8  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805BD9BC  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805BD9C0  7D 89 03 A6 */	mtctr r12
/* 805BD9C4  4E 80 04 21 */	bctrl 
/* 805BD9C8  7F E3 FB 78 */	mr r3, r31
/* 805BD9CC  4B FF FA C5 */	bl aSPR_ctrl_light
/* 805BD9D0  3C 80 80 65 */	lis r4, lit_642@ha /* 0x8064AB80@ha */
/* 805BD9D4  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805BD9D8  C0 44 AB 80 */	lfs f2, lit_642@l(r4)  /* 0x8064AB80@l */
/* 805BD9DC  4B DF D2 8D */	bl chase_f
/* 805BD9E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BD9E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BD9E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BD9EC  7C 08 03 A6 */	mtlr r0
/* 805BD9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805BD9F4  4E 80 00 20 */	blr 
