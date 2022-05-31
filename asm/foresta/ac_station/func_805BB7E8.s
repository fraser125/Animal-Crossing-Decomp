lbl_805BB7E8:
/* 805BB7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB7EC  7C 08 02 A6 */	mflr r0
/* 805BB7F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BB7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB7F8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BB7FC  3C 84 00 02 */	addis r4, r4, 2
/* 805BB800  38 00 00 05 */	li r0, 5
/* 805BB804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BB808  7C 7F 1B 78 */	mr r31, r3
/* 805BB80C  3C 60 80 6C */	lis r3, skl@ha /* 0x806C696C@ha */
/* 805BB810  88 C4 0F 18 */	lbz r6, 0xf18(r4)
/* 805BB814  38 FF 02 46 */	addi r7, r31, 0x246
/* 805BB818  80 A4 61 10 */	lwz r5, 0x6110(r4)
/* 805BB81C  38 83 69 6C */	addi r4, r3, skl@l /* 0x806C696C@l */
/* 805BB820  7C 06 03 D6 */	divw r0, r6, r0
/* 805BB824  39 06 00 2A */	addi r8, r6, 0x2a
/* 805BB828  90 BF 02 D8 */	stw r5, 0x2d8(r31)
/* 805BB82C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BB830  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805BB834  80 BF 02 D8 */	lwz r5, 0x2d8(r31)
/* 805BB838  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 805BB83C  20 05 00 03 */	subfic r0, r5, 3
/* 805BB840  7C 00 00 34 */	cntlzw r0, r0
/* 805BB844  38 A0 00 00 */	li r5, 0
/* 805BB848  81 3F 02 B8 */	lwz r9, 0x2b8(r31)
/* 805BB84C  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805BB850  39 29 00 0D */	addi r9, r9, 0xd
/* 805BB854  91 3F 02 A8 */	stw r9, 0x2a8(r31)
/* 805BB858  91 1F 02 AC */	stw r8, 0x2ac(r31)
/* 805BB85C  81 1F 02 B8 */	lwz r8, 0x2b8(r31)
/* 805BB860  55 08 18 38 */	slwi r8, r8, 3
/* 805BB864  7C 84 42 14 */	add r4, r4, r8
/* 805BB868  7C 84 00 2E */	lwzx r4, r4, r0
/* 805BB86C  4B DB 52 29 */	bl cKF_SkeletonInfo_R_ct
/* 805BB870  7F E3 FB 78 */	mr r3, r31
/* 805BB874  38 80 00 00 */	li r4, 0
/* 805BB878  48 00 00 AD */	bl aSTA_setup_action
/* 805BB87C  3C 60 80 65 */	lis r3, data_8064AB2C@ha /* 0x8064AB2C@ha */
/* 805BB880  3C 80 80 65 */	lis r4, lit_432@ha /* 0x8064AB30@ha */
/* 805BB884  38 C3 AB 2C */	addi r6, r3, data_8064AB2C@l /* 0x8064AB2C@l */
/* 805BB888  3C 60 80 65 */	lis r3, lit_433@ha /* 0x8064AB34@ha */
/* 805BB88C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805BB890  38 A4 AB 30 */	addi r5, r4, lit_432@l /* 0x8064AB30@l */
/* 805BB894  C0 06 00 00 */	lfs f0, 0(r6)
/* 805BB898  38 83 AB 34 */	addi r4, r3, lit_433@l /* 0x8064AB34@l */
/* 805BB89C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805BB8A0  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BB8A4  EC 42 00 2A */	fadds f2, f2, f0
/* 805BB8A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 805BB8AC  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 805BB8B0  D0 3F 01 34 */	stfs f1, 0x134(r31)
/* 805BB8B4  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 805BB8B8  4B DB 57 5D */	bl cKF_SkeletonInfo_R_play
/* 805BB8BC  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805BB8C0  48 00 03 B5 */	bl func_805BBC74
/* 805BB8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB8C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BB8CC  7C 08 03 A6 */	mtlr r0
/* 805BB8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB8D4  4E 80 00 20 */	blr 
