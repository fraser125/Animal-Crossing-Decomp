lbl_80423D48:
/* 80423D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80423D4C  7C 08 02 A6 */	mflr r0
/* 80423D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80423D54  39 61 00 20 */	addi r11, r1, 0x20
/* 80423D58  4B C7 71 7D */	bl func_8009AED4
/* 80423D5C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80423D60  7C 7D 1B 78 */	mr r29, r3
/* 80423D64  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80423D68  38 00 00 20 */	li r0, 0x20
/* 80423D6C  3C A5 00 02 */	addis r5, r5, 2
/* 80423D70  3C 80 80 64 */	lis r4, data_80643E9C@ha /* 0x80643E9C@ha */
/* 80423D74  80 A5 61 10 */	lwz r5, 0x6110(r5)
/* 80423D78  38 64 3E 9C */	addi r3, r4, data_80643E9C@l /* 0x80643E9C@l */
/* 80423D7C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80423D80  3C 80 80 68 */	lis r4, skl@ha /* 0x80682AD0@ha */
/* 80423D84  90 1D 02 B4 */	stw r0, 0x2b4(r29)
/* 80423D88  20 05 00 03 */	subfic r0, r5, 3
/* 80423D8C  7C 00 00 34 */	cntlzw r0, r0
/* 80423D90  3C 60 80 68 */	lis r3, ani@ha /* 0x80682AD8@ha */
/* 80423D94  D0 1D 02 CC */	stfs f0, 0x2cc(r29)
/* 80423D98  3B E3 2A D8 */	addi r31, r3, ani@l /* 0x80682AD8@l */
/* 80423D9C  54 1E E8 FA */	rlwinm r30, r0, 0x1d, 3, 0x1d
/* 80423DA0  38 84 2A D0 */	addi r4, r4, skl@l /* 0x80682AD0@l */
/* 80423DA4  7C 84 F0 2E */	lwzx r4, r4, r30
/* 80423DA8  38 7D 01 78 */	addi r3, r29, 0x178
/* 80423DAC  7C BF F0 2E */	lwzx r5, r31, r30
/* 80423DB0  38 DD 01 EC */	addi r6, r29, 0x1ec
/* 80423DB4  38 FD 02 46 */	addi r7, r29, 0x246
/* 80423DB8  4B F4 CC DD */	bl cKF_SkeletonInfo_R_ct
/* 80423DBC  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80423DC0  38 7D 01 78 */	addi r3, r29, 0x178
/* 80423DC4  38 A0 00 00 */	li r5, 0
/* 80423DC8  4B F4 CE 1D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80423DCC  38 7D 01 78 */	addi r3, r29, 0x178
/* 80423DD0  4B F4 D2 45 */	bl cKF_SkeletonInfo_R_play
/* 80423DD4  7F A3 EB 78 */	mr r3, r29
/* 80423DD8  38 80 00 00 */	li r4, 0
/* 80423DDC  48 00 0A 3D */	bl aFLAG_setup_action
/* 80423DE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80423DE4  4B C7 71 3D */	bl func_8009AF20
/* 80423DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80423DEC  7C 08 03 A6 */	mtlr r0
/* 80423DF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80423DF4  4E 80 00 20 */	blr 
