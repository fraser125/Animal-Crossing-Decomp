lbl_8062FB50:
/* 8062FB50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FB54  7C 08 02 A6 */	mflr r0
/* 8062FB58  7C 67 1B 78 */	mr r7, r3
/* 8062FB5C  3C 80 80 E7 */	lis r4, cKF_bs_r_int_ike_jny_hariko01@ha /* 0x80E7455C@ha */
/* 8062FB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FB64  3C 60 80 E7 */	lis r3, cKF_ba_r_int_ike_jny_hariko01@ha /* 0x80E74530@ha */
/* 8062FB68  38 84 45 5C */	addi r4, r4, cKF_bs_r_int_ike_jny_hariko01@l /* 0x80E7455C@l */
/* 8062FB6C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8062FB70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062FB74  3B E7 01 34 */	addi r31, r7, 0x134
/* 8062FB78  38 A3 45 30 */	addi r5, r3, cKF_ba_r_int_ike_jny_hariko01@l /* 0x80E74530@l */
/* 8062FB7C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8062FB80  7F E3 FB 78 */	mr r3, r31
/* 8062FB84  4B D4 0F 11 */	bl cKF_SkeletonInfo_R_ct
/* 8062FB88  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_jny_hariko01@ha /* 0x80E74530@ha */
/* 8062FB8C  7F E3 FB 78 */	mr r3, r31
/* 8062FB90  38 84 45 30 */	addi r4, r4, cKF_ba_r_int_ike_jny_hariko01@l /* 0x80E74530@l */
/* 8062FB94  38 A0 00 00 */	li r5, 0
/* 8062FB98  4B D4 0F 5D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8062FB9C  7F E3 FB 78 */	mr r3, r31
/* 8062FBA0  4B D4 14 75 */	bl cKF_SkeletonInfo_R_play
/* 8062FBA4  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062FBA8  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062FBAC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062FBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062FBB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062FBB8  7C 08 03 A6 */	mtlr r0
/* 8062FBBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062FBC0  4E 80 00 20 */	blr 
