lbl_805B26D0:
/* 805B26D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B26D4  7C 08 02 A6 */	mflr r0
/* 805B26D8  3C A0 80 65 */	lis r5, data_8064A88C@ha /* 0x8064A88C@ha */
/* 805B26DC  7C 67 1B 78 */	mr r7, r3
/* 805B26E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B26E4  3C 80 80 65 */	lis r4, lit_430@ha /* 0x8064A890@ha */
/* 805B26E8  C0 05 A8 8C */	lfs f0, data_8064A88C@l(r5)  /* 0x8064A88C@l */
/* 805B26EC  38 A4 A8 90 */	addi r5, r4, lit_430@l /* 0x8064A890@l */
/* 805B26F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B26F4  7C FF 3B 78 */	mr r31, r7
/* 805B26F8  3C 60 80 B8 */	lis r3, cKF_bs_r_obj_e_koinobori@ha /* 0x80B86D94@ha */
/* 805B26FC  D0 07 01 38 */	stfs f0, 0x138(r7)
/* 805B2700  38 83 6D 94 */	addi r4, r3, cKF_bs_r_obj_e_koinobori@l /* 0x80B86D94@l */
/* 805B2704  C0 05 00 00 */	lfs f0, 0(r5)
/* 805B2708  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B270C  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805B2710  38 A0 00 00 */	li r5, 0
/* 805B2714  D0 07 01 40 */	stfs f0, 0x140(r7)
/* 805B2718  38 FF 02 46 */	addi r7, r31, 0x246
/* 805B271C  4B DB E3 79 */	bl cKF_SkeletonInfo_R_ct
/* 805B2720  7F E3 FB 78 */	mr r3, r31
/* 805B2724  38 80 00 00 */	li r4, 0
/* 805B2728  48 00 00 49 */	bl aKOI_setup_action
/* 805B272C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B2730  4B DB E8 E5 */	bl cKF_SkeletonInfo_R_play
/* 805B2734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B273C  7C 08 03 A6 */	mtlr r0
/* 805B2740  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2744  4E 80 00 20 */	blr 
