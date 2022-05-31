lbl_805BEB84:
/* 805BEB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BEB88  7C 08 02 A6 */	mflr r0
/* 805BEB8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BEB90  38 A0 00 00 */	li r5, 0
/* 805BEB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BEB98  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BEB9C  3C 84 00 02 */	addis r4, r4, 2
/* 805BEBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BEBA4  7C 7F 1B 78 */	mr r31, r3
/* 805BEBA8  3C 60 80 6C */	lis r3, skl@ha /* 0x806C7144@ha */
/* 805BEBAC  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 805BEBB0  38 83 71 44 */	addi r4, r3, skl@l /* 0x806C7144@l */
/* 805BEBB4  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BEBB8  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805BEBBC  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805BEBC0  38 FF 02 46 */	addi r7, r31, 0x246
/* 805BEBC4  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805BEBC8  20 00 00 03 */	subfic r0, r0, 3
/* 805BEBCC  7C 00 00 34 */	cntlzw r0, r0
/* 805BEBD0  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805BEBD4  7C 84 00 2E */	lwzx r4, r4, r0
/* 805BEBD8  4B DB 1E BD */	bl cKF_SkeletonInfo_R_ct
/* 805BEBDC  7F E3 FB 78 */	mr r3, r31
/* 805BEBE0  38 80 00 01 */	li r4, 1
/* 805BEBE4  48 00 02 5D */	bl aTOU_set_bgOffset
/* 805BEBE8  7F E3 FB 78 */	mr r3, r31
/* 805BEBEC  4B FF FD 2D */	bl func_805BE918
/* 805BEBF0  7F E3 FB 78 */	mr r3, r31
/* 805BEBF4  38 80 00 00 */	li r4, 0
/* 805BEBF8  48 00 0A 09 */	bl aTOU_setup_action
/* 805BEBFC  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BEC00  4B DB 24 15 */	bl cKF_SkeletonInfo_R_play
/* 805BEC04  3C 60 80 65 */	lis r3, lit_496@ha /* 0x8064ABCC@ha */
/* 805BEC08  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805BEC0C  C0 23 AB CC */	lfs f1, lit_496@l(r3)  /* 0x8064ABCC@l */
/* 805BEC10  EC 00 08 28 */	fsubs f0, f0, f1
/* 805BEC14  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805BEC18  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BEC1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805BEC20  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805BEC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BEC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BEC2C  7C 08 03 A6 */	mtlr r0
/* 805BEC30  38 21 00 10 */	addi r1, r1, 0x10
/* 805BEC34  4E 80 00 20 */	blr 
