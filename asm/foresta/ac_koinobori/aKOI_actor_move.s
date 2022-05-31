lbl_805B2800:
/* 805B2800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2804  7C 08 02 A6 */	mflr r0
/* 805B2808  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B280C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2810  7C 9F 23 78 */	mr r31, r4
/* 805B2814  93 C1 00 08 */	stw r30, 8(r1)
/* 805B2818  7C 7E 1B 78 */	mr r30, r3
/* 805B281C  7F E3 FB 78 */	mr r3, r31
/* 805B2820  4B E2 6E 21 */	bl get_player_actor_withoutCheck
/* 805B2824  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B2828  4B DB E7 ED */	bl cKF_SkeletonInfo_R_play
/* 805B282C  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805B2830  7F C3 F3 78 */	mr r3, r30
/* 805B2834  7F E4 FB 78 */	mr r4, r31
/* 805B2838  7D 89 03 A6 */	mtctr r12
/* 805B283C  4E 80 04 21 */	bctrl 
/* 805B2840  7F C3 F3 78 */	mr r3, r30
/* 805B2844  38 BE 00 28 */	addi r5, r30, 0x28
/* 805B2848  38 80 00 35 */	li r4, 0x35
/* 805B284C  48 07 B6 F9 */	bl sAdo_OngenPos
/* 805B2850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B2858  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B285C  7C 08 03 A6 */	mtlr r0
/* 805B2860  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2864  4E 80 00 20 */	blr 
