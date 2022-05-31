lbl_8062FD20:
/* 8062FD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FD24  7C 08 02 A6 */	mflr r0
/* 8062FD28  3C 80 80 E7 */	lis r4, cKF_bs_r_int_ike_jny_houi01@ha /* 0x80E74FA4@ha */
/* 8062FD2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FD30  38 84 4F A4 */	addi r4, r4, cKF_bs_r_int_ike_jny_houi01@l /* 0x80E74FA4@l */
/* 8062FD34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062FD38  93 C1 00 08 */	stw r30, 8(r1)
/* 8062FD3C  7C 7E 1B 78 */	mr r30, r3
/* 8062FD40  3C 60 80 E7 */	lis r3, cKF_ba_r_int_ike_jny_houi01@ha /* 0x80E74F60@ha */
/* 8062FD44  3B FE 01 34 */	addi r31, r30, 0x134
/* 8062FD48  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8062FD4C  38 A3 4F 60 */	addi r5, r3, cKF_ba_r_int_ike_jny_houi01@l /* 0x80E74F60@l */
/* 8062FD50  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8062FD54  7F E3 FB 78 */	mr r3, r31
/* 8062FD58  4B D4 0D 3D */	bl cKF_SkeletonInfo_R_ct
/* 8062FD5C  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_jny_houi01@ha /* 0x80E74F60@ha */
/* 8062FD60  7F E3 FB 78 */	mr r3, r31
/* 8062FD64  38 84 4F 60 */	addi r4, r4, cKF_ba_r_int_ike_jny_houi01@l /* 0x80E74F60@l */
/* 8062FD68  38 A0 00 00 */	li r5, 0
/* 8062FD6C  4B D4 0D 89 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8062FD70  7F E3 FB 78 */	mr r3, r31
/* 8062FD74  4B D4 12 A1 */	bl cKF_SkeletonInfo_R_play
/* 8062FD78  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062FD7C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062FD80  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062FD84  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 8062FD88  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 8062FD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062FD90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062FD94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062FD98  7C 08 03 A6 */	mtlr r0
/* 8062FD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062FDA0  4E 80 00 20 */	blr 
