lbl_804BE250:
/* 804BE250  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BE254  7C 08 02 A6 */	mflr r0
/* 804BE258  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BE25C  39 61 00 30 */	addi r11, r1, 0x30
/* 804BE260  4B BD CC 71 */	bl func_8009AED0
/* 804BE264  7C DC 33 78 */	mr r28, r6
/* 804BE268  7C 7D 1B 78 */	mr r29, r3
/* 804BE26C  2C 1C 00 35 */	cmpwi r28, 0x35
/* 804BE270  7C 9E 23 78 */	mr r30, r4
/* 804BE274  7C BF 2B 78 */	mr r31, r5
/* 804BE278  41 82 00 D4 */	beq lbl_804BE34C
/* 804BE27C  3C 80 80 69 */	lis r4, pos_table@ha /* 0x80695C04@ha */
/* 804BE280  55 05 16 BA */	rlwinm r5, r8, 2, 0x1a, 0x1d
/* 804BE284  38 84 5C 04 */	addi r4, r4, pos_table@l /* 0x80695C04@l */
/* 804BE288  55 00 F6 BA */	rlwinm r0, r8, 0x1e, 0x1a, 0x1d
/* 804BE28C  C0 67 00 04 */	lfs f3, 4(r7)
/* 804BE290  3C 60 80 64 */	lis r3, data_8064612C@ha /* 0x8064612C@ha */
/* 804BE294  7C 44 2C 2E */	lfsx f2, r4, r5
/* 804BE298  7C 04 04 2E */	lfsx f0, r4, r0
/* 804BE29C  C0 27 00 08 */	lfs f1, 8(r7)
/* 804BE2A0  EC 43 10 2A */	fadds f2, f3, f2
/* 804BE2A4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 804BE2A8  EC 01 00 2A */	fadds f0, f1, f0
/* 804BE2AC  C0 23 61 2C */	lfs f1, data_8064612C@l(r3)  /* 0x8064612C@l */
/* 804BE2B0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804BE2B4  38 61 00 08 */	addi r3, r1, 8
/* 804BE2B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804BE2BC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804BE2C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804BE2C4  90 A1 00 08 */	stw r5, 8(r1)
/* 804BE2C8  90 81 00 0C */	stw r4, 0xc(r1)
/* 804BE2CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BE2D0  4B ED 16 C9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BE2D4  FC 00 08 90 */	fmr f0, f1
/* 804BE2D8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804BE2DC  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 804BE2E0  38 60 00 00 */	li r3, 0
/* 804BE2E4  FC 40 00 18 */	frsp f2, f0
/* 804BE2E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804BE2EC  4B F4 E0 15 */	bl Matrix_translate
/* 804BE2F0  3C 80 80 64 */	lis r4, lit_436@ha /* 0x80646130@ha */
/* 804BE2F4  38 60 00 01 */	li r3, 1
/* 804BE2F8  C0 24 61 30 */	lfs f1, lit_436@l(r4)  /* 0x80646130@l */
/* 804BE2FC  FC 40 08 90 */	fmr f2, f1
/* 804BE300  FC 60 08 90 */	fmr f3, f1
/* 804BE304  4B F4 E0 E9 */	bl Matrix_scale
/* 804BE308  80 7E 00 00 */	lwz r3, 0(r30)
/* 804BE30C  38 63 00 04 */	addi r3, r3, 4
/* 804BE310  4B F4 DF 1D */	bl Matrix_get
/* 804BE314  57 84 08 3C */	slwi r4, r28, 1
/* 804BE318  A0 BF 00 00 */	lhz r5, 0(r31)
/* 804BE31C  7C 1D 22 2E */	lhzx r0, r29, r4
/* 804BE320  80 7E 00 00 */	lwz r3, 0(r30)
/* 804BE324  7C 05 00 50 */	subf r0, r5, r0
/* 804BE328  90 03 00 00 */	stw r0, 0(r3)
/* 804BE32C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804BE330  7C 1D 23 2E */	sthx r0, r29, r4
/* 804BE334  80 7E 00 00 */	lwz r3, 0(r30)
/* 804BE338  38 03 00 44 */	addi r0, r3, 0x44
/* 804BE33C  90 1E 00 00 */	stw r0, 0(r30)
/* 804BE340  A0 7F 00 00 */	lhz r3, 0(r31)
/* 804BE344  38 03 00 01 */	addi r0, r3, 1
/* 804BE348  B0 1F 00 00 */	sth r0, 0(r31)
lbl_804BE34C:
/* 804BE34C  39 61 00 30 */	addi r11, r1, 0x30
/* 804BE350  4B BD CB CD */	bl func_8009AF1C
/* 804BE354  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BE358  7C 08 03 A6 */	mtlr r0
/* 804BE35C  38 21 00 30 */	addi r1, r1, 0x30
/* 804BE360  4E 80 00 20 */	blr 
