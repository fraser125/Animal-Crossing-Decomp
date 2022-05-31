lbl_8042A26C:
/* 8042A26C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A270  7C 08 02 A6 */	mflr r0
/* 8042A274  7C 65 1B 78 */	mr r5, r3
/* 8042A278  3C 60 80 68 */	lis r3, data_80683F78@ha /* 0x80683F78@ha */
/* 8042A27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A280  38 83 3F 78 */	addi r4, r3, data_80683F78@l /* 0x80683F78@l */
/* 8042A284  38 C5 01 FC */	addi r6, r5, 0x1fc
/* 8042A288  38 E5 02 1A */	addi r7, r5, 0x21a
/* 8042A28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A290  93 C1 00 08 */	stw r30, 8(r1)
/* 8042A294  3B C5 01 8C */	addi r30, r5, 0x18c
/* 8042A298  7F C3 F3 78 */	mr r3, r30
/* 8042A29C  A8 05 01 78 */	lha r0, 0x178(r5)
/* 8042A2A0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8042A2A4  7F E4 02 14 */	add r31, r4, r0
/* 8042A2A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8042A2AC  84 BF 00 04 */	lwzu r5, 4(r31)
/* 8042A2B0  4B F4 67 E5 */	bl cKF_SkeletonInfo_R_ct
/* 8042A2B4  80 9F 00 00 */	lwz r4, 0(r31)
/* 8042A2B8  7F C3 F3 78 */	mr r3, r30
/* 8042A2BC  38 A0 00 00 */	li r5, 0
/* 8042A2C0  4B F4 69 25 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8042A2C4  7F C3 F3 78 */	mr r3, r30
/* 8042A2C8  4B F4 6D 4D */	bl cKF_SkeletonInfo_R_play
/* 8042A2CC  3C 60 80 64 */	lis r3, data_80644024@ha /* 0x80644024@ha */
/* 8042A2D0  C0 03 40 24 */	lfs f0, data_80644024@l(r3)  /* 0x80644024@l */
/* 8042A2D4  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8042A2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A2DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A2E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042A2E4  7C 08 03 A6 */	mtlr r0
/* 8042A2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A2EC  4E 80 00 20 */	blr 
