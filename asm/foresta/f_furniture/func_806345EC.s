lbl_806345EC:
/* 806345EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806345F0  7C 08 02 A6 */	mflr r0
/* 806345F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806345F8  39 61 00 20 */	addi r11, r1, 0x20
/* 806345FC  4B A6 68 D9 */	bl func_8009AED4
/* 80634600  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80634604  7C 67 1B 78 */	mr r7, r3
/* 80634608  3C 80 80 6E */	lis r4, fNSN_station_skel_table@ha /* 0x806D8074@ha */
/* 8063460C  3C 60 80 6E */	lis r3, fNSN_station_anime_table@ha /* 0x806D80B4@ha */
/* 80634610  38 05 FB D6 */	addi r0, r5, -1066
/* 80634614  3B A7 01 34 */	addi r29, r7, 0x134
/* 80634618  3B E3 80 B4 */	addi r31, r3, fNSN_station_anime_table@l /* 0x806D80B4@l */
/* 8063461C  38 84 80 74 */	addi r4, r4, fNSN_station_skel_table@l /* 0x806D8074@l */
/* 80634620  54 1E 16 BA */	rlwinm r30, r0, 2, 0x1a, 0x1d
/* 80634624  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80634628  7C 84 F0 2E */	lwzx r4, r4, r30
/* 8063462C  7F A3 EB 78 */	mr r3, r29
/* 80634630  7C BF F0 2E */	lwzx r5, r31, r30
/* 80634634  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80634638  4B D3 C4 5D */	bl cKF_SkeletonInfo_R_ct
/* 8063463C  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80634640  7F A3 EB 78 */	mr r3, r29
/* 80634644  38 A0 00 00 */	li r5, 0
/* 80634648  4B D3 C5 9D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063464C  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 80634650  7F A3 EB 78 */	mr r3, r29
/* 80634654  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 80634658  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8063465C  4B D3 C9 B9 */	bl cKF_SkeletonInfo_R_play
/* 80634660  39 61 00 20 */	addi r11, r1, 0x20
/* 80634664  4B A6 68 BD */	bl func_8009AF20
/* 80634668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063466C  7C 08 03 A6 */	mtlr r0
/* 80634670  38 21 00 20 */	addi r1, r1, 0x20
/* 80634674  4E 80 00 20 */	blr 
