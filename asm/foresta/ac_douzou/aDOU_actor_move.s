lbl_805AE1AC:
/* 805AE1AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AE1B0  7C 08 02 A6 */	mflr r0
/* 805AE1B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AE1B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AE1BC  7C 7F 1B 78 */	mr r31, r3
/* 805AE1C0  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AE1C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AE1C8  7C 9E 23 78 */	mr r30, r4
/* 805AE1CC  4B DC 2E 49 */	bl cKF_SkeletonInfo_R_play
/* 805AE1D0  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805AE1D4  7F E3 FB 78 */	mr r3, r31
/* 805AE1D8  7F C4 F3 78 */	mr r4, r30
/* 805AE1DC  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805AE1E0  FC 00 00 1E */	fctiwz f0, f0
/* 805AE1E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AE1E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AE1EC  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805AE1F0  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805AE1F4  7D 89 03 A6 */	mtctr r12
/* 805AE1F8  4E 80 04 21 */	bctrl 
/* 805AE1FC  7F E3 FB 78 */	mr r3, r31
/* 805AE200  7F C4 F3 78 */	mr r4, r30
/* 805AE204  4B FF F9 81 */	bl aDOU_setEffect
/* 805AE208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AE20C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AE210  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AE214  7C 08 03 A6 */	mtlr r0
/* 805AE218  38 21 00 20 */	addi r1, r1, 0x20
/* 805AE21C  4E 80 00 20 */	blr 
