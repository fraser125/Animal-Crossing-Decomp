lbl_805AD218:
/* 805AD218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AD21C  7C 08 02 A6 */	mflr r0
/* 805AD220  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AD224  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AD228  7C 7F 1B 78 */	mr r31, r3
/* 805AD22C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AD230  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AD234  7C 9E 23 78 */	mr r30, r4
/* 805AD238  4B DC 3D DD */	bl cKF_SkeletonInfo_R_play
/* 805AD23C  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805AD240  7F E3 FB 78 */	mr r3, r31
/* 805AD244  7F C4 F3 78 */	mr r4, r30
/* 805AD248  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805AD24C  FC 00 00 1E */	fctiwz f0, f0
/* 805AD250  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AD254  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AD258  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805AD25C  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805AD260  7D 89 03 A6 */	mtctr r12
/* 805AD264  4E 80 04 21 */	bctrl 
/* 805AD268  7F E3 FB 78 */	mr r3, r31
/* 805AD26C  4B FF FA C5 */	bl aDPT_ctrl_light
/* 805AD270  3C 80 80 65 */	lis r4, lit_642@ha /* 0x8064A6C8@ha */
/* 805AD274  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805AD278  C0 44 A6 C8 */	lfs f2, lit_642@l(r4)  /* 0x8064A6C8@l */
/* 805AD27C  4B E0 D9 ED */	bl chase_f
/* 805AD280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD284  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AD288  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AD28C  7C 08 03 A6 */	mtlr r0
/* 805AD290  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD294  4E 80 00 20 */	blr 
