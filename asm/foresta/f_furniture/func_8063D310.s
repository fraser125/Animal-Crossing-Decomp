lbl_8063D310:
/* 8063D310  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D314  7C 08 02 A6 */	mflr r0
/* 8063D318  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D31C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D320  4B A5 DB B1 */	bl func_8009AED0
/* 8063D324  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8063D328  7C 7F 1B 78 */	mr r31, r3
/* 8063D32C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8063D330  3C C3 00 02 */	addis r6, r3, 2
/* 8063D334  3C 80 81 0F */	lis r4, cKF_bs_r_int_tak_moon@ha /* 0x810E8A9C@ha */
/* 8063D338  3C 60 81 0F */	lis r3, cKF_ba_r_int_tak_moon@ha /* 0x810E8A70@ha */
/* 8063D33C  3B DF 01 34 */	addi r30, r31, 0x134
/* 8063D340  38 A3 8A 70 */	addi r5, r3, cKF_ba_r_int_tak_moon@l /* 0x810E8A70@l */
/* 8063D344  8B A6 61 21 */	lbz r29, 0x6121(r6)
/* 8063D348  8B 86 61 20 */	lbz r28, 0x6120(r6)
/* 8063D34C  38 84 8A 9C */	addi r4, r4, cKF_bs_r_int_tak_moon@l /* 0x810E8A9C@l */
/* 8063D350  7F C3 F3 78 */	mr r3, r30
/* 8063D354  38 DF 01 A4 */	addi r6, r31, 0x1a4
/* 8063D358  38 FF 01 DA */	addi r7, r31, 0x1da
/* 8063D35C  4B D3 37 39 */	bl cKF_SkeletonInfo_R_ct
/* 8063D360  3C 80 81 0F */	lis r4, cKF_ba_r_int_tak_moon@ha /* 0x810E8A70@ha */
/* 8063D364  7F C3 F3 78 */	mr r3, r30
/* 8063D368  38 84 8A 70 */	addi r4, r4, cKF_ba_r_int_tak_moon@l /* 0x810E8A70@l */
/* 8063D36C  38 A0 00 00 */	li r5, 0
/* 8063D370  4B D3 38 75 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063D374  7F C3 F3 78 */	mr r3, r30
/* 8063D378  4B D3 3C 9D */	bl cKF_SkeletonInfo_R_play
/* 8063D37C  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063D380  28 00 00 01 */	cmplwi r0, 1
/* 8063D384  40 82 00 18 */	bne lbl_8063D39C
/* 8063D388  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D38C  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8063D390  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8063D394  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8063D398  48 00 00 14 */	b lbl_8063D3AC
lbl_8063D39C:
/* 8063D39C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063D3A0  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063D3A4  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8063D3A8  D0 1F 08 34 */	stfs f0, 0x834(r31)
lbl_8063D3AC:
/* 8063D3AC  1C BD 00 3C */	mulli r5, r29, 0x3c
/* 8063D3B0  3C 00 43 30 */	lis r0, 0x4330
/* 8063D3B4  90 01 00 08 */	stw r0, 8(r1)
/* 8063D3B8  3C 80 80 65 */	lis r4, lit_371@ha /* 0x8064D284@ha */
/* 8063D3BC  3C 60 80 65 */	lis r3, lit_6380@ha /* 0x8064D3C0@ha */
/* 8063D3C0  C8 44 D2 84 */	lfd f2, lit_371@l(r4)  /* 0x8064D284@l */
/* 8063D3C4  7C 1C 2A 14 */	add r0, r28, r5
/* 8063D3C8  C0 03 D3 C0 */	lfs f0, lit_6380@l(r3)  /* 0x8064D3C0@l */
/* 8063D3CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063D3D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D3D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063D3D8  C8 21 00 08 */	lfd f1, 8(r1)
/* 8063D3DC  EC 21 10 28 */	fsubs f1, f1, f2
/* 8063D3E0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8063D3E4  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 8063D3E8  4B A5 DB 35 */	bl func_8009AF1C
/* 8063D3EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063D3F0  7C 08 03 A6 */	mtlr r0
/* 8063D3F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8063D3F8  4E 80 00 20 */	blr 
