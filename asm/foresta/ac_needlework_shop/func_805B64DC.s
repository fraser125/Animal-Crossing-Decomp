lbl_805B64DC:
/* 805B64DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B64E0  7C 08 02 A6 */	mflr r0
/* 805B64E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B64E8  38 A0 00 00 */	li r5, 0
/* 805B64EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B64F0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B64F4  3C 84 00 02 */	addis r4, r4, 2
/* 805B64F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B64FC  7C 7F 1B 78 */	mr r31, r3
/* 805B6500  3C 60 80 6C */	lis r3, skl@ha /* 0x806C6078@ha */
/* 805B6504  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 805B6508  38 83 60 78 */	addi r4, r3, skl@l /* 0x806C6078@l */
/* 805B650C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B6510  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805B6514  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805B6518  38 FF 02 46 */	addi r7, r31, 0x246
/* 805B651C  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805B6520  20 00 00 03 */	subfic r0, r0, 3
/* 805B6524  7C 00 00 34 */	cntlzw r0, r0
/* 805B6528  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805B652C  7C 84 00 2E */	lwzx r4, r4, r0
/* 805B6530  4B DB A5 65 */	bl cKF_SkeletonInfo_R_ct
/* 805B6534  7F E3 FB 78 */	mr r3, r31
/* 805B6538  38 80 00 01 */	li r4, 1
/* 805B653C  48 00 04 29 */	bl aNW_set_bgOffset
/* 805B6540  3C 60 80 65 */	lis r3, data_8064A9B4@ha /* 0x8064A9B4@ha */
/* 805B6544  3C 80 80 65 */	lis r4, lit_438@ha /* 0x8064A9B8@ha */
/* 805B6548  38 A3 A9 B4 */	addi r5, r3, data_8064A9B4@l /* 0x8064A9B4@l */
/* 805B654C  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064A9BC@ha */
/* 805B6550  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B6554  39 04 A9 B8 */	addi r8, r4, lit_438@l /* 0x8064A9B8@l */
/* 805B6558  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805B655C  38 E3 A9 BC */	addi r7, r3, lit_439@l /* 0x8064A9BC@l */
/* 805B6560  3C 80 80 65 */	lis r4, lit_440@ha /* 0x8064A9C0@ha */
/* 805B6564  3C 60 80 65 */	lis r3, lit_441@ha /* 0x8064A9C4@ha */
/* 805B6568  EC 01 00 2A */	fadds f0, f1, f0
/* 805B656C  38 C4 A9 C0 */	addi r6, r4, lit_440@l /* 0x8064A9C0@l */
/* 805B6570  38 A3 A9 C4 */	addi r5, r3, lit_441@l /* 0x8064A9C4@l */
/* 805B6574  3C 60 80 65 */	lis r3, lit_442@ha /* 0x8064A9C8@ha */
/* 805B6578  38 83 A9 C8 */	addi r4, r3, lit_442@l /* 0x8064A9C8@l */
/* 805B657C  C0 28 00 00 */	lfs f1, 0(r8)
/* 805B6580  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805B6584  38 00 00 00 */	li r0, 0
/* 805B6588  C0 67 00 00 */	lfs f3, 0(r7)
/* 805B658C  7F E3 FB 78 */	mr r3, r31
/* 805B6590  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805B6594  C0 46 00 00 */	lfs f2, 0(r6)
/* 805B6598  EC 81 00 2A */	fadds f4, f1, f0
/* 805B659C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805B65A0  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B65A4  D0 9F 00 30 */	stfs f4, 0x30(r31)
/* 805B65A8  D0 7F 01 38 */	stfs f3, 0x138(r31)
/* 805B65AC  D0 5F 01 40 */	stfs f2, 0x140(r31)
/* 805B65B0  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 805B65B4  90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 805B65B8  48 00 04 B1 */	bl aNW_setup_animation
/* 805B65BC  7F E3 FB 78 */	mr r3, r31
/* 805B65C0  38 80 00 00 */	li r4, 0
/* 805B65C4  48 00 08 A1 */	bl aNW_setup_action
/* 805B65C8  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B65CC  4B DB AA 49 */	bl cKF_SkeletonInfo_R_play
/* 805B65D0  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805B65D4  38 00 00 01 */	li r0, 1
/* 805B65D8  7F E3 FB 78 */	mr r3, r31
/* 805B65DC  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805B65E0  48 00 05 FD */	bl aNW_ctrl_light
/* 805B65E4  2C 03 00 00 */	cmpwi r3, 0
/* 805B65E8  41 82 00 10 */	beq lbl_805B65F8
/* 805B65EC  3C 60 80 65 */	lis r3, lit_443@ha /* 0x8064A9CC@ha */
/* 805B65F0  C0 03 A9 CC */	lfs f0, lit_443@l(r3)  /* 0x8064A9CC@l */
/* 805B65F4  48 00 00 0C */	b lbl_805B6600
lbl_805B65F8:
/* 805B65F8  3C 60 80 65 */	lis r3, lit_442@ha /* 0x8064A9C8@ha */
/* 805B65FC  C0 03 A9 C8 */	lfs f0, lit_442@l(r3)  /* 0x8064A9C8@l */
lbl_805B6600:
/* 805B6600  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805B6604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B660C  7C 08 03 A6 */	mtlr r0
/* 805B6610  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6614  4E 80 00 20 */	blr 
