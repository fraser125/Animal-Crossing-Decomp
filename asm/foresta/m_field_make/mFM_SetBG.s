lbl_803A2710:
/* 803A2710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A2714  7C 08 02 A6 */	mflr r0
/* 803A2718  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A271C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A2720  4B CF 87 B1 */	bl func_8009AED0
/* 803A2724  88 03 00 01 */	lbz r0, 1(r3)
/* 803A2728  7C 7C 1B 78 */	mr r28, r3
/* 803A272C  50 A0 07 BE */	rlwimi r0, r5, 0, 0x1e, 0x1f
/* 803A2730  7C 9D 23 78 */	mr r29, r4
/* 803A2734  98 1C 00 01 */	stb r0, 1(r28)
/* 803A2738  7D 1E 43 78 */	mr r30, r8
/* 803A273C  7D 3F 4B 78 */	mr r31, r9
/* 803A2740  7C C3 33 78 */	mr r3, r6
/* 803A2744  A0 1C 00 00 */	lhz r0, 0(r28)
/* 803A2748  50 E0 14 3A */	rlwimi r0, r7, 2, 0x10, 0x1d
/* 803A274C  B0 1C 00 00 */	sth r0, 0(r28)
/* 803A2750  80 04 00 04 */	lwz r0, 4(r4)
/* 803A2754  90 1C 00 04 */	stw r0, 4(r28)
/* 803A2758  80 04 00 08 */	lwz r0, 8(r4)
/* 803A275C  90 1C 00 08 */	stw r0, 8(r28)
/* 803A2760  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803A2764  90 1C 00 0C */	stw r0, 0xc(r28)
/* 803A2768  88 04 00 10 */	lbz r0, 0x10(r4)
/* 803A276C  98 1C 00 10 */	stb r0, 0x10(r28)
/* 803A2770  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803A2774  90 1C 00 18 */	stw r0, 0x18(r28)
/* 803A2778  80 84 00 14 */	lwz r4, 0x14(r4)
/* 803A277C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 803A2780  7C 04 00 50 */	subf r0, r4, r0
/* 803A2784  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 803A2788  98 DC 00 11 */	stb r6, 0x11(r28)
/* 803A278C  48 04 22 CD */	bl mRF_Type2BlockInfo
/* 803A2790  90 7C 00 14 */	stw r3, 0x14(r28)
/* 803A2794  7F C6 F3 78 */	mr r6, r30
/* 803A2798  7F E7 FB 78 */	mr r7, r31
/* 803A279C  38 7C 05 20 */	addi r3, r28, 0x520
/* 803A27A0  38 9D 04 1C */	addi r4, r29, 0x41c
/* 803A27A4  38 A0 00 06 */	li r5, 6
/* 803A27A8  4B FF FE 79 */	bl mFM_SetSoundSource
/* 803A27AC  38 7C 00 20 */	addi r3, r28, 0x20
/* 803A27B0  38 9C 04 20 */	addi r4, r28, 0x420
/* 803A27B4  38 BD 00 1C */	addi r5, r29, 0x1c
/* 803A27B8  4B FF FA BD */	bl mFM_BgUtDataSet
/* 803A27BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A27C0  4B CF 87 5D */	bl func_8009AF1C
/* 803A27C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A27C8  7C 08 03 A6 */	mtlr r0
/* 803A27CC  38 21 00 20 */	addi r1, r1, 0x20
/* 803A27D0  4E 80 00 20 */	blr 
