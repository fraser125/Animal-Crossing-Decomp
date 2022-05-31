lbl_805B7A24:
/* 805B7A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7A28  7C 08 02 A6 */	mflr r0
/* 805B7A2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B7A30  38 A0 00 00 */	li r5, 0
/* 805B7A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7A38  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B7A3C  3C 84 00 02 */	addis r4, r4, 2
/* 805B7A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B7A44  7C 7F 1B 78 */	mr r31, r3
/* 805B7A48  3C 60 80 6C */	lis r3, skl@ha /* 0x806C6308@ha */
/* 805B7A4C  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 805B7A50  38 83 63 08 */	addi r4, r3, skl@l /* 0x806C6308@l */
/* 805B7A54  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B7A58  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805B7A5C  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805B7A60  38 FF 02 46 */	addi r7, r31, 0x246
/* 805B7A64  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805B7A68  20 00 00 03 */	subfic r0, r0, 3
/* 805B7A6C  7C 00 00 34 */	cntlzw r0, r0
/* 805B7A70  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805B7A74  7C 84 00 2E */	lwzx r4, r4, r0
/* 805B7A78  4B DB 90 1D */	bl cKF_SkeletonInfo_R_ct
/* 805B7A7C  7F E3 FB 78 */	mr r3, r31
/* 805B7A80  38 80 00 01 */	li r4, 1
/* 805B7A84  48 00 04 05 */	bl aPOFF_set_bgOffset
/* 805B7A88  3C 60 80 65 */	lis r3, data_8064AA2C@ha /* 0x8064AA2C@ha */
/* 805B7A8C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805B7A90  38 A3 AA 2C */	addi r5, r3, data_8064AA2C@l /* 0x8064AA2C@l */
/* 805B7A94  3C 80 80 65 */	lis r4, lit_438@ha /* 0x8064AA30@ha */
/* 805B7A98  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B7A9C  38 A4 AA 30 */	addi r5, r4, lit_438@l /* 0x8064AA30@l */
/* 805B7AA0  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064AA34@ha */
/* 805B7AA4  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B7AA8  EC 41 00 2A */	fadds f2, f1, f0
/* 805B7AAC  38 83 AA 34 */	addi r4, r3, lit_439@l /* 0x8064AA34@l */
/* 805B7AB0  3C 60 80 65 */	lis r3, lit_440@ha /* 0x8064AA38@ha */
/* 805B7AB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 805B7AB8  C0 23 AA 38 */	lfs f1, lit_440@l(r3)  /* 0x8064AA38@l */
/* 805B7ABC  38 00 00 00 */	li r0, 0
/* 805B7AC0  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 805B7AC4  7F E3 FB 78 */	mr r3, r31
/* 805B7AC8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 805B7ACC  EC 43 10 2A */	fadds f2, f3, f2
/* 805B7AD0  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 805B7AD4  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 805B7AD8  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 805B7ADC  90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 805B7AE0  48 00 04 AD */	bl aPOFF_setup_animation
/* 805B7AE4  7F E3 FB 78 */	mr r3, r31
/* 805B7AE8  38 80 00 00 */	li r4, 0
/* 805B7AEC  48 00 07 BD */	bl aPOFF_setup_action
/* 805B7AF0  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B7AF4  4B DB 95 21 */	bl cKF_SkeletonInfo_R_play
/* 805B7AF8  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805B7AFC  38 00 00 01 */	li r0, 1
/* 805B7B00  7F E3 FB 78 */	mr r3, r31
/* 805B7B04  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805B7B08  48 00 05 81 */	bl aPOFF_ctrl_light
/* 805B7B0C  2C 03 00 00 */	cmpwi r3, 0
/* 805B7B10  41 82 00 10 */	beq lbl_805B7B20
/* 805B7B14  38 00 3F FF */	li r0, 0x3fff
/* 805B7B18  90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 805B7B1C  48 00 00 0C */	b lbl_805B7B28
lbl_805B7B20:
/* 805B7B20  38 00 00 00 */	li r0, 0
/* 805B7B24  90 1F 02 B4 */	stw r0, 0x2b4(r31)
lbl_805B7B28:
/* 805B7B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B7B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B7B30  7C 08 03 A6 */	mtlr r0
/* 805B7B34  38 21 00 10 */	addi r1, r1, 0x10
/* 805B7B38  4E 80 00 20 */	blr 
