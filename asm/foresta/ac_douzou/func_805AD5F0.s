lbl_805AD5F0:
/* 805AD5F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AD5F4  7C 08 02 A6 */	mflr r0
/* 805AD5F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AD5FC  38 A0 00 00 */	li r5, 0
/* 805AD600  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AD604  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805AD608  7C 7F 1B 78 */	mr r31, r3
/* 805AD60C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805AD610  3C 80 80 6C */	lis r4, data_806C4CF0@ha /* 0x806C4CF0@ha */
/* 805AD614  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805AD618  3C 63 00 02 */	addis r3, r3, 2
/* 805AD61C  3B C4 4C F0 */	addi r30, r4, data_806C4CF0@l /* 0x806C4CF0@l */
/* 805AD620  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805AD624  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805AD628  38 9E 01 60 */	addi r4, r30, 0x160
/* 805AD62C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AD630  38 FF 02 46 */	addi r7, r31, 0x246
/* 805AD634  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805AD638  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805AD63C  20 00 00 03 */	subfic r0, r0, 3
/* 805AD640  7C 00 00 34 */	cntlzw r0, r0
/* 805AD644  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805AD648  7C 84 00 2E */	lwzx r4, r4, r0
/* 805AD64C  4B DC 34 49 */	bl cKF_SkeletonInfo_R_ct
/* 805AD650  7F E3 FB 78 */	mr r3, r31
/* 805AD654  38 80 00 01 */	li r4, 1
/* 805AD658  48 00 06 C9 */	bl aDOU_set_bgOffset
/* 805AD65C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AD660  3C 60 80 65 */	lis r3, data_8064A6D4@ha /* 0x8064A6D4@ha */
/* 805AD664  C0 5E 01 34 */	lfs f2, 0x134(r30)
/* 805AD668  38 83 A6 D4 */	addi r4, r3, data_8064A6D4@l /* 0x8064A6D4@l */
/* 805AD66C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805AD670  38 61 00 08 */	addi r3, r1, 8
/* 805AD674  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 805AD678  EC 63 10 2A */	fadds f3, f3, f2
/* 805AD67C  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805AD680  EC 01 00 2A */	fadds f0, f1, f0
/* 805AD684  C0 24 00 00 */	lfs f1, 0(r4)
/* 805AD688  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805AD68C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805AD690  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805AD694  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AD698  80 81 00 18 */	lwz r4, 0x18(r1)
/* 805AD69C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AD6A0  90 A1 00 08 */	stw r5, 8(r1)
/* 805AD6A4  90 81 00 0C */	stw r4, 0xc(r1)
/* 805AD6A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AD6AC  4B DE 22 ED */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805AD6B0  3C 60 80 65 */	lis r3, lit_454@ha /* 0x8064A6D8@ha */
/* 805AD6B4  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 805AD6B8  38 83 A6 D8 */	addi r4, r3, lit_454@l /* 0x8064A6D8@l */
/* 805AD6BC  7F E3 FB 78 */	mr r3, r31
/* 805AD6C0  C0 04 00 00 */	lfs f0, 0(r4)
/* 805AD6C4  38 80 00 00 */	li r4, 0
/* 805AD6C8  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 805AD6CC  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 805AD6D0  48 00 0A 39 */	bl aDOU_setup_action
/* 805AD6D4  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AD6D8  4B DC 39 3D */	bl cKF_SkeletonInfo_R_play
/* 805AD6DC  7F E3 FB 78 */	mr r3, r31
/* 805AD6E0  48 00 02 69 */	bl aDOU_keep_item
/* 805AD6E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AD6E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805AD6EC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805AD6F0  7C 08 03 A6 */	mtlr r0
/* 805AD6F4  38 21 00 30 */	addi r1, r1, 0x30
/* 805AD6F8  4E 80 00 20 */	blr 
