lbl_8063D720:
/* 8063D720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D724  7C 08 02 A6 */	mflr r0
/* 8063D728  3C 80 81 10 */	lis r4, cKF_bs_r_int_tak_toudai@ha /* 0x810FB320@ha */
/* 8063D72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D730  38 84 B3 20 */	addi r4, r4, cKF_bs_r_int_tak_toudai@l /* 0x810FB320@l */
/* 8063D734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063D738  93 C1 00 08 */	stw r30, 8(r1)
/* 8063D73C  7C 7E 1B 78 */	mr r30, r3
/* 8063D740  3C 60 81 10 */	lis r3, cKF_ba_r_int_tak_toudai@ha /* 0x810FB2AC@ha */
/* 8063D744  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063D748  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8063D74C  38 A3 B2 AC */	addi r5, r3, cKF_ba_r_int_tak_toudai@l /* 0x810FB2AC@l */
/* 8063D750  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063D754  7F E3 FB 78 */	mr r3, r31
/* 8063D758  4B D3 33 3D */	bl cKF_SkeletonInfo_R_ct
/* 8063D75C  3C 80 81 10 */	lis r4, cKF_ba_r_int_tak_toudai@ha /* 0x810FB2AC@ha */
/* 8063D760  7F E3 FB 78 */	mr r3, r31
/* 8063D764  38 84 B2 AC */	addi r4, r4, cKF_ba_r_int_tak_toudai@l /* 0x810FB2AC@l */
/* 8063D768  38 A0 00 00 */	li r5, 0
/* 8063D76C  4B D3 34 79 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063D770  7F E3 FB 78 */	mr r3, r31
/* 8063D774  4B D3 38 A1 */	bl cKF_SkeletonInfo_R_play
/* 8063D778  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 8063D77C  28 00 00 01 */	cmplwi r0, 1
/* 8063D780  40 82 00 18 */	bne lbl_8063D798
/* 8063D784  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D788  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8063D78C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D790  D0 1E 08 34 */	stfs f0, 0x834(r30)
/* 8063D794  48 00 00 14 */	b lbl_8063D7A8
lbl_8063D798:
/* 8063D798  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063D79C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063D7A0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D7A4  D0 1E 08 34 */	stfs f0, 0x834(r30)
lbl_8063D7A8:
/* 8063D7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063D7B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063D7B4  7C 08 03 A6 */	mtlr r0
/* 8063D7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D7BC  4E 80 00 20 */	blr 
