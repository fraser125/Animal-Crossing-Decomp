lbl_80376C90:
/* 80376C90  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80376C94  7C 08 02 A6 */	mflr r0
/* 80376C98  90 01 00 84 */	stw r0, 0x84(r1)
/* 80376C9C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80376CA0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80376CA4  39 61 00 70 */	addi r11, r1, 0x70
/* 80376CA8  4B D2 42 29 */	bl func_8009AED0
/* 80376CAC  3C E0 80 64 */	lis r7, lit_609@ha /* 0x80641298@ha */
/* 80376CB0  7C 7C 1B 78 */	mr r28, r3
/* 80376CB4  C0 07 12 98 */	lfs f0, lit_609@l(r7)  /* 0x80641298@l */
/* 80376CB8  7C 9D 23 78 */	mr r29, r4
/* 80376CBC  FF E0 08 90 */	fmr f31, f1
/* 80376CC0  7C BE 2B 78 */	mr r30, r5
/* 80376CC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80376CC8  7C DF 33 78 */	mr r31, r6
/* 80376CCC  38 61 00 18 */	addi r3, r1, 0x18
/* 80376CD0  38 80 00 3C */	li r4, 0x3c
/* 80376CD4  4B CE 63 95 */	bl bzero
/* 80376CD8  4B FF FE 81 */	bl mActorShadow_GetShadowKind
/* 80376CDC  90 61 00 50 */	stw r3, 0x50(r1)
/* 80376CE0  7F 83 E3 78 */	mr r3, r28
/* 80376CE4  38 81 00 18 */	addi r4, r1, 0x18
/* 80376CE8  4B FF FE 2D */	bl mActorShadow_GetShadowPosition
/* 80376CEC  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 80376CF0  4B FF F5 09 */	bl mActorShadow_AdjustRate
/* 80376CF4  38 7C 00 F8 */	addi r3, r28, 0xf8
/* 80376CF8  4B FF F5 01 */	bl mActorShadow_AdjustRate
/* 80376CFC  88 1C 01 0A */	lbz r0, 0x10a(r28)
/* 80376D00  3C 60 80 65 */	lis r3, get_ground_y_proc@ha /* 0x8064F420@ha */
/* 80376D04  38 83 F4 20 */	addi r4, r3, get_ground_y_proc@l /* 0x8064F420@l */
/* 80376D08  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 80376D0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80376D10  7D 84 00 2E */	lwzx r12, r4, r0
/* 80376D14  7D 89 03 A6 */	mtctr r12
/* 80376D18  4E 80 04 21 */	bctrl 
/* 80376D1C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80376D20  7F A4 EB 78 */	mr r4, r29
/* 80376D24  38 61 00 18 */	addi r3, r1, 0x18
/* 80376D28  4B FF F5 05 */	bl mActorShadow_GetTimeAngleY_TimeAlpha
/* 80376D2C  38 61 00 18 */	addi r3, r1, 0x18
/* 80376D30  4B FF F6 29 */	bl mActorShadow_GetGroundAverageAngle
/* 80376D34  FC 20 F8 90 */	fmr f1, f31
/* 80376D38  38 61 00 18 */	addi r3, r1, 0x18
/* 80376D3C  4B FF F7 3D */	bl mActorShadow_GetDistanceRate
/* 80376D40  3C 60 80 65 */	lis r3, set_raius_proc@ha /* 0x8064F418@ha */
/* 80376D44  57 C0 17 7A */	rlwinm r0, r30, 2, 0x1d, 0x1d
/* 80376D48  38 63 F4 18 */	addi r3, r3, set_raius_proc@l /* 0x8064F418@l */
/* 80376D4C  7F 84 E3 78 */	mr r4, r28
/* 80376D50  7D 83 00 2E */	lwzx r12, r3, r0
/* 80376D54  38 61 00 18 */	addi r3, r1, 0x18
/* 80376D58  38 A1 00 08 */	addi r5, r1, 8
/* 80376D5C  7D 89 03 A6 */	mtctr r12
/* 80376D60  4E 80 04 21 */	bctrl 
/* 80376D64  38 61 00 18 */	addi r3, r1, 0x18
/* 80376D68  4B FF F8 2D */	bl mActorShadow_GetShadowTopPos_GetSlideS
/* 80376D6C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80376D70  7F 83 E3 78 */	mr r3, r28
/* 80376D74  81 1F 00 04 */	lwz r8, 4(r31)
/* 80376D78  7F A5 EB 78 */	mr r5, r29
/* 80376D7C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80376D80  7F C6 F3 78 */	mr r6, r30
/* 80376D84  90 81 00 0C */	stw r4, 0xc(r1)
/* 80376D88  38 81 00 18 */	addi r4, r1, 0x18
/* 80376D8C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80376D90  38 E1 00 0C */	addi r7, r1, 0xc
/* 80376D94  91 01 00 10 */	stw r8, 0x10(r1)
/* 80376D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80376D9C  4B FF FA 31 */	bl mActorShadow_DrawActorShadow
/* 80376DA0  38 00 00 00 */	li r0, 0
/* 80376DA4  98 1C 01 0A */	stb r0, 0x10a(r28)
/* 80376DA8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80376DAC  39 61 00 70 */	addi r11, r1, 0x70
/* 80376DB0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80376DB4  4B D2 41 69 */	bl func_8009AF1C
/* 80376DB8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80376DBC  7C 08 03 A6 */	mtlr r0
/* 80376DC0  38 21 00 80 */	addi r1, r1, 0x80
/* 80376DC4  4E 80 00 20 */	blr 
