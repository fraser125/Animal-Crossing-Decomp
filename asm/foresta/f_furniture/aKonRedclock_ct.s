lbl_80631D90:
/* 80631D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631D94  7C 08 02 A6 */	mflr r0
/* 80631D98  7C 67 1B 78 */	mr r7, r3
/* 80631D9C  3C 80 80 F0 */	lis r4, cKF_bs_r_int_kon_redclock@ha /* 0x80EFB7C4@ha */
/* 80631DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631DA4  3C 60 80 F0 */	lis r3, cKF_ba_r_int_kon_redclock@ha /* 0x80EFB774@ha */
/* 80631DA8  38 84 B7 C4 */	addi r4, r4, cKF_bs_r_int_kon_redclock@l /* 0x80EFB7C4@l */
/* 80631DAC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80631DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80631DB4  3B E7 01 34 */	addi r31, r7, 0x134
/* 80631DB8  38 A3 B7 74 */	addi r5, r3, cKF_ba_r_int_kon_redclock@l /* 0x80EFB774@l */
/* 80631DBC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80631DC0  7F E3 FB 78 */	mr r3, r31
/* 80631DC4  4B D3 EC D1 */	bl cKF_SkeletonInfo_R_ct
/* 80631DC8  3C 80 80 F0 */	lis r4, cKF_ba_r_int_kon_redclock@ha /* 0x80EFB774@ha */
/* 80631DCC  7F E3 FB 78 */	mr r3, r31
/* 80631DD0  38 84 B7 74 */	addi r4, r4, cKF_ba_r_int_kon_redclock@l /* 0x80EFB774@l */
/* 80631DD4  38 A0 00 00 */	li r5, 0
/* 80631DD8  4B D3 EE 0D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80631DDC  7F E3 FB 78 */	mr r3, r31
/* 80631DE0  4B D3 F2 35 */	bl cKF_SkeletonInfo_R_play
/* 80631DE4  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80631DE8  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80631DEC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631DF8  7C 08 03 A6 */	mtlr r0
/* 80631DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80631E00  4E 80 00 20 */	blr 
