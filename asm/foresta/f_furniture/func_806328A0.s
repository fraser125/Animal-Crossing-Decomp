lbl_806328A0:
/* 806328A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806328A4  7C 08 02 A6 */	mflr r0
/* 806328A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806328AC  39 61 00 20 */	addi r11, r1, 0x20
/* 806328B0  4B A6 86 21 */	bl func_8009AED0
/* 806328B4  A0 A3 00 00 */	lhz r5, 0(r3)
/* 806328B8  7C 7C 1B 78 */	mr r28, r3
/* 806328BC  3C 80 80 6D */	lis r4, fNBC_balloon_skel_table@ha /* 0x806D7494@ha */
/* 806328C0  3C 60 80 6D */	lis r3, fNBC_balloon_anime_table@ha /* 0x806D74B4@ha */
/* 806328C4  38 05 FC 04 */	addi r0, r5, -1020
/* 806328C8  3B BC 01 34 */	addi r29, r28, 0x134
/* 806328CC  3B E3 74 B4 */	addi r31, r3, fNBC_balloon_anime_table@l /* 0x806D74B4@l */
/* 806328D0  38 84 74 94 */	addi r4, r4, fNBC_balloon_skel_table@l /* 0x806D7494@l */
/* 806328D4  54 1E 16 FA */	rlwinm r30, r0, 2, 0x1b, 0x1d
/* 806328D8  7F A3 EB 78 */	mr r3, r29
/* 806328DC  7C 84 F0 2E */	lwzx r4, r4, r30
/* 806328E0  38 DC 01 A4 */	addi r6, r28, 0x1a4
/* 806328E4  7C BF F0 2E */	lwzx r5, r31, r30
/* 806328E8  38 FC 01 DA */	addi r7, r28, 0x1da
/* 806328EC  4B D3 E1 A9 */	bl cKF_SkeletonInfo_R_ct
/* 806328F0  7C 9F F0 2E */	lwzx r4, r31, r30
/* 806328F4  7F A3 EB 78 */	mr r3, r29
/* 806328F8  38 A0 00 00 */	li r5, 0
/* 806328FC  4B D3 E2 E9 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80632900  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80632904  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 80632908  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 8063290C  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 80632910  C0 25 00 00 */	lfs f1, 0(r5)
/* 80632914  7F A3 EB 78 */	mr r3, r29
/* 80632918  D0 3C 08 34 */	stfs f1, 0x834(r28)
/* 8063291C  D0 1C 08 38 */	stfs f0, 0x838(r28)
/* 80632920  C0 1C 08 34 */	lfs f0, 0x834(r28)
/* 80632924  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80632928  4B D3 E6 ED */	bl cKF_SkeletonInfo_R_play
/* 8063292C  39 61 00 20 */	addi r11, r1, 0x20
/* 80632930  4B A6 85 ED */	bl func_8009AF1C
/* 80632934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80632938  7C 08 03 A6 */	mtlr r0
/* 8063293C  38 21 00 20 */	addi r1, r1, 0x20
/* 80632940  4E 80 00 20 */	blr 
