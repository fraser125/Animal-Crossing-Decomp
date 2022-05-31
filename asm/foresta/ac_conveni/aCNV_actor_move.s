lbl_805AB43C:
/* 805AB43C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AB440  7C 08 02 A6 */	mflr r0
/* 805AB444  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AB448  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AB44C  7C 7F 1B 78 */	mr r31, r3
/* 805AB450  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AB454  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AB458  7C 9E 23 78 */	mr r30, r4
/* 805AB45C  4B DC 5B B9 */	bl cKF_SkeletonInfo_R_play
/* 805AB460  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805AB464  7F E3 FB 78 */	mr r3, r31
/* 805AB468  7F C4 F3 78 */	mr r4, r30
/* 805AB46C  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805AB470  FC 00 00 1E */	fctiwz f0, f0
/* 805AB474  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AB478  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AB47C  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805AB480  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805AB484  7D 89 03 A6 */	mtctr r12
/* 805AB488  4E 80 04 21 */	bctrl 
/* 805AB48C  7F E3 FB 78 */	mr r3, r31
/* 805AB490  4B FF FA C5 */	bl aCNV_ctrl_light
/* 805AB494  3C 80 80 65 */	lis r4, lit_642@ha /* 0x8064A650@ha */
/* 805AB498  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805AB49C  C0 44 A6 50 */	lfs f2, lit_642@l(r4)  /* 0x8064A650@l */
/* 805AB4A0  4B E0 F7 C9 */	bl chase_f
/* 805AB4A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AB4A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AB4AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AB4B0  7C 08 03 A6 */	mtlr r0
/* 805AB4B4  38 21 00 20 */	addi r1, r1, 0x20
/* 805AB4B8  4E 80 00 20 */	blr 
