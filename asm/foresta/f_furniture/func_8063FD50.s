lbl_8063FD50:
/* 8063FD50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063FD54  7C 08 02 A6 */	mflr r0
/* 8063FD58  3C 80 80 E9 */	lis r4, cKF_bs_r_int_ike_prores_punch01@ha /* 0x80E92E54@ha */
/* 8063FD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063FD60  38 84 2E 54 */	addi r4, r4, cKF_bs_r_int_ike_prores_punch01@l /* 0x80E92E54@l */
/* 8063FD64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063FD68  93 C1 00 08 */	stw r30, 8(r1)
/* 8063FD6C  7C 7E 1B 78 */	mr r30, r3
/* 8063FD70  3C 60 80 E9 */	lis r3, cKF_ba_r_int_ike_prores_punch01@ha /* 0x80E92E28@ha */
/* 8063FD74  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063FD78  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8063FD7C  38 A3 2E 28 */	addi r5, r3, cKF_ba_r_int_ike_prores_punch01@l /* 0x80E92E28@l */
/* 8063FD80  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063FD84  7F E3 FB 78 */	mr r3, r31
/* 8063FD88  4B D3 0D 0D */	bl cKF_SkeletonInfo_R_ct
/* 8063FD8C  3C 80 80 E9 */	lis r4, cKF_ba_r_int_ike_prores_punch01@ha /* 0x80E92E28@ha */
/* 8063FD90  7F E3 FB 78 */	mr r3, r31
/* 8063FD94  38 84 2E 28 */	addi r4, r4, cKF_ba_r_int_ike_prores_punch01@l /* 0x80E92E28@l */
/* 8063FD98  38 A0 00 00 */	li r5, 0
/* 8063FD9C  4B D3 0D 59 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063FDA0  7F E3 FB 78 */	mr r3, r31
/* 8063FDA4  4B D3 12 71 */	bl cKF_SkeletonInfo_R_play
/* 8063FDA8  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063FDAC  38 00 00 00 */	li r0, 0
/* 8063FDB0  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063FDB4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063FDB8  98 1E 01 2D */	stb r0, 0x12d(r30)
/* 8063FDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063FDC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063FDC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063FDC8  7C 08 03 A6 */	mtlr r0
/* 8063FDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063FDD0  4E 80 00 20 */	blr 
