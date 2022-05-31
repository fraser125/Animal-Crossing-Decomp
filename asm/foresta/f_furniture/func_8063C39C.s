lbl_8063C39C:
/* 8063C39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063C3A0  7C 08 02 A6 */	mflr r0
/* 8063C3A4  3C 80 81 0E */	lis r4, cKF_bs_r_int_tak_ice@ha /* 0x810E3B50@ha */
/* 8063C3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063C3AC  38 84 3B 50 */	addi r4, r4, cKF_bs_r_int_tak_ice@l /* 0x810E3B50@l */
/* 8063C3B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063C3B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8063C3B8  7C 7E 1B 78 */	mr r30, r3
/* 8063C3BC  3C 60 81 0E */	lis r3, cKF_ba_r_int_tak_ice@ha /* 0x810E3AF4@ha */
/* 8063C3C0  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063C3C4  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8063C3C8  38 A3 3A F4 */	addi r5, r3, cKF_ba_r_int_tak_ice@l /* 0x810E3AF4@l */
/* 8063C3CC  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063C3D0  7F E3 FB 78 */	mr r3, r31
/* 8063C3D4  4B D3 46 C1 */	bl cKF_SkeletonInfo_R_ct
/* 8063C3D8  3C 80 81 0E */	lis r4, cKF_ba_r_int_tak_ice@ha /* 0x810E3AF4@ha */
/* 8063C3DC  7F E3 FB 78 */	mr r3, r31
/* 8063C3E0  38 84 3A F4 */	addi r4, r4, cKF_ba_r_int_tak_ice@l /* 0x810E3AF4@l */
/* 8063C3E4  38 A0 00 00 */	li r5, 0
/* 8063C3E8  4B D3 47 FD */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063C3EC  7F E3 FB 78 */	mr r3, r31
/* 8063C3F0  4B D3 4C 25 */	bl cKF_SkeletonInfo_R_play
/* 8063C3F4  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 8063C3F8  28 00 00 01 */	cmplwi r0, 1
/* 8063C3FC  40 82 00 20 */	bne lbl_8063C41C
/* 8063C400  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 8063C404  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063C408  C0 24 D2 8C */	lfs f1, lit_626@l(r4)  /* 0x8064D28C@l */
/* 8063C40C  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8063C410  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8063C414  D0 1E 08 34 */	stfs f0, 0x834(r30)
/* 8063C418  48 00 00 14 */	b lbl_8063C42C
lbl_8063C41C:
/* 8063C41C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063C420  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063C424  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063C428  D0 1E 08 34 */	stfs f0, 0x834(r30)
lbl_8063C42C:
/* 8063C42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063C430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063C434  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063C438  7C 08 03 A6 */	mtlr r0
/* 8063C43C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063C440  4E 80 00 20 */	blr 
