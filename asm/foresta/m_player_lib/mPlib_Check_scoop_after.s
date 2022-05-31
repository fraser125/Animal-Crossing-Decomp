lbl_803DC5F8:
/* 803DC5F8  94 21 FB A0 */	stwu r1, -0x460(r1)
/* 803DC5FC  7C 08 02 A6 */	mflr r0
/* 803DC600  90 01 04 64 */	stw r0, 0x464(r1)
/* 803DC604  DB E1 04 50 */	stfd f31, 0x450(r1)
/* 803DC608  F3 E1 04 58 */	psq_st f31, 1112(r1), 0, 0 /* qr0 */
/* 803DC60C  DB C1 04 40 */	stfd f30, 0x440(r1)
/* 803DC610  F3 C1 04 48 */	psq_st f30, 1096(r1), 0, 0 /* qr0 */
/* 803DC614  DB A1 04 30 */	stfd f29, 0x430(r1)
/* 803DC618  F3 A1 04 38 */	psq_st f29, 1080(r1), 0, 0 /* qr0 */
/* 803DC61C  39 61 04 30 */	addi r11, r1, 0x430
/* 803DC620  4B CB E8 85 */	bl func_8009AEA4
/* 803DC624  7C 7B 1B 78 */	mr r27, r3
/* 803DC628  7C 9E 23 78 */	mr r30, r4
/* 803DC62C  7C BA 2B 78 */	mr r26, r5
/* 803DC630  7C D9 33 78 */	mr r25, r6
/* 803DC634  7C F7 3B 78 */	mr r23, r7
/* 803DC638  4B FF D0 09 */	bl get_player_actor_withoutCheck
/* 803DC63C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DC640  28 19 00 00 */	cmplwi r25, 0
/* 803DC644  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DC648  7C 75 1B 78 */	mr r21, r3
/* 803DC64C  3C 64 00 02 */	addis r3, r4, 2
/* 803DC650  88 63 60 01 */	lbz r3, 0x6001(r3)
/* 803DC654  41 82 00 0C */	beq lbl_803DC660
/* 803DC658  38 00 00 00 */	li r0, 0
/* 803DC65C  90 19 00 00 */	stw r0, 0(r25)
lbl_803DC660:
/* 803DC660  38 00 00 00 */	li r0, 0
/* 803DC664  2C 03 00 00 */	cmpwi r3, 0
/* 803DC668  B0 1A 00 00 */	sth r0, 0(r26)
/* 803DC66C  40 82 11 98 */	bne lbl_803DD804
/* 803DC670  80 D5 00 28 */	lwz r6, 0x28(r21)
/* 803DC674  38 61 00 10 */	addi r3, r1, 0x10
/* 803DC678  80 15 00 2C */	lwz r0, 0x2c(r21)
/* 803DC67C  38 81 00 0C */	addi r4, r1, 0xc
/* 803DC680  38 A1 02 18 */	addi r5, r1, 0x218
/* 803DC684  90 C1 02 18 */	stw r6, 0x218(r1)
/* 803DC688  90 01 02 1C */	stw r0, 0x21c(r1)
/* 803DC68C  80 15 00 30 */	lwz r0, 0x30(r21)
/* 803DC690  90 01 02 20 */	stw r0, 0x220(r1)
/* 803DC694  4B FC 8C D5 */	bl mFI_Wpos2UtNum
/* 803DC698  2C 03 00 00 */	cmpwi r3, 0
/* 803DC69C  41 82 11 68 */	beq lbl_803DD804
/* 803DC6A0  C3 D5 00 28 */	lfs f30, 0x28(r21)
/* 803DC6A4  38 61 02 94 */	addi r3, r1, 0x294
/* 803DC6A8  C3 B5 00 2C */	lfs f29, 0x2c(r21)
/* 803DC6AC  3A C0 00 00 */	li r22, 0
/* 803DC6B0  C3 F5 00 30 */	lfs f31, 0x30(r21)
/* 803DC6B4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803DC6B8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803DC6BC  4B FC 8D C1 */	bl mFI_UtNum2CenterWpos
/* 803DC6C0  3C 60 80 64 */	lis r3, add_num@ha /* 0x80643008@ha */
/* 803DC6C4  3B E1 02 C0 */	addi r31, r1, 0x2c0
/* 803DC6C8  3B 03 30 08 */	addi r24, r3, add_num@l /* 0x80643008@l */
/* 803DC6CC  3A 60 00 00 */	li r19, 0
/* 803DC6D0  3A 20 00 00 */	li r17, 0
/* 803DC6D4  3A 40 00 00 */	li r18, 0
/* 803DC6D8  3A 80 00 00 */	li r20, 0
lbl_803DC6DC:
/* 803DC6DC  7C B8 A2 14 */	add r5, r24, r20
/* 803DC6E0  3B 81 02 E0 */	addi r28, r1, 0x2e0
/* 803DC6E4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803DC6E8  3B A1 03 80 */	addi r29, r1, 0x380
/* 803DC6EC  80 05 00 00 */	lwz r0, 0(r5)
/* 803DC6F0  7F BD 92 14 */	add r29, r29, r18
/* 803DC6F4  7F 9C A2 14 */	add r28, r28, r20
/* 803DC6F8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803DC6FC  7C 63 02 14 */	add r3, r3, r0
/* 803DC700  80 05 00 04 */	lwz r0, 4(r5)
/* 803DC704  90 7C 00 00 */	stw r3, 0(r28)
/* 803DC708  7F A3 EB 78 */	mr r3, r29
/* 803DC70C  7C 04 02 14 */	add r0, r4, r0
/* 803DC710  90 1C 00 04 */	stw r0, 4(r28)
/* 803DC714  80 9C 00 00 */	lwz r4, 0(r28)
/* 803DC718  80 BC 00 04 */	lwz r5, 4(r28)
/* 803DC71C  4B FC 8D 61 */	bl mFI_UtNum2CenterWpos
/* 803DC720  7C 7F 89 2E */	stwx r3, r31, r17
/* 803DC724  7C 1F 88 2E */	lwzx r0, r31, r17
/* 803DC728  D3 BD 00 04 */	stfs f29, 4(r29)
/* 803DC72C  2C 00 00 00 */	cmpwi r0, 0
/* 803DC730  40 82 00 68 */	bne lbl_803DC798
/* 803DC734  80 9C 00 00 */	lwz r4, 0(r28)
/* 803DC738  3C 60 43 30 */	lis r3, 0x4330
/* 803DC73C  80 1C 00 04 */	lwz r0, 4(r28)
/* 803DC740  3C A0 80 64 */	lis r5, lit_1308@ha /* 0x80642FEC@ha */
/* 803DC744  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803DC748  3C C0 80 64 */	lis r6, lit_2087@ha /* 0x80643048@ha */
/* 803DC74C  90 81 03 E4 */	stw r4, 0x3e4(r1)
/* 803DC750  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803DC754  C8 65 2F EC */	lfd f3, lit_1308@l(r5)  /* 0x80642FEC@l */
/* 803DC758  90 61 03 E0 */	stw r3, 0x3e0(r1)
/* 803DC75C  C0 86 30 48 */	lfs f4, lit_2087@l(r6)  /* 0x80643048@l */
/* 803DC760  C8 01 03 E0 */	lfd f0, 0x3e0(r1)
/* 803DC764  90 01 03 EC */	stw r0, 0x3ec(r1)
/* 803DC768  EC 20 18 28 */	fsubs f1, f0, f3
/* 803DC76C  C0 A1 02 94 */	lfs f5, 0x294(r1)
/* 803DC770  90 61 03 E8 */	stw r3, 0x3e8(r1)
/* 803DC774  EC 44 00 72 */	fmuls f2, f4, f1
/* 803DC778  C8 01 03 E8 */	lfd f0, 0x3e8(r1)
/* 803DC77C  C0 21 02 9C */	lfs f1, 0x29c(r1)
/* 803DC780  EC 00 18 28 */	fsubs f0, f0, f3
/* 803DC784  EC 45 10 2A */	fadds f2, f5, f2
/* 803DC788  EC 04 00 32 */	fmuls f0, f4, f0
/* 803DC78C  D0 5D 00 00 */	stfs f2, 0(r29)
/* 803DC790  EC 01 00 2A */	fadds f0, f1, f0
/* 803DC794  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_803DC798:
/* 803DC798  3A 73 00 01 */	addi r19, r19, 1
/* 803DC79C  3A 52 00 0C */	addi r18, r18, 0xc
/* 803DC7A0  2C 13 00 08 */	cmpwi r19, 8
/* 803DC7A4  3A 94 00 08 */	addi r20, r20, 8
/* 803DC7A8  3A 31 00 04 */	addi r17, r17, 4
/* 803DC7AC  41 80 FF 30 */	blt lbl_803DC6DC
/* 803DC7B0  3A 61 02 84 */	addi r19, r1, 0x284
/* 803DC7B4  3A 80 00 00 */	li r20, 0
/* 803DC7B8  3A 20 00 00 */	li r17, 0
/* 803DC7BC  3A 40 00 00 */	li r18, 0
lbl_803DC7C0:
/* 803DC7C0  38 61 03 80 */	addi r3, r1, 0x380
/* 803DC7C4  38 81 03 20 */	addi r4, r1, 0x320
/* 803DC7C8  7C 63 92 14 */	add r3, r3, r18
/* 803DC7CC  C0 23 00 00 */	lfs f1, 0(r3)
/* 803DC7D0  7C 84 92 14 */	add r4, r4, r18
/* 803DC7D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 803DC7D8  EC 21 F0 28 */	fsubs f1, f1, f30
/* 803DC7DC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803DC7E0  D0 24 00 00 */	stfs f1, 0(r4)
/* 803DC7E4  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DC7E8  C0 24 00 08 */	lfs f1, 8(r4)
/* 803DC7EC  C0 44 00 00 */	lfs f2, 0(r4)
/* 803DC7F0  48 02 F8 11 */	bl atans_table
/* 803DC7F4  3A 94 00 01 */	addi r20, r20, 1
/* 803DC7F8  7C 73 8B 2E */	sthx r3, r19, r17
/* 803DC7FC  2C 14 00 08 */	cmpwi r20, 8
/* 803DC800  3A 31 00 02 */	addi r17, r17, 2
/* 803DC804  3A 52 00 0C */	addi r18, r18, 0xc
/* 803DC808  41 80 FF B8 */	blt lbl_803DC7C0
/* 803DC80C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 803DC810  38 00 00 08 */	li r0, 8
/* 803DC814  39 01 02 84 */	addi r8, r1, 0x284
/* 803DC818  39 21 02 A0 */	addi r9, r1, 0x2a0
/* 803DC81C  38 C5 80 00 */	addi r6, r5, 0x8000 /* 0x00008000@l */
/* 803DC820  A9 95 00 DE */	lha r12, 0xde(r21)
/* 803DC824  3D 60 00 01 */	lis r11, 1
/* 803DC828  39 40 00 00 */	li r10, 0
/* 803DC82C  38 60 00 00 */	li r3, 0
/* 803DC830  38 80 00 00 */	li r4, 0
/* 803DC834  7C 09 03 A6 */	mtctr r0
lbl_803DC838:
/* 803DC838  7C 08 22 AE */	lhax r0, r8, r4
/* 803DC83C  7C 0C 00 50 */	subf r0, r12, r0
/* 803DC840  7C 07 FE 70 */	srawi r7, r0, 0x1f
/* 803DC844  7C E0 02 78 */	xor r0, r7, r0
/* 803DC848  7C 07 00 50 */	subf r0, r7, r0
/* 803DC84C  7C 09 19 2E */	stwx r0, r9, r3
/* 803DC850  7C 09 18 2E */	lwzx r0, r9, r3
/* 803DC854  7C 00 30 00 */	cmpw r0, r6
/* 803DC858  40 81 00 0C */	ble lbl_803DC864
/* 803DC85C  7C 00 28 50 */	subf r0, r0, r5
/* 803DC860  7C 09 19 2E */	stwx r0, r9, r3
lbl_803DC864:
/* 803DC864  7C 09 18 2E */	lwzx r0, r9, r3
/* 803DC868  7C 0B 00 00 */	cmpw r11, r0
/* 803DC86C  40 81 00 0C */	ble lbl_803DC878
/* 803DC870  7C 0B 03 78 */	mr r11, r0
/* 803DC874  7D 56 53 78 */	mr r22, r10
lbl_803DC878:
/* 803DC878  39 4A 00 01 */	addi r10, r10, 1
/* 803DC87C  38 63 00 04 */	addi r3, r3, 4
/* 803DC880  38 84 00 02 */	addi r4, r4, 2
/* 803DC884  42 00 FF B4 */	bdnz lbl_803DC838
/* 803DC888  2C 16 00 00 */	cmpwi r22, 0
/* 803DC88C  41 82 00 1C */	beq lbl_803DC8A8
/* 803DC890  2C 16 00 02 */	cmpwi r22, 2
/* 803DC894  41 82 00 14 */	beq lbl_803DC8A8
/* 803DC898  2C 16 00 05 */	cmpwi r22, 5
/* 803DC89C  41 82 00 0C */	beq lbl_803DC8A8
/* 803DC8A0  2C 16 00 07 */	cmpwi r22, 7
/* 803DC8A4  40 82 02 40 */	bne lbl_803DCAE4
lbl_803DC8A8:
/* 803DC8A8  1F 96 00 0C */	mulli r28, r22, 0xc
/* 803DC8AC  38 01 03 80 */	addi r0, r1, 0x380
/* 803DC8B0  3C 80 80 64 */	lis r4, lit_1088@ha /* 0x80642FE0@ha */
/* 803DC8B4  C0 24 2F E0 */	lfs f1, lit_1088@l(r4)  /* 0x80642FE0@l */
/* 803DC8B8  38 61 02 0C */	addi r3, r1, 0x20c
/* 803DC8BC  7C E0 E2 14 */	add r7, r0, r28
/* 803DC8C0  80 C7 00 00 */	lwz r6, 0(r7)
/* 803DC8C4  3A 60 00 00 */	li r19, 0
/* 803DC8C8  80 A7 00 04 */	lwz r5, 4(r7)
/* 803DC8CC  3B A0 00 00 */	li r29, 0
/* 803DC8D0  80 07 00 08 */	lwz r0, 8(r7)
/* 803DC8D4  3B E0 00 00 */	li r31, 0
/* 803DC8D8  90 C1 02 0C */	stw r6, 0x20c(r1)
/* 803DC8DC  90 A1 02 10 */	stw r5, 0x210(r1)
/* 803DC8E0  90 01 02 14 */	stw r0, 0x214(r1)
/* 803DC8E4  4B FB 30 B5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803DC8E8  FF C0 08 90 */	fmr f30, f1
/* 803DC8EC  2C 16 00 00 */	cmpwi r22, 0
/* 803DC8F0  40 82 00 10 */	bne lbl_803DC900
/* 803DC8F4  38 80 00 01 */	li r4, 1
/* 803DC8F8  3A 80 00 03 */	li r20, 3
/* 803DC8FC  48 00 00 34 */	b lbl_803DC930
lbl_803DC900:
/* 803DC900  2C 16 00 02 */	cmpwi r22, 2
/* 803DC904  40 82 00 10 */	bne lbl_803DC914
/* 803DC908  38 80 00 01 */	li r4, 1
/* 803DC90C  3A 80 00 04 */	li r20, 4
/* 803DC910  48 00 00 20 */	b lbl_803DC930
lbl_803DC914:
/* 803DC914  2C 16 00 05 */	cmpwi r22, 5
/* 803DC918  40 82 00 10 */	bne lbl_803DC928
/* 803DC91C  38 80 00 03 */	li r4, 3
/* 803DC920  3A 80 00 06 */	li r20, 6
/* 803DC924  48 00 00 0C */	b lbl_803DC930
lbl_803DC928:
/* 803DC928  38 80 00 04 */	li r4, 4
/* 803DC92C  3A 80 00 06 */	li r20, 6
lbl_803DC930:
/* 803DC930  54 80 10 3A */	slwi r0, r4, 2
/* 803DC934  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 803DC938  7C 03 00 2E */	lwzx r0, r3, r0
/* 803DC93C  2C 00 00 00 */	cmpwi r0, 0
/* 803DC940  41 82 00 70 */	beq lbl_803DC9B0
/* 803DC944  1C 04 00 0C */	mulli r0, r4, 0xc
/* 803DC948  3B 01 03 80 */	addi r24, r1, 0x380
/* 803DC94C  3C 80 80 64 */	lis r4, lit_1088@ha /* 0x80642FE0@ha */
/* 803DC950  C0 24 2F E0 */	lfs f1, lit_1088@l(r4)  /* 0x80642FE0@l */
/* 803DC954  38 61 02 00 */	addi r3, r1, 0x200
/* 803DC958  7F 18 02 14 */	add r24, r24, r0
/* 803DC95C  80 D8 00 00 */	lwz r6, 0(r24)
/* 803DC960  80 B8 00 04 */	lwz r5, 4(r24)
/* 803DC964  80 18 00 08 */	lwz r0, 8(r24)
/* 803DC968  90 C1 02 00 */	stw r6, 0x200(r1)
/* 803DC96C  90 A1 02 04 */	stw r5, 0x204(r1)
/* 803DC970  90 01 02 08 */	stw r0, 0x208(r1)
/* 803DC974  4B FB 30 25 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803DC978  80 B8 00 00 */	lwz r5, 0(r24)
/* 803DC97C  FF E0 08 90 */	fmr f31, f1
/* 803DC980  80 98 00 04 */	lwz r4, 4(r24)
/* 803DC984  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 803DC988  80 18 00 08 */	lwz r0, 8(r24)
/* 803DC98C  90 A1 01 F4 */	stw r5, 0x1f4(r1)
/* 803DC990  90 81 01 F8 */	stw r4, 0x1f8(r1)
/* 803DC994  90 01 01 FC */	stw r0, 0x1fc(r1)
/* 803DC998  4B FB 2F 41 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 803DC99C  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 803DC9A0  41 82 00 10 */	beq lbl_803DC9B0
/* 803DC9A4  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 803DC9A8  40 80 00 08 */	bge lbl_803DC9B0
/* 803DC9AC  3B A0 00 01 */	li r29, 1
lbl_803DC9B0:
/* 803DC9B0  56 80 10 3A */	slwi r0, r20, 2
/* 803DC9B4  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 803DC9B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 803DC9BC  2C 00 00 00 */	cmpwi r0, 0
/* 803DC9C0  41 82 00 70 */	beq lbl_803DCA30
/* 803DC9C4  1C 14 00 0C */	mulli r0, r20, 0xc
/* 803DC9C8  3B 01 03 80 */	addi r24, r1, 0x380
/* 803DC9CC  3C 80 80 64 */	lis r4, lit_1088@ha /* 0x80642FE0@ha */
/* 803DC9D0  C0 24 2F E0 */	lfs f1, lit_1088@l(r4)  /* 0x80642FE0@l */
/* 803DC9D4  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 803DC9D8  7F 18 02 14 */	add r24, r24, r0
/* 803DC9DC  80 D8 00 00 */	lwz r6, 0(r24)
/* 803DC9E0  80 B8 00 04 */	lwz r5, 4(r24)
/* 803DC9E4  80 18 00 08 */	lwz r0, 8(r24)
/* 803DC9E8  90 C1 01 E8 */	stw r6, 0x1e8(r1)
/* 803DC9EC  90 A1 01 EC */	stw r5, 0x1ec(r1)
/* 803DC9F0  90 01 01 F0 */	stw r0, 0x1f0(r1)
/* 803DC9F4  4B FB 2F A5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803DC9F8  80 B8 00 00 */	lwz r5, 0(r24)
/* 803DC9FC  FF E0 08 90 */	fmr f31, f1
/* 803DCA00  80 98 00 04 */	lwz r4, 4(r24)
/* 803DCA04  38 61 01 DC */	addi r3, r1, 0x1dc
/* 803DCA08  80 18 00 08 */	lwz r0, 8(r24)
/* 803DCA0C  90 A1 01 DC */	stw r5, 0x1dc(r1)
/* 803DCA10  90 81 01 E0 */	stw r4, 0x1e0(r1)
/* 803DCA14  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 803DCA18  4B FB 2E C1 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 803DCA1C  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 803DCA20  41 82 00 10 */	beq lbl_803DCA30
/* 803DCA24  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 803DCA28  40 80 00 08 */	bge lbl_803DCA30
/* 803DCA2C  3B E0 00 01 */	li r31, 1
lbl_803DCA30:
/* 803DCA30  2C 1D 00 00 */	cmpwi r29, 0
/* 803DCA34  41 82 00 14 */	beq lbl_803DCA48
/* 803DCA38  2C 1F 00 00 */	cmpwi r31, 0
/* 803DCA3C  41 82 00 0C */	beq lbl_803DCA48
/* 803DCA40  3A 20 00 01 */	li r17, 1
/* 803DCA44  48 00 00 08 */	b lbl_803DCA4C
lbl_803DCA48:
/* 803DCA48  3A 20 00 00 */	li r17, 0
lbl_803DCA4C:
/* 803DCA4C  2C 11 00 00 */	cmpwi r17, 0
/* 803DCA50  40 82 00 34 */	bne lbl_803DCA84
/* 803DCA54  38 81 03 28 */	addi r4, r1, 0x328
/* 803DCA58  38 61 03 20 */	addi r3, r1, 0x320
/* 803DCA5C  7C 24 E4 2E */	lfsx f1, r4, r28
/* 803DCA60  7C 43 E4 2E */	lfsx f2, r3, r28
/* 803DCA64  48 02 C2 35 */	bl Math3DVecLengthSquare2D
/* 803DCA68  3C 60 80 64 */	lis r3, lit_2088@ha /* 0x8064304C@ha */
/* 803DCA6C  C0 03 30 4C */	lfs f0, lit_2088@l(r3)  /* 0x8064304C@l */
/* 803DCA70  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803DCA74  40 81 00 0C */	ble lbl_803DCA80
/* 803DCA78  3A 60 00 00 */	li r19, 0
/* 803DCA7C  48 00 00 08 */	b lbl_803DCA84
lbl_803DCA80:
/* 803DCA80  3A 60 00 01 */	li r19, 1
lbl_803DCA84:
/* 803DCA84  2C 13 00 00 */	cmpwi r19, 0
/* 803DCA88  40 82 00 0C */	bne lbl_803DCA94
/* 803DCA8C  2C 11 00 00 */	cmpwi r17, 0
/* 803DCA90  41 82 00 54 */	beq lbl_803DCAE4
lbl_803DCA94:
/* 803DCA94  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 803DCA98  3C 60 00 01 */	lis r3, 1
/* 803DCA9C  7C 03 00 00 */	cmpw r3, r0
/* 803DCAA0  40 81 00 0C */	ble lbl_803DCAAC
/* 803DCAA4  7C 03 03 78 */	mr r3, r0
/* 803DCAA8  3A C0 00 01 */	li r22, 1
lbl_803DCAAC:
/* 803DCAAC  80 01 02 AC */	lwz r0, 0x2ac(r1)
/* 803DCAB0  7C 03 00 00 */	cmpw r3, r0
/* 803DCAB4  40 81 00 0C */	ble lbl_803DCAC0
/* 803DCAB8  7C 03 03 78 */	mr r3, r0
/* 803DCABC  3A C0 00 03 */	li r22, 3
lbl_803DCAC0:
/* 803DCAC0  80 01 02 B0 */	lwz r0, 0x2b0(r1)
/* 803DCAC4  7C 03 00 00 */	cmpw r3, r0
/* 803DCAC8  40 81 00 0C */	ble lbl_803DCAD4
/* 803DCACC  7C 03 03 78 */	mr r3, r0
/* 803DCAD0  3A C0 00 04 */	li r22, 4
lbl_803DCAD4:
/* 803DCAD4  80 01 02 B8 */	lwz r0, 0x2b8(r1)
/* 803DCAD8  7C 03 00 00 */	cmpw r3, r0
/* 803DCADC  40 81 00 08 */	ble lbl_803DCAE4
/* 803DCAE0  3A C0 00 06 */	li r22, 6
lbl_803DCAE4:
/* 803DCAE4  56 C0 10 3A */	slwi r0, r22, 2
/* 803DCAE8  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 803DCAEC  7C 03 00 2E */	lwzx r0, r3, r0
/* 803DCAF0  2C 00 00 00 */	cmpwi r0, 0
/* 803DCAF4  40 82 00 30 */	bne lbl_803DCB24
/* 803DCAF8  1C 96 00 0C */	mulli r4, r22, 0xc
/* 803DCAFC  38 01 03 80 */	addi r0, r1, 0x380
/* 803DCB00  38 60 00 3D */	li r3, 0x3d
/* 803DCB04  7C A0 22 14 */	add r5, r0, r4
/* 803DCB08  80 85 00 00 */	lwz r4, 0(r5)
/* 803DCB0C  80 05 00 04 */	lwz r0, 4(r5)
/* 803DCB10  90 9E 00 00 */	stw r4, 0(r30)
/* 803DCB14  90 1E 00 04 */	stw r0, 4(r30)
/* 803DCB18  80 05 00 08 */	lwz r0, 8(r5)
/* 803DCB1C  90 1E 00 08 */	stw r0, 8(r30)
/* 803DCB20  48 00 0C E8 */	b lbl_803DD808
lbl_803DCB24:
/* 803DCB24  56 C0 18 38 */	slwi r0, r22, 3
/* 803DCB28  38 61 02 E0 */	addi r3, r1, 0x2e0
/* 803DCB2C  38 81 02 E4 */	addi r4, r1, 0x2e4
/* 803DCB30  7C 63 00 2E */	lwzx r3, r3, r0
/* 803DCB34  7C 84 00 2E */	lwzx r4, r4, r0
/* 803DCB38  4B FC A7 49 */	bl mFI_UtNum2UtFG
/* 803DCB3C  28 03 00 00 */	cmplwi r3, 0
/* 803DCB40  40 82 00 0C */	bne lbl_803DCB4C
/* 803DCB44  38 00 00 00 */	li r0, 0
/* 803DCB48  48 00 00 08 */	b lbl_803DCB50
lbl_803DCB4C:
/* 803DCB4C  A0 03 00 00 */	lhz r0, 0(r3)
lbl_803DCB50:
/* 803DCB50  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 803DCB54  3A 40 00 00 */	li r18, 0
/* 803DCB58  28 1F 00 01 */	cmplwi r31, 1
/* 803DCB5C  3B A0 00 00 */	li r29, 0
/* 803DCB60  3B 80 00 00 */	li r28, 0
/* 803DCB64  3B 00 00 00 */	li r24, 0
/* 803DCB68  3A 20 00 01 */	li r17, 1
/* 803DCB6C  38 00 00 00 */	li r0, 0
/* 803DCB70  41 80 00 0C */	blt lbl_803DCB7C
/* 803DCB74  28 1F 00 04 */	cmplwi r31, 4
/* 803DCB78  40 81 00 34 */	ble lbl_803DCBAC
lbl_803DCB7C:
/* 803DCB7C  28 1F 00 70 */	cmplwi r31, 0x70
/* 803DCB80  41 80 00 0C */	blt lbl_803DCB8C
/* 803DCB84  28 1F 00 73 */	cmplwi r31, 0x73
/* 803DCB88  40 81 00 24 */	ble lbl_803DCBAC
lbl_803DCB8C:
/* 803DCB8C  28 1F 00 74 */	cmplwi r31, 0x74
/* 803DCB90  41 80 00 0C */	blt lbl_803DCB9C
/* 803DCB94  28 1F 00 77 */	cmplwi r31, 0x77
/* 803DCB98  40 81 00 14 */	ble lbl_803DCBAC
lbl_803DCB9C:
/* 803DCB9C  28 1F 00 7B */	cmplwi r31, 0x7b
/* 803DCBA0  41 80 00 10 */	blt lbl_803DCBB0
/* 803DCBA4  28 1F 00 7E */	cmplwi r31, 0x7e
/* 803DCBA8  41 81 00 08 */	bgt lbl_803DCBB0
lbl_803DCBAC:
/* 803DCBAC  38 00 00 01 */	li r0, 1
lbl_803DCBB0:
/* 803DCBB0  2C 00 00 00 */	cmpwi r0, 0
/* 803DCBB4  41 82 00 0C */	beq lbl_803DCBC0
/* 803DCBB8  3A 40 00 01 */	li r18, 1
/* 803DCBBC  48 00 03 40 */	b lbl_803DCEFC
lbl_803DCBC0:
/* 803DCBC0  28 1F 00 6A */	cmplwi r31, 0x6a
/* 803DCBC4  38 00 00 00 */	li r0, 0
/* 803DCBC8  41 80 00 0C */	blt lbl_803DCBD4
/* 803DCBCC  28 1F 00 6E */	cmplwi r31, 0x6e
/* 803DCBD0  40 81 00 0C */	ble lbl_803DCBDC
lbl_803DCBD4:
/* 803DCBD4  28 1F 00 6F */	cmplwi r31, 0x6f
/* 803DCBD8  40 82 00 08 */	bne lbl_803DCBE0
lbl_803DCBDC:
/* 803DCBDC  38 00 00 01 */	li r0, 1
lbl_803DCBE0:
/* 803DCBE0  2C 00 00 00 */	cmpwi r0, 0
/* 803DCBE4  41 82 00 0C */	beq lbl_803DCBF0
/* 803DCBE8  3B A0 00 01 */	li r29, 1
/* 803DCBEC  48 00 03 10 */	b lbl_803DCEFC
lbl_803DCBF0:
/* 803DCBF0  28 1F 08 01 */	cmplwi r31, 0x801
/* 803DCBF4  38 00 00 00 */	li r0, 0
/* 803DCBF8  41 82 02 DC */	beq lbl_803DCED4
/* 803DCBFC  28 1F 08 06 */	cmplwi r31, 0x806
/* 803DCC00  41 82 02 D4 */	beq lbl_803DCED4
/* 803DCC04  28 1F 08 0E */	cmplwi r31, 0x80e
/* 803DCC08  41 82 02 CC */	beq lbl_803DCED4
/* 803DCC0C  28 1F 08 16 */	cmplwi r31, 0x816
/* 803DCC10  41 82 02 C4 */	beq lbl_803DCED4
/* 803DCC14  28 1F 08 1E */	cmplwi r31, 0x81e
/* 803DCC18  41 82 02 BC */	beq lbl_803DCED4
/* 803DCC1C  28 1F 08 26 */	cmplwi r31, 0x826
/* 803DCC20  41 82 02 B4 */	beq lbl_803DCED4
/* 803DCC24  28 1F 08 2E */	cmplwi r31, 0x82e
/* 803DCC28  41 82 02 AC */	beq lbl_803DCED4
/* 803DCC2C  28 1F 08 33 */	cmplwi r31, 0x833
/* 803DCC30  41 82 02 A4 */	beq lbl_803DCED4
/* 803DCC34  28 1F 08 38 */	cmplwi r31, 0x838
/* 803DCC38  41 82 02 9C */	beq lbl_803DCED4
/* 803DCC3C  28 1F 08 2E */	cmplwi r31, 0x82e
/* 803DCC40  41 82 02 94 */	beq lbl_803DCED4
/* 803DCC44  28 1F 08 33 */	cmplwi r31, 0x833
/* 803DCC48  41 82 02 8C */	beq lbl_803DCED4
/* 803DCC4C  28 1F 08 38 */	cmplwi r31, 0x838
/* 803DCC50  41 82 02 84 */	beq lbl_803DCED4
/* 803DCC54  28 1F 08 50 */	cmplwi r31, 0x850
/* 803DCC58  41 82 02 7C */	beq lbl_803DCED4
/* 803DCC5C  28 1F 08 55 */	cmplwi r31, 0x855
/* 803DCC60  41 82 02 74 */	beq lbl_803DCED4
/* 803DCC64  28 1F 08 5E */	cmplwi r31, 0x85e
/* 803DCC68  41 82 02 6C */	beq lbl_803DCED4
/* 803DCC6C  28 1F 08 64 */	cmplwi r31, 0x864
/* 803DCC70  41 82 02 64 */	beq lbl_803DCED4
/* 803DCC74  28 1F 08 02 */	cmplwi r31, 0x802
/* 803DCC78  41 82 02 5C */	beq lbl_803DCED4
/* 803DCC7C  28 1F 08 07 */	cmplwi r31, 0x807
/* 803DCC80  41 82 02 54 */	beq lbl_803DCED4
/* 803DCC84  28 1F 08 0F */	cmplwi r31, 0x80f
/* 803DCC88  41 82 02 4C */	beq lbl_803DCED4
/* 803DCC8C  28 1F 08 17 */	cmplwi r31, 0x817
/* 803DCC90  41 82 02 44 */	beq lbl_803DCED4
/* 803DCC94  28 1F 08 1F */	cmplwi r31, 0x81f
/* 803DCC98  41 82 02 3C */	beq lbl_803DCED4
/* 803DCC9C  28 1F 08 27 */	cmplwi r31, 0x827
/* 803DCCA0  41 82 02 34 */	beq lbl_803DCED4
/* 803DCCA4  28 1F 08 2F */	cmplwi r31, 0x82f
/* 803DCCA8  41 82 02 2C */	beq lbl_803DCED4
/* 803DCCAC  28 1F 08 34 */	cmplwi r31, 0x834
/* 803DCCB0  41 82 02 24 */	beq lbl_803DCED4
/* 803DCCB4  28 1F 08 39 */	cmplwi r31, 0x839
/* 803DCCB8  41 82 02 1C */	beq lbl_803DCED4
/* 803DCCBC  28 1F 08 2F */	cmplwi r31, 0x82f
/* 803DCCC0  41 82 02 14 */	beq lbl_803DCED4
/* 803DCCC4  28 1F 08 34 */	cmplwi r31, 0x834
/* 803DCCC8  41 82 02 0C */	beq lbl_803DCED4
/* 803DCCCC  28 1F 08 39 */	cmplwi r31, 0x839
/* 803DCCD0  41 82 02 04 */	beq lbl_803DCED4
/* 803DCCD4  28 1F 08 51 */	cmplwi r31, 0x851
/* 803DCCD8  41 82 01 FC */	beq lbl_803DCED4
/* 803DCCDC  28 1F 08 56 */	cmplwi r31, 0x856
/* 803DCCE0  41 82 01 F4 */	beq lbl_803DCED4
/* 803DCCE4  28 1F 08 5F */	cmplwi r31, 0x85f
/* 803DCCE8  41 82 01 EC */	beq lbl_803DCED4
/* 803DCCEC  28 1F 08 65 */	cmplwi r31, 0x865
/* 803DCCF0  41 82 01 E4 */	beq lbl_803DCED4
/* 803DCCF4  28 1F 08 03 */	cmplwi r31, 0x803
/* 803DCCF8  41 82 01 DC */	beq lbl_803DCED4
/* 803DCCFC  28 1F 08 08 */	cmplwi r31, 0x808
/* 803DCD00  41 82 01 D4 */	beq lbl_803DCED4
/* 803DCD04  28 1F 08 10 */	cmplwi r31, 0x810
/* 803DCD08  41 82 01 CC */	beq lbl_803DCED4
/* 803DCD0C  28 1F 08 18 */	cmplwi r31, 0x818
/* 803DCD10  41 82 01 C4 */	beq lbl_803DCED4
/* 803DCD14  28 1F 08 20 */	cmplwi r31, 0x820
/* 803DCD18  41 82 01 BC */	beq lbl_803DCED4
/* 803DCD1C  28 1F 08 28 */	cmplwi r31, 0x828
/* 803DCD20  41 82 01 B4 */	beq lbl_803DCED4
/* 803DCD24  28 1F 08 30 */	cmplwi r31, 0x830
/* 803DCD28  41 82 01 AC */	beq lbl_803DCED4
/* 803DCD2C  28 1F 08 35 */	cmplwi r31, 0x835
/* 803DCD30  41 82 01 A4 */	beq lbl_803DCED4
/* 803DCD34  28 1F 08 3A */	cmplwi r31, 0x83a
/* 803DCD38  41 82 01 9C */	beq lbl_803DCED4
/* 803DCD3C  28 1F 08 30 */	cmplwi r31, 0x830
/* 803DCD40  41 82 01 94 */	beq lbl_803DCED4
/* 803DCD44  28 1F 08 35 */	cmplwi r31, 0x835
/* 803DCD48  41 82 01 8C */	beq lbl_803DCED4
/* 803DCD4C  28 1F 08 3A */	cmplwi r31, 0x83a
/* 803DCD50  41 82 01 84 */	beq lbl_803DCED4
/* 803DCD54  28 1F 08 52 */	cmplwi r31, 0x852
/* 803DCD58  41 82 01 7C */	beq lbl_803DCED4
/* 803DCD5C  28 1F 08 57 */	cmplwi r31, 0x857
/* 803DCD60  41 82 01 74 */	beq lbl_803DCED4
/* 803DCD64  28 1F 08 60 */	cmplwi r31, 0x860
/* 803DCD68  41 82 01 6C */	beq lbl_803DCED4
/* 803DCD6C  28 1F 08 66 */	cmplwi r31, 0x866
/* 803DCD70  41 82 01 64 */	beq lbl_803DCED4
/* 803DCD74  28 1F 08 04 */	cmplwi r31, 0x804
/* 803DCD78  41 82 01 5C */	beq lbl_803DCED4
/* 803DCD7C  28 1F 08 0C */	cmplwi r31, 0x80c
/* 803DCD80  41 82 01 54 */	beq lbl_803DCED4
/* 803DCD84  28 1F 08 14 */	cmplwi r31, 0x814
/* 803DCD88  41 82 01 4C */	beq lbl_803DCED4
/* 803DCD8C  28 1F 08 1C */	cmplwi r31, 0x81c
/* 803DCD90  41 82 01 44 */	beq lbl_803DCED4
/* 803DCD94  28 1F 08 24 */	cmplwi r31, 0x824
/* 803DCD98  41 82 01 3C */	beq lbl_803DCED4
/* 803DCD9C  28 1F 08 2C */	cmplwi r31, 0x82c
/* 803DCDA0  41 82 01 34 */	beq lbl_803DCED4
/* 803DCDA4  28 1F 08 31 */	cmplwi r31, 0x831
/* 803DCDA8  41 82 01 2C */	beq lbl_803DCED4
/* 803DCDAC  28 1F 08 36 */	cmplwi r31, 0x836
/* 803DCDB0  41 82 01 24 */	beq lbl_803DCED4
/* 803DCDB4  28 1F 08 3B */	cmplwi r31, 0x83b
/* 803DCDB8  41 82 01 1C */	beq lbl_803DCED4
/* 803DCDBC  28 1F 08 53 */	cmplwi r31, 0x853
/* 803DCDC0  41 82 01 14 */	beq lbl_803DCED4
/* 803DCDC4  28 1F 08 5B */	cmplwi r31, 0x85b
/* 803DCDC8  41 82 01 0C */	beq lbl_803DCED4
/* 803DCDCC  28 1F 08 61 */	cmplwi r31, 0x861
/* 803DCDD0  41 82 01 04 */	beq lbl_803DCED4
/* 803DCDD4  28 1F 08 68 */	cmplwi r31, 0x868
/* 803DCDD8  41 82 00 FC */	beq lbl_803DCED4
/* 803DCDDC  28 1F 08 67 */	cmplwi r31, 0x867
/* 803DCDE0  41 82 00 F4 */	beq lbl_803DCED4
/* 803DCDE4  28 1F 08 09 */	cmplwi r31, 0x809
/* 803DCDE8  41 82 00 EC */	beq lbl_803DCED4
/* 803DCDEC  28 1F 08 11 */	cmplwi r31, 0x811
/* 803DCDF0  41 82 00 E4 */	beq lbl_803DCED4
/* 803DCDF4  28 1F 08 19 */	cmplwi r31, 0x819
/* 803DCDF8  41 82 00 DC */	beq lbl_803DCED4
/* 803DCDFC  28 1F 08 21 */	cmplwi r31, 0x821
/* 803DCE00  41 82 00 D4 */	beq lbl_803DCED4
/* 803DCE04  28 1F 08 29 */	cmplwi r31, 0x829
/* 803DCE08  41 82 00 CC */	beq lbl_803DCED4
/* 803DCE0C  28 1F 08 58 */	cmplwi r31, 0x858
/* 803DCE10  41 82 00 C4 */	beq lbl_803DCED4
/* 803DCE14  28 1F 08 0A */	cmplwi r31, 0x80a
/* 803DCE18  41 82 00 BC */	beq lbl_803DCED4
/* 803DCE1C  28 1F 08 12 */	cmplwi r31, 0x812
/* 803DCE20  41 82 00 B4 */	beq lbl_803DCED4
/* 803DCE24  28 1F 08 1A */	cmplwi r31, 0x81a
/* 803DCE28  41 82 00 AC */	beq lbl_803DCED4
/* 803DCE2C  28 1F 08 22 */	cmplwi r31, 0x822
/* 803DCE30  41 82 00 A4 */	beq lbl_803DCED4
/* 803DCE34  28 1F 08 2A */	cmplwi r31, 0x82a
/* 803DCE38  41 82 00 9C */	beq lbl_803DCED4
/* 803DCE3C  28 1F 08 59 */	cmplwi r31, 0x859
/* 803DCE40  41 82 00 94 */	beq lbl_803DCED4
/* 803DCE44  28 1F 08 0B */	cmplwi r31, 0x80b
/* 803DCE48  41 82 00 8C */	beq lbl_803DCED4
/* 803DCE4C  28 1F 08 13 */	cmplwi r31, 0x813
/* 803DCE50  41 82 00 84 */	beq lbl_803DCED4
/* 803DCE54  28 1F 08 1B */	cmplwi r31, 0x81b
/* 803DCE58  41 82 00 7C */	beq lbl_803DCED4
/* 803DCE5C  28 1F 08 23 */	cmplwi r31, 0x823
/* 803DCE60  41 82 00 74 */	beq lbl_803DCED4
/* 803DCE64  28 1F 08 2B */	cmplwi r31, 0x82b
/* 803DCE68  41 82 00 6C */	beq lbl_803DCED4
/* 803DCE6C  28 1F 08 5A */	cmplwi r31, 0x85a
/* 803DCE70  41 82 00 64 */	beq lbl_803DCED4
/* 803DCE74  28 1F 00 5E */	cmplwi r31, 0x5e
/* 803DCE78  41 82 00 5C */	beq lbl_803DCED4
/* 803DCE7C  28 1F 00 5F */	cmplwi r31, 0x5f
/* 803DCE80  41 82 00 54 */	beq lbl_803DCED4
/* 803DCE84  28 1F 00 60 */	cmplwi r31, 0x60
/* 803DCE88  41 82 00 4C */	beq lbl_803DCED4
/* 803DCE8C  28 1F 00 61 */	cmplwi r31, 0x61
/* 803DCE90  41 82 00 44 */	beq lbl_803DCED4
/* 803DCE94  28 1F 00 69 */	cmplwi r31, 0x69
/* 803DCE98  41 82 00 3C */	beq lbl_803DCED4
/* 803DCE9C  28 1F 00 78 */	cmplwi r31, 0x78
/* 803DCEA0  41 82 00 34 */	beq lbl_803DCED4
/* 803DCEA4  28 1F 00 79 */	cmplwi r31, 0x79
/* 803DCEA8  41 82 00 2C */	beq lbl_803DCED4
/* 803DCEAC  28 1F 00 7A */	cmplwi r31, 0x7a
/* 803DCEB0  41 82 00 24 */	beq lbl_803DCED4
/* 803DCEB4  28 1F 00 82 */	cmplwi r31, 0x82
/* 803DCEB8  41 82 00 1C */	beq lbl_803DCED4
/* 803DCEBC  28 1F 00 7F */	cmplwi r31, 0x7f
/* 803DCEC0  41 82 00 14 */	beq lbl_803DCED4
/* 803DCEC4  28 1F 00 80 */	cmplwi r31, 0x80
/* 803DCEC8  41 82 00 0C */	beq lbl_803DCED4
/* 803DCECC  28 1F 00 81 */	cmplwi r31, 0x81
/* 803DCED0  40 82 00 08 */	bne lbl_803DCED8
lbl_803DCED4:
/* 803DCED4  38 00 00 01 */	li r0, 1
lbl_803DCED8:
/* 803DCED8  2C 00 00 00 */	cmpwi r0, 0
/* 803DCEDC  41 82 00 0C */	beq lbl_803DCEE8
/* 803DCEE0  3B 80 00 01 */	li r28, 1
/* 803DCEE4  48 00 00 18 */	b lbl_803DCEFC
lbl_803DCEE8:
/* 803DCEE8  28 1F F1 02 */	cmplwi r31, 0xf102
/* 803DCEEC  40 82 00 0C */	bne lbl_803DCEF8
/* 803DCEF0  3B 00 00 01 */	li r24, 1
/* 803DCEF4  48 00 00 08 */	b lbl_803DCEFC
lbl_803DCEF8:
/* 803DCEF8  3A 20 00 00 */	li r17, 0
lbl_803DCEFC:
/* 803DCEFC  1E D6 00 0C */	mulli r22, r22, 0xc
/* 803DCF00  3A 81 03 80 */	addi r20, r1, 0x380
/* 803DCF04  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 803DCF08  7E 94 B2 14 */	add r20, r20, r22
/* 803DCF0C  80 B4 00 00 */	lwz r5, 0(r20)
/* 803DCF10  80 94 00 04 */	lwz r4, 4(r20)
/* 803DCF14  80 14 00 08 */	lwz r0, 8(r20)
/* 803DCF18  90 A1 01 D0 */	stw r5, 0x1d0(r1)
/* 803DCF1C  90 81 01 D4 */	stw r4, 0x1d4(r1)
/* 803DCF20  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 803DCF24  4B FB 29 B5 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 803DCF28  3A 61 03 84 */	addi r19, r1, 0x384
/* 803DCF2C  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DCF30  7C 33 B5 2E */	stfsx f1, r19, r22
/* 803DCF34  C0 23 2F E0 */	lfs f1, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DCF38  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 803DCF3C  80 B4 00 00 */	lwz r5, 0(r20)
/* 803DCF40  80 94 00 04 */	lwz r4, 4(r20)
/* 803DCF44  80 14 00 08 */	lwz r0, 8(r20)
/* 803DCF48  90 A1 01 C4 */	stw r5, 0x1c4(r1)
/* 803DCF4C  90 81 01 C8 */	stw r4, 0x1c8(r1)
/* 803DCF50  90 01 01 CC */	stw r0, 0x1cc(r1)
/* 803DCF54  4B FB 2A 45 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803DCF58  7C 53 B4 2E */	lfsx f2, r19, r22
/* 803DCF5C  2C 11 00 00 */	cmpwi r17, 0
/* 803DCF60  C0 15 00 2C */	lfs f0, 0x2c(r21)
/* 803DCF64  80 74 00 00 */	lwz r3, 0(r20)
/* 803DCF68  EC 22 08 28 */	fsubs f1, f2, f1
/* 803DCF6C  80 14 00 04 */	lwz r0, 4(r20)
/* 803DCF70  EF E2 00 28 */	fsubs f31, f2, f0
/* 803DCF74  90 7E 00 00 */	stw r3, 0(r30)
/* 803DCF78  90 1E 00 04 */	stw r0, 4(r30)
/* 803DCF7C  80 14 00 08 */	lwz r0, 8(r20)
/* 803DCF80  90 1E 00 08 */	stw r0, 8(r30)
/* 803DCF84  41 82 00 14 */	beq lbl_803DCF98
/* 803DCF88  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 803DCF8C  40 81 00 0C */	ble lbl_803DCF98
/* 803DCF90  38 60 00 3C */	li r3, 0x3c
/* 803DCF94  48 00 08 74 */	b lbl_803DD808
lbl_803DCF98:
/* 803DCF98  2C 11 00 00 */	cmpwi r17, 0
/* 803DCF9C  41 82 00 18 */	beq lbl_803DCFB4
/* 803DCFA0  FC 00 08 50 */	fneg f0, f1
/* 803DCFA4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803DCFA8  40 80 00 0C */	bge lbl_803DCFB4
/* 803DCFAC  38 60 00 3D */	li r3, 0x3d
/* 803DCFB0  48 00 08 58 */	b lbl_803DD808
lbl_803DCFB4:
/* 803DCFB4  2C 11 00 00 */	cmpwi r17, 0
/* 803DCFB8  40 82 00 1C */	bne lbl_803DCFD4
/* 803DCFBC  3C 60 80 64 */	lis r3, lit_2089@ha /* 0x80643050@ha */
/* 803DCFC0  C0 03 30 50 */	lfs f0, lit_2089@l(r3)  /* 0x80643050@l */
/* 803DCFC4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803DCFC8  40 81 00 0C */	ble lbl_803DCFD4
/* 803DCFCC  38 60 00 3C */	li r3, 0x3c
/* 803DCFD0  48 00 08 38 */	b lbl_803DD808
lbl_803DCFD4:
/* 803DCFD4  2C 11 00 00 */	cmpwi r17, 0
/* 803DCFD8  40 82 00 1C */	bne lbl_803DCFF4
/* 803DCFDC  3C 60 80 64 */	lis r3, lit_2090@ha /* 0x80643054@ha */
/* 803DCFE0  C0 03 30 54 */	lfs f0, lit_2090@l(r3)  /* 0x80643054@l */
/* 803DCFE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803DCFE8  40 80 00 0C */	bge lbl_803DCFF4
/* 803DCFEC  38 60 00 3D */	li r3, 0x3d
/* 803DCFF0  48 00 08 18 */	b lbl_803DD808
lbl_803DCFF4:
/* 803DCFF4  2C 12 00 00 */	cmpwi r18, 0
/* 803DCFF8  40 82 00 1C */	bne lbl_803DD014
/* 803DCFFC  2C 1D 00 00 */	cmpwi r29, 0
/* 803DD000  40 82 00 14 */	bne lbl_803DD014
/* 803DD004  2C 1C 00 00 */	cmpwi r28, 0
/* 803DD008  40 82 00 0C */	bne lbl_803DD014
/* 803DD00C  2C 18 00 00 */	cmpwi r24, 0
/* 803DD010  41 82 00 3C */	beq lbl_803DD04C
lbl_803DD014:
/* 803DD014  80 9E 00 00 */	lwz r4, 0(r30)
/* 803DD018  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DD01C  80 1E 00 04 */	lwz r0, 4(r30)
/* 803DD020  C0 23 2F E0 */	lfs f1, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DD024  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 803DD028  90 81 01 B8 */	stw r4, 0x1b8(r1)
/* 803DD02C  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 803DD030  80 1E 00 08 */	lwz r0, 8(r30)
/* 803DD034  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 803DD038  4B FB 29 61 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803DD03C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 803DD040  C0 3E 00 04 */	lfs f1, 4(r30)
/* 803DD044  C0 15 00 2C */	lfs f0, 0x2c(r21)
/* 803DD048  EF E1 00 28 */	fsubs f31, f1, f0
lbl_803DD04C:
/* 803DD04C  80 D5 00 2C */	lwz r6, 0x2c(r21)
/* 803DD050  3C 60 80 64 */	lis r3, lit_2091@ha /* 0x80643058@ha */
/* 803DD054  80 9E 00 04 */	lwz r4, 4(r30)
/* 803DD058  2C 12 00 00 */	cmpwi r18, 0
/* 803DD05C  90 C1 02 7C */	stw r6, 0x27c(r1)
/* 803DD060  81 35 00 28 */	lwz r9, 0x28(r21)
/* 803DD064  90 81 02 70 */	stw r4, 0x270(r1)
/* 803DD068  C0 01 02 7C */	lfs f0, 0x27c(r1)
/* 803DD06C  90 C1 02 58 */	stw r6, 0x258(r1)
/* 803DD070  C0 83 30 58 */	lfs f4, lit_2091@l(r3)  /* 0x80643058@l */
/* 803DD074  C0 41 02 70 */	lfs f2, 0x270(r1)
/* 803DD078  81 15 00 30 */	lwz r8, 0x30(r21)
/* 803DD07C  EC 60 20 2A */	fadds f3, f0, f4
/* 803DD080  80 BE 00 00 */	lwz r5, 0(r30)
/* 803DD084  EC 42 20 2A */	fadds f2, f2, f4
/* 803DD088  80 1E 00 08 */	lwz r0, 8(r30)
/* 803DD08C  90 81 02 4C */	stw r4, 0x24c(r1)
/* 803DD090  C0 21 02 58 */	lfs f1, 0x258(r1)
/* 803DD094  C0 01 02 4C */	lfs f0, 0x24c(r1)
/* 803DD098  EC 21 20 28 */	fsubs f1, f1, f4
/* 803DD09C  91 21 00 20 */	stw r9, 0x20(r1)
/* 803DD0A0  EC 00 20 28 */	fsubs f0, f0, f4
/* 803DD0A4  90 C1 00 24 */	stw r6, 0x24(r1)
/* 803DD0A8  91 01 00 28 */	stw r8, 0x28(r1)
/* 803DD0AC  91 21 02 78 */	stw r9, 0x278(r1)
/* 803DD0B0  91 01 02 80 */	stw r8, 0x280(r1)
/* 803DD0B4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803DD0B8  90 81 00 18 */	stw r4, 0x18(r1)
/* 803DD0BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803DD0C0  90 A1 02 6C */	stw r5, 0x26c(r1)
/* 803DD0C4  90 01 02 74 */	stw r0, 0x274(r1)
/* 803DD0C8  91 21 02 54 */	stw r9, 0x254(r1)
/* 803DD0CC  91 01 02 5C */	stw r8, 0x25c(r1)
/* 803DD0D0  90 A1 02 48 */	stw r5, 0x248(r1)
/* 803DD0D4  90 01 02 50 */	stw r0, 0x250(r1)
/* 803DD0D8  D0 61 02 7C */	stfs f3, 0x27c(r1)
/* 803DD0DC  D0 41 02 70 */	stfs f2, 0x270(r1)
/* 803DD0E0  D0 21 02 58 */	stfs f1, 0x258(r1)
/* 803DD0E4  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 803DD0E8  41 82 01 28 */	beq lbl_803DD210
/* 803DD0EC  80 E1 02 70 */	lwz r7, 0x270(r1)
/* 803DD0F0  3C 60 80 3D */	lis r3, mNT_ItIsStump@ha /* 0x803C96C8@ha */
/* 803DD0F4  81 41 02 7C */	lwz r10, 0x27c(r1)
/* 803DD0F8  38 C3 96 C8 */	addi r6, r3, mNT_ItIsStump@l /* 0x803C96C8@l */
/* 803DD0FC  90 A1 01 A0 */	stw r5, 0x1a0(r1)
/* 803DD100  38 61 02 60 */	addi r3, r1, 0x260
/* 803DD104  38 81 01 AC */	addi r4, r1, 0x1ac
/* 803DD108  38 A1 01 A0 */	addi r5, r1, 0x1a0
/* 803DD10C  90 E1 01 A4 */	stw r7, 0x1a4(r1)
/* 803DD110  38 E0 00 01 */	li r7, 1
/* 803DD114  90 01 01 A8 */	stw r0, 0x1a8(r1)
/* 803DD118  91 21 01 AC */	stw r9, 0x1ac(r1)
/* 803DD11C  91 41 01 B0 */	stw r10, 0x1b0(r1)
/* 803DD120  91 01 01 B4 */	stw r8, 0x1b4(r1)
/* 803DD124  4B FB 69 79 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD128  80 E1 02 78 */	lwz r7, 0x278(r1)
/* 803DD12C  3C 60 80 3D */	lis r3, mNT_ItIsStump@ha /* 0x803C96C8@ha */
/* 803DD130  81 61 02 7C */	lwz r11, 0x27c(r1)
/* 803DD134  38 C3 96 C8 */	addi r6, r3, mNT_ItIsStump@l /* 0x803C96C8@l */
/* 803DD138  81 41 02 80 */	lwz r10, 0x280(r1)
/* 803DD13C  38 61 02 30 */	addi r3, r1, 0x230
/* 803DD140  81 21 02 6C */	lwz r9, 0x26c(r1)
/* 803DD144  38 81 01 94 */	addi r4, r1, 0x194
/* 803DD148  81 01 02 70 */	lwz r8, 0x270(r1)
/* 803DD14C  38 A1 01 88 */	addi r5, r1, 0x188
/* 803DD150  80 01 02 74 */	lwz r0, 0x274(r1)
/* 803DD154  90 E1 01 88 */	stw r7, 0x188(r1)
/* 803DD158  38 E0 00 01 */	li r7, 1
/* 803DD15C  91 61 01 8C */	stw r11, 0x18c(r1)
/* 803DD160  91 41 01 90 */	stw r10, 0x190(r1)
/* 803DD164  91 21 01 94 */	stw r9, 0x194(r1)
/* 803DD168  91 01 01 98 */	stw r8, 0x198(r1)
/* 803DD16C  90 01 01 9C */	stw r0, 0x19c(r1)
/* 803DD170  4B FB 69 2D */	bl mCoBG_LineCheck_RemoveFg
/* 803DD174  80 E1 02 48 */	lwz r7, 0x248(r1)
/* 803DD178  3C 60 80 3D */	lis r3, mNT_ItIsStump@ha /* 0x803C96C8@ha */
/* 803DD17C  81 61 02 4C */	lwz r11, 0x24c(r1)
/* 803DD180  38 C3 96 C8 */	addi r6, r3, mNT_ItIsStump@l /* 0x803C96C8@l */
/* 803DD184  81 41 02 50 */	lwz r10, 0x250(r1)
/* 803DD188  38 61 02 3C */	addi r3, r1, 0x23c
/* 803DD18C  81 21 02 54 */	lwz r9, 0x254(r1)
/* 803DD190  38 81 01 7C */	addi r4, r1, 0x17c
/* 803DD194  81 01 02 58 */	lwz r8, 0x258(r1)
/* 803DD198  38 A1 01 70 */	addi r5, r1, 0x170
/* 803DD19C  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 803DD1A0  90 E1 01 70 */	stw r7, 0x170(r1)
/* 803DD1A4  38 E0 00 01 */	li r7, 1
/* 803DD1A8  91 61 01 74 */	stw r11, 0x174(r1)
/* 803DD1AC  91 41 01 78 */	stw r10, 0x178(r1)
/* 803DD1B0  91 21 01 7C */	stw r9, 0x17c(r1)
/* 803DD1B4  91 01 01 80 */	stw r8, 0x180(r1)
/* 803DD1B8  90 01 01 84 */	stw r0, 0x184(r1)
/* 803DD1BC  4B FB 68 E1 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD1C0  80 E1 02 54 */	lwz r7, 0x254(r1)
/* 803DD1C4  3C 60 80 3D */	lis r3, mNT_ItIsStump@ha /* 0x803C96C8@ha */
/* 803DD1C8  81 61 02 58 */	lwz r11, 0x258(r1)
/* 803DD1CC  38 C3 96 C8 */	addi r6, r3, mNT_ItIsStump@l /* 0x803C96C8@l */
/* 803DD1D0  81 41 02 5C */	lwz r10, 0x25c(r1)
/* 803DD1D4  38 61 02 24 */	addi r3, r1, 0x224
/* 803DD1D8  81 21 02 48 */	lwz r9, 0x248(r1)
/* 803DD1DC  38 81 01 64 */	addi r4, r1, 0x164
/* 803DD1E0  81 01 02 4C */	lwz r8, 0x24c(r1)
/* 803DD1E4  38 A1 01 58 */	addi r5, r1, 0x158
/* 803DD1E8  80 01 02 50 */	lwz r0, 0x250(r1)
/* 803DD1EC  90 E1 01 58 */	stw r7, 0x158(r1)
/* 803DD1F0  38 E0 00 01 */	li r7, 1
/* 803DD1F4  91 61 01 5C */	stw r11, 0x15c(r1)
/* 803DD1F8  91 41 01 60 */	stw r10, 0x160(r1)
/* 803DD1FC  91 21 01 64 */	stw r9, 0x164(r1)
/* 803DD200  91 01 01 68 */	stw r8, 0x168(r1)
/* 803DD204  90 01 01 6C */	stw r0, 0x16c(r1)
/* 803DD208  4B FB 68 95 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD20C  48 00 03 74 */	b lbl_803DD580
lbl_803DD210:
/* 803DD210  2C 1D 00 00 */	cmpwi r29, 0
/* 803DD214  41 82 01 28 */	beq lbl_803DD33C
/* 803DD218  80 E1 02 70 */	lwz r7, 0x270(r1)
/* 803DD21C  3C 60 80 3D */	lis r3, mNT_ItIsStoneCoin10@ha /* 0x803C9728@ha */
/* 803DD220  81 41 02 7C */	lwz r10, 0x27c(r1)
/* 803DD224  38 C3 97 28 */	addi r6, r3, mNT_ItIsStoneCoin10@l /* 0x803C9728@l */
/* 803DD228  90 A1 01 40 */	stw r5, 0x140(r1)
/* 803DD22C  38 61 02 60 */	addi r3, r1, 0x260
/* 803DD230  38 81 01 4C */	addi r4, r1, 0x14c
/* 803DD234  38 A1 01 40 */	addi r5, r1, 0x140
/* 803DD238  90 E1 01 44 */	stw r7, 0x144(r1)
/* 803DD23C  38 E0 00 01 */	li r7, 1
/* 803DD240  90 01 01 48 */	stw r0, 0x148(r1)
/* 803DD244  91 21 01 4C */	stw r9, 0x14c(r1)
/* 803DD248  91 41 01 50 */	stw r10, 0x150(r1)
/* 803DD24C  91 01 01 54 */	stw r8, 0x154(r1)
/* 803DD250  4B FB 68 4D */	bl mCoBG_LineCheck_RemoveFg
/* 803DD254  80 E1 02 78 */	lwz r7, 0x278(r1)
/* 803DD258  3C 60 80 3D */	lis r3, mNT_ItIsStoneCoin10@ha /* 0x803C9728@ha */
/* 803DD25C  81 61 02 7C */	lwz r11, 0x27c(r1)
/* 803DD260  38 C3 97 28 */	addi r6, r3, mNT_ItIsStoneCoin10@l /* 0x803C9728@l */
/* 803DD264  81 41 02 80 */	lwz r10, 0x280(r1)
/* 803DD268  38 61 02 30 */	addi r3, r1, 0x230
/* 803DD26C  81 21 02 6C */	lwz r9, 0x26c(r1)
/* 803DD270  38 81 01 34 */	addi r4, r1, 0x134
/* 803DD274  81 01 02 70 */	lwz r8, 0x270(r1)
/* 803DD278  38 A1 01 28 */	addi r5, r1, 0x128
/* 803DD27C  80 01 02 74 */	lwz r0, 0x274(r1)
/* 803DD280  90 E1 01 28 */	stw r7, 0x128(r1)
/* 803DD284  38 E0 00 01 */	li r7, 1
/* 803DD288  91 61 01 2C */	stw r11, 0x12c(r1)
/* 803DD28C  91 41 01 30 */	stw r10, 0x130(r1)
/* 803DD290  91 21 01 34 */	stw r9, 0x134(r1)
/* 803DD294  91 01 01 38 */	stw r8, 0x138(r1)
/* 803DD298  90 01 01 3C */	stw r0, 0x13c(r1)
/* 803DD29C  4B FB 68 01 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD2A0  80 E1 02 48 */	lwz r7, 0x248(r1)
/* 803DD2A4  3C 60 80 3D */	lis r3, mNT_ItIsStoneCoin10@ha /* 0x803C9728@ha */
/* 803DD2A8  81 61 02 4C */	lwz r11, 0x24c(r1)
/* 803DD2AC  38 C3 97 28 */	addi r6, r3, mNT_ItIsStoneCoin10@l /* 0x803C9728@l */
/* 803DD2B0  81 41 02 50 */	lwz r10, 0x250(r1)
/* 803DD2B4  38 61 02 3C */	addi r3, r1, 0x23c
/* 803DD2B8  81 21 02 54 */	lwz r9, 0x254(r1)
/* 803DD2BC  38 81 01 1C */	addi r4, r1, 0x11c
/* 803DD2C0  81 01 02 58 */	lwz r8, 0x258(r1)
/* 803DD2C4  38 A1 01 10 */	addi r5, r1, 0x110
/* 803DD2C8  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 803DD2CC  90 E1 01 10 */	stw r7, 0x110(r1)
/* 803DD2D0  38 E0 00 01 */	li r7, 1
/* 803DD2D4  91 61 01 14 */	stw r11, 0x114(r1)
/* 803DD2D8  91 41 01 18 */	stw r10, 0x118(r1)
/* 803DD2DC  91 21 01 1C */	stw r9, 0x11c(r1)
/* 803DD2E0  91 01 01 20 */	stw r8, 0x120(r1)
/* 803DD2E4  90 01 01 24 */	stw r0, 0x124(r1)
/* 803DD2E8  4B FB 67 B5 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD2EC  80 E1 02 54 */	lwz r7, 0x254(r1)
/* 803DD2F0  3C 60 80 3D */	lis r3, mNT_ItIsStoneCoin10@ha /* 0x803C9728@ha */
/* 803DD2F4  81 61 02 58 */	lwz r11, 0x258(r1)
/* 803DD2F8  38 C3 97 28 */	addi r6, r3, mNT_ItIsStoneCoin10@l /* 0x803C9728@l */
/* 803DD2FC  81 41 02 5C */	lwz r10, 0x25c(r1)
/* 803DD300  38 61 02 24 */	addi r3, r1, 0x224
/* 803DD304  81 21 02 48 */	lwz r9, 0x248(r1)
/* 803DD308  38 81 01 04 */	addi r4, r1, 0x104
/* 803DD30C  81 01 02 4C */	lwz r8, 0x24c(r1)
/* 803DD310  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 803DD314  80 01 02 50 */	lwz r0, 0x250(r1)
/* 803DD318  90 E1 00 F8 */	stw r7, 0xf8(r1)
/* 803DD31C  38 E0 00 01 */	li r7, 1
/* 803DD320  91 61 00 FC */	stw r11, 0xfc(r1)
/* 803DD324  91 41 01 00 */	stw r10, 0x100(r1)
/* 803DD328  91 21 01 04 */	stw r9, 0x104(r1)
/* 803DD32C  91 01 01 08 */	stw r8, 0x108(r1)
/* 803DD330  90 01 01 0C */	stw r0, 0x10c(r1)
/* 803DD334  4B FB 67 69 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD338  48 00 02 48 */	b lbl_803DD580
lbl_803DD33C:
/* 803DD33C  2C 18 00 00 */	cmpwi r24, 0
/* 803DD340  41 82 01 28 */	beq lbl_803DD468
/* 803DD344  80 E1 02 70 */	lwz r7, 0x270(r1)
/* 803DD348  3C 60 80 3D */	lis r3, mNT_ItIsReserveDummy@ha /* 0x803C9750@ha */
/* 803DD34C  81 41 02 7C */	lwz r10, 0x27c(r1)
/* 803DD350  38 C3 97 50 */	addi r6, r3, mNT_ItIsReserveDummy@l /* 0x803C9750@l */
/* 803DD354  90 A1 00 E0 */	stw r5, 0xe0(r1)
/* 803DD358  38 61 02 60 */	addi r3, r1, 0x260
/* 803DD35C  38 81 00 EC */	addi r4, r1, 0xec
/* 803DD360  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 803DD364  90 E1 00 E4 */	stw r7, 0xe4(r1)
/* 803DD368  38 E0 00 01 */	li r7, 1
/* 803DD36C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 803DD370  91 21 00 EC */	stw r9, 0xec(r1)
/* 803DD374  91 41 00 F0 */	stw r10, 0xf0(r1)
/* 803DD378  91 01 00 F4 */	stw r8, 0xf4(r1)
/* 803DD37C  4B FB 67 21 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD380  80 E1 02 78 */	lwz r7, 0x278(r1)
/* 803DD384  3C 60 80 3D */	lis r3, mNT_ItIsReserveDummy@ha /* 0x803C9750@ha */
/* 803DD388  81 61 02 7C */	lwz r11, 0x27c(r1)
/* 803DD38C  38 C3 97 50 */	addi r6, r3, mNT_ItIsReserveDummy@l /* 0x803C9750@l */
/* 803DD390  81 41 02 80 */	lwz r10, 0x280(r1)
/* 803DD394  38 61 02 30 */	addi r3, r1, 0x230
/* 803DD398  81 21 02 6C */	lwz r9, 0x26c(r1)
/* 803DD39C  38 81 00 D4 */	addi r4, r1, 0xd4
/* 803DD3A0  81 01 02 70 */	lwz r8, 0x270(r1)
/* 803DD3A4  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 803DD3A8  80 01 02 74 */	lwz r0, 0x274(r1)
/* 803DD3AC  90 E1 00 C8 */	stw r7, 0xc8(r1)
/* 803DD3B0  38 E0 00 01 */	li r7, 1
/* 803DD3B4  91 61 00 CC */	stw r11, 0xcc(r1)
/* 803DD3B8  91 41 00 D0 */	stw r10, 0xd0(r1)
/* 803DD3BC  91 21 00 D4 */	stw r9, 0xd4(r1)
/* 803DD3C0  91 01 00 D8 */	stw r8, 0xd8(r1)
/* 803DD3C4  90 01 00 DC */	stw r0, 0xdc(r1)
/* 803DD3C8  4B FB 66 D5 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD3CC  80 E1 02 48 */	lwz r7, 0x248(r1)
/* 803DD3D0  3C 60 80 3D */	lis r3, mNT_ItIsReserveDummy@ha /* 0x803C9750@ha */
/* 803DD3D4  81 61 02 4C */	lwz r11, 0x24c(r1)
/* 803DD3D8  38 C3 97 50 */	addi r6, r3, mNT_ItIsReserveDummy@l /* 0x803C9750@l */
/* 803DD3DC  81 41 02 50 */	lwz r10, 0x250(r1)
/* 803DD3E0  38 61 02 3C */	addi r3, r1, 0x23c
/* 803DD3E4  81 21 02 54 */	lwz r9, 0x254(r1)
/* 803DD3E8  38 81 00 BC */	addi r4, r1, 0xbc
/* 803DD3EC  81 01 02 58 */	lwz r8, 0x258(r1)
/* 803DD3F0  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 803DD3F4  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 803DD3F8  90 E1 00 B0 */	stw r7, 0xb0(r1)
/* 803DD3FC  38 E0 00 01 */	li r7, 1
/* 803DD400  91 61 00 B4 */	stw r11, 0xb4(r1)
/* 803DD404  91 41 00 B8 */	stw r10, 0xb8(r1)
/* 803DD408  91 21 00 BC */	stw r9, 0xbc(r1)
/* 803DD40C  91 01 00 C0 */	stw r8, 0xc0(r1)
/* 803DD410  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 803DD414  4B FB 66 89 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD418  80 E1 02 54 */	lwz r7, 0x254(r1)
/* 803DD41C  3C 60 80 3D */	lis r3, mNT_ItIsReserveDummy@ha /* 0x803C9750@ha */
/* 803DD420  81 61 02 58 */	lwz r11, 0x258(r1)
/* 803DD424  38 C3 97 50 */	addi r6, r3, mNT_ItIsReserveDummy@l /* 0x803C9750@l */
/* 803DD428  81 41 02 5C */	lwz r10, 0x25c(r1)
/* 803DD42C  38 61 02 24 */	addi r3, r1, 0x224
/* 803DD430  81 21 02 48 */	lwz r9, 0x248(r1)
/* 803DD434  38 81 00 A4 */	addi r4, r1, 0xa4
/* 803DD438  81 01 02 4C */	lwz r8, 0x24c(r1)
/* 803DD43C  38 A1 00 98 */	addi r5, r1, 0x98
/* 803DD440  80 01 02 50 */	lwz r0, 0x250(r1)
/* 803DD444  90 E1 00 98 */	stw r7, 0x98(r1)
/* 803DD448  38 E0 00 01 */	li r7, 1
/* 803DD44C  91 61 00 9C */	stw r11, 0x9c(r1)
/* 803DD450  91 41 00 A0 */	stw r10, 0xa0(r1)
/* 803DD454  91 21 00 A4 */	stw r9, 0xa4(r1)
/* 803DD458  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 803DD45C  90 01 00 AC */	stw r0, 0xac(r1)
/* 803DD460  4B FB 66 3D */	bl mCoBG_LineCheck_RemoveFg
/* 803DD464  48 00 01 1C */	b lbl_803DD580
lbl_803DD468:
/* 803DD468  2C 1C 00 00 */	cmpwi r28, 0
/* 803DD46C  40 82 01 14 */	bne lbl_803DD580
/* 803DD470  81 61 02 70 */	lwz r11, 0x270(r1)
/* 803DD474  38 61 02 60 */	addi r3, r1, 0x260
/* 803DD478  81 41 02 7C */	lwz r10, 0x27c(r1)
/* 803DD47C  38 81 00 8C */	addi r4, r1, 0x8c
/* 803DD480  90 A1 00 80 */	stw r5, 0x80(r1)
/* 803DD484  38 A1 00 80 */	addi r5, r1, 0x80
/* 803DD488  38 C0 00 00 */	li r6, 0
/* 803DD48C  38 E0 00 01 */	li r7, 1
/* 803DD490  91 61 00 84 */	stw r11, 0x84(r1)
/* 803DD494  90 01 00 88 */	stw r0, 0x88(r1)
/* 803DD498  91 21 00 8C */	stw r9, 0x8c(r1)
/* 803DD49C  91 41 00 90 */	stw r10, 0x90(r1)
/* 803DD4A0  91 01 00 94 */	stw r8, 0x94(r1)
/* 803DD4A4  4B FB 65 F9 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD4A8  81 81 02 78 */	lwz r12, 0x278(r1)
/* 803DD4AC  38 61 02 30 */	addi r3, r1, 0x230
/* 803DD4B0  81 61 02 7C */	lwz r11, 0x27c(r1)
/* 803DD4B4  38 81 00 74 */	addi r4, r1, 0x74
/* 803DD4B8  81 41 02 80 */	lwz r10, 0x280(r1)
/* 803DD4BC  38 A1 00 68 */	addi r5, r1, 0x68
/* 803DD4C0  81 21 02 6C */	lwz r9, 0x26c(r1)
/* 803DD4C4  38 C0 00 00 */	li r6, 0
/* 803DD4C8  81 01 02 70 */	lwz r8, 0x270(r1)
/* 803DD4CC  38 E0 00 01 */	li r7, 1
/* 803DD4D0  80 01 02 74 */	lwz r0, 0x274(r1)
/* 803DD4D4  91 81 00 68 */	stw r12, 0x68(r1)
/* 803DD4D8  91 61 00 6C */	stw r11, 0x6c(r1)
/* 803DD4DC  91 41 00 70 */	stw r10, 0x70(r1)
/* 803DD4E0  91 21 00 74 */	stw r9, 0x74(r1)
/* 803DD4E4  91 01 00 78 */	stw r8, 0x78(r1)
/* 803DD4E8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 803DD4EC  4B FB 65 B1 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD4F0  81 81 02 48 */	lwz r12, 0x248(r1)
/* 803DD4F4  38 61 02 3C */	addi r3, r1, 0x23c
/* 803DD4F8  81 61 02 4C */	lwz r11, 0x24c(r1)
/* 803DD4FC  38 81 00 5C */	addi r4, r1, 0x5c
/* 803DD500  81 41 02 50 */	lwz r10, 0x250(r1)
/* 803DD504  38 A1 00 50 */	addi r5, r1, 0x50
/* 803DD508  81 21 02 54 */	lwz r9, 0x254(r1)
/* 803DD50C  38 C0 00 00 */	li r6, 0
/* 803DD510  81 01 02 58 */	lwz r8, 0x258(r1)
/* 803DD514  38 E0 00 01 */	li r7, 1
/* 803DD518  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 803DD51C  91 81 00 50 */	stw r12, 0x50(r1)
/* 803DD520  91 61 00 54 */	stw r11, 0x54(r1)
/* 803DD524  91 41 00 58 */	stw r10, 0x58(r1)
/* 803DD528  91 21 00 5C */	stw r9, 0x5c(r1)
/* 803DD52C  91 01 00 60 */	stw r8, 0x60(r1)
/* 803DD530  90 01 00 64 */	stw r0, 0x64(r1)
/* 803DD534  4B FB 65 69 */	bl mCoBG_LineCheck_RemoveFg
/* 803DD538  81 81 02 54 */	lwz r12, 0x254(r1)
/* 803DD53C  38 61 02 24 */	addi r3, r1, 0x224
/* 803DD540  81 61 02 58 */	lwz r11, 0x258(r1)
/* 803DD544  38 81 00 44 */	addi r4, r1, 0x44
/* 803DD548  81 41 02 5C */	lwz r10, 0x25c(r1)
/* 803DD54C  38 A1 00 38 */	addi r5, r1, 0x38
/* 803DD550  81 21 02 48 */	lwz r9, 0x248(r1)
/* 803DD554  38 C0 00 00 */	li r6, 0
/* 803DD558  81 01 02 4C */	lwz r8, 0x24c(r1)
/* 803DD55C  38 E0 00 01 */	li r7, 1
/* 803DD560  80 01 02 50 */	lwz r0, 0x250(r1)
/* 803DD564  91 81 00 38 */	stw r12, 0x38(r1)
/* 803DD568  91 61 00 3C */	stw r11, 0x3c(r1)
/* 803DD56C  91 41 00 40 */	stw r10, 0x40(r1)
/* 803DD570  91 21 00 44 */	stw r9, 0x44(r1)
/* 803DD574  91 01 00 48 */	stw r8, 0x48(r1)
/* 803DD578  90 01 00 4C */	stw r0, 0x4c(r1)
/* 803DD57C  4B FB 65 21 */	bl mCoBG_LineCheck_RemoveFg
lbl_803DD580:
/* 803DD580  2C 1C 00 00 */	cmpwi r28, 0
/* 803DD584  40 82 00 D8 */	bne lbl_803DD65C
/* 803DD588  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DD58C  C0 01 02 60 */	lfs f0, 0x260(r1)
/* 803DD590  C0 23 2F E0 */	lfs f1, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DD594  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD598  40 82 00 1C */	bne lbl_803DD5B4
/* 803DD59C  C0 01 02 64 */	lfs f0, 0x264(r1)
/* 803DD5A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD5A4  40 82 00 10 */	bne lbl_803DD5B4
/* 803DD5A8  C0 01 02 68 */	lfs f0, 0x268(r1)
/* 803DD5AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD5B0  41 82 00 30 */	beq lbl_803DD5E0
lbl_803DD5B4:
/* 803DD5B4  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DD5B8  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 803DD5BC  C0 23 2F E0 */	lfs f1, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DD5C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD5C4  40 82 00 74 */	bne lbl_803DD638
/* 803DD5C8  C0 01 02 40 */	lfs f0, 0x240(r1)
/* 803DD5CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD5D0  40 82 00 68 */	bne lbl_803DD638
/* 803DD5D4  C0 01 02 44 */	lfs f0, 0x244(r1)
/* 803DD5D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD5DC  40 82 00 5C */	bne lbl_803DD638
lbl_803DD5E0:
/* 803DD5E0  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DD5E4  C0 01 02 30 */	lfs f0, 0x230(r1)
/* 803DD5E8  C0 23 2F E0 */	lfs f1, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DD5EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD5F0  40 82 00 1C */	bne lbl_803DD60C
/* 803DD5F4  C0 01 02 34 */	lfs f0, 0x234(r1)
/* 803DD5F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD5FC  40 82 00 10 */	bne lbl_803DD60C
/* 803DD600  C0 01 02 38 */	lfs f0, 0x238(r1)
/* 803DD604  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD608  41 82 00 54 */	beq lbl_803DD65C
lbl_803DD60C:
/* 803DD60C  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DD610  C0 01 02 24 */	lfs f0, 0x224(r1)
/* 803DD614  C0 23 2F E0 */	lfs f1, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DD618  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD61C  40 82 00 1C */	bne lbl_803DD638
/* 803DD620  C0 01 02 28 */	lfs f0, 0x228(r1)
/* 803DD624  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD628  40 82 00 10 */	bne lbl_803DD638
/* 803DD62C  C0 01 02 2C */	lfs f0, 0x22c(r1)
/* 803DD630  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803DD634  41 82 00 28 */	beq lbl_803DD65C
lbl_803DD638:
/* 803DD638  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DD63C  C0 03 2F E0 */	lfs f0, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DD640  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803DD644  4C 41 13 82 */	cror 2, 1, 2
/* 803DD648  40 82 00 0C */	bne lbl_803DD654
/* 803DD64C  38 60 00 3C */	li r3, 0x3c
/* 803DD650  48 00 01 B8 */	b lbl_803DD808
lbl_803DD654:
/* 803DD654  38 60 00 3D */	li r3, 0x3d
/* 803DD658  48 00 01 B0 */	b lbl_803DD808
lbl_803DD65C:
/* 803DD65C  80 DE 00 00 */	lwz r6, 0(r30)
/* 803DD660  7E E5 BB 78 */	mr r5, r23
/* 803DD664  80 1E 00 04 */	lwz r0, 4(r30)
/* 803DD668  38 61 00 08 */	addi r3, r1, 8
/* 803DD66C  38 81 00 2C */	addi r4, r1, 0x2c
/* 803DD670  3A 20 00 00 */	li r17, 0
/* 803DD674  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 803DD678  90 01 00 30 */	stw r0, 0x30(r1)
/* 803DD67C  80 1E 00 08 */	lwz r0, 8(r30)
/* 803DD680  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DD684  4B FC BD 7D */	bl mFI_GetDigStatus
/* 803DD688  3C 80 80 64 */	lis r4, lit_1522@ha /* 0x80643004@ha */
/* 803DD68C  7C 76 1B 78 */	mr r22, r3
/* 803DD690  C0 24 30 04 */	lfs f1, lit_1522@l(r4)  /* 0x80643004@l */
/* 803DD694  7F 63 DB 78 */	mr r3, r27
/* 803DD698  7F C4 F3 78 */	mr r4, r30
/* 803DD69C  4B FF EB E9 */	bl mPlib_Search_exist_npc_inCircle_forScoop
/* 803DD6A0  28 03 00 00 */	cmplwi r3, 0
/* 803DD6A4  41 82 00 0C */	beq lbl_803DD6B0
/* 803DD6A8  38 60 00 3D */	li r3, 0x3d
/* 803DD6AC  48 00 01 5C */	b lbl_803DD808
lbl_803DD6B0:
/* 803DD6B0  3C 80 80 64 */	lis r4, lit_1522@ha /* 0x80643004@ha */
/* 803DD6B4  7F 63 DB 78 */	mr r3, r27
/* 803DD6B8  38 A4 30 04 */	addi r5, r4, lit_1522@l /* 0x80643004@l */
/* 803DD6BC  7F C4 F3 78 */	mr r4, r30
/* 803DD6C0  C0 25 00 00 */	lfs f1, 0(r5)
/* 803DD6C4  4B FF EC 69 */	bl mPlib_Search_exist_psnowman_inCircle_forScoop
/* 803DD6C8  28 03 00 00 */	cmplwi r3, 0
/* 803DD6CC  41 82 00 08 */	beq lbl_803DD6D4
/* 803DD6D0  3A 20 00 01 */	li r17, 1
lbl_803DD6D4:
/* 803DD6D4  28 03 00 00 */	cmplwi r3, 0
/* 803DD6D8  40 82 00 1C */	bne lbl_803DD6F4
/* 803DD6DC  7F 63 DB 78 */	mr r3, r27
/* 803DD6E0  7F C4 F3 78 */	mr r4, r30
/* 803DD6E4  4B FF EC F1 */	bl mPlib_Search_exist_snowball_forScoop
/* 803DD6E8  28 03 00 00 */	cmplwi r3, 0
/* 803DD6EC  41 82 00 08 */	beq lbl_803DD6F4
/* 803DD6F0  3A 20 00 01 */	li r17, 1
lbl_803DD6F4:
/* 803DD6F4  28 03 00 00 */	cmplwi r3, 0
/* 803DD6F8  40 82 00 1C */	bne lbl_803DD714
/* 803DD6FC  7F 63 DB 78 */	mr r3, r27
/* 803DD700  7F C4 F3 78 */	mr r4, r30
/* 803DD704  4B FF EE 0D */	bl mPlib_Search_exist_ball_forScoop
/* 803DD708  28 03 00 00 */	cmplwi r3, 0
/* 803DD70C  41 82 00 08 */	beq lbl_803DD714
/* 803DD710  3A 20 00 01 */	li r17, 1
lbl_803DD714:
/* 803DD714  28 19 00 00 */	cmplwi r25, 0
/* 803DD718  41 82 00 08 */	beq lbl_803DD720
/* 803DD71C  90 79 00 00 */	stw r3, 0(r25)
lbl_803DD720:
/* 803DD720  A0 01 00 08 */	lhz r0, 8(r1)
/* 803DD724  7C 1F 00 40 */	cmplw r31, r0
/* 803DD728  41 82 00 0C */	beq lbl_803DD734
/* 803DD72C  B0 1A 00 00 */	sth r0, 0(r26)
/* 803DD730  48 00 00 08 */	b lbl_803DD738
lbl_803DD734:
/* 803DD734  B3 FA 00 00 */	sth r31, 0(r26)
lbl_803DD738:
/* 803DD738  2C 1C 00 00 */	cmpwi r28, 0
/* 803DD73C  41 82 00 0C */	beq lbl_803DD748
/* 803DD740  38 60 00 3C */	li r3, 0x3c
/* 803DD744  48 00 00 C4 */	b lbl_803DD808
lbl_803DD748:
/* 803DD748  2C 18 00 00 */	cmpwi r24, 0
/* 803DD74C  41 82 00 0C */	beq lbl_803DD758
/* 803DD750  38 60 00 3C */	li r3, 0x3c
/* 803DD754  48 00 00 B4 */	b lbl_803DD808
lbl_803DD758:
/* 803DD758  2C 16 00 02 */	cmpwi r22, 2
/* 803DD75C  41 82 00 24 */	beq lbl_803DD780
/* 803DD760  40 80 00 10 */	bge lbl_803DD770
/* 803DD764  2C 16 00 00 */	cmpwi r22, 0
/* 803DD768  41 82 00 80 */	beq lbl_803DD7E8
/* 803DD76C  48 00 00 84 */	b lbl_803DD7F0
lbl_803DD770:
/* 803DD770  2C 16 00 05 */	cmpwi r22, 5
/* 803DD774  41 82 00 50 */	beq lbl_803DD7C4
/* 803DD778  40 80 00 78 */	bge lbl_803DD7F0
/* 803DD77C  48 00 00 24 */	b lbl_803DD7A0
lbl_803DD780:
/* 803DD780  2C 11 00 00 */	cmpwi r17, 0
/* 803DD784  41 82 00 0C */	beq lbl_803DD790
/* 803DD788  38 60 00 3C */	li r3, 0x3c
/* 803DD78C  48 00 00 7C */	b lbl_803DD808
lbl_803DD790:
/* 803DD790  30 1D FF FF */	addic r0, r29, -1
/* 803DD794  7C 60 E9 10 */	subfe r3, r0, r29
/* 803DD798  38 63 00 3B */	addi r3, r3, 0x3b
/* 803DD79C  48 00 00 6C */	b lbl_803DD808
lbl_803DD7A0:
/* 803DD7A0  2C 11 00 00 */	cmpwi r17, 0
/* 803DD7A4  41 82 00 0C */	beq lbl_803DD7B0
/* 803DD7A8  38 60 00 3C */	li r3, 0x3c
/* 803DD7AC  48 00 00 5C */	b lbl_803DD808
lbl_803DD7B0:
/* 803DD7B0  2C 1D 00 00 */	cmpwi r29, 0
/* 803DD7B4  38 60 00 3A */	li r3, 0x3a
/* 803DD7B8  41 82 00 50 */	beq lbl_803DD808
/* 803DD7BC  38 60 00 3C */	li r3, 0x3c
/* 803DD7C0  48 00 00 48 */	b lbl_803DD808
lbl_803DD7C4:
/* 803DD7C4  2C 11 00 00 */	cmpwi r17, 0
/* 803DD7C8  41 82 00 0C */	beq lbl_803DD7D4
/* 803DD7CC  38 60 00 3C */	li r3, 0x3c
/* 803DD7D0  48 00 00 38 */	b lbl_803DD808
lbl_803DD7D4:
/* 803DD7D4  2C 1D 00 00 */	cmpwi r29, 0
/* 803DD7D8  38 60 00 3E */	li r3, 0x3e
/* 803DD7DC  41 82 00 2C */	beq lbl_803DD808
/* 803DD7E0  38 60 00 3C */	li r3, 0x3c
/* 803DD7E4  48 00 00 24 */	b lbl_803DD808
lbl_803DD7E8:
/* 803DD7E8  38 60 00 3D */	li r3, 0x3d
/* 803DD7EC  48 00 00 1C */	b lbl_803DD808
lbl_803DD7F0:
/* 803DD7F0  2C 1D 00 00 */	cmpwi r29, 0
/* 803DD7F4  41 82 00 08 */	beq lbl_803DD7FC
/* 803DD7F8  B3 FA 00 00 */	sth r31, 0(r26)
lbl_803DD7FC:
/* 803DD7FC  38 60 00 3C */	li r3, 0x3c
/* 803DD800  48 00 00 08 */	b lbl_803DD808
lbl_803DD804:
/* 803DD804  38 60 FF FF */	li r3, -1
lbl_803DD808:
/* 803DD808  E3 E1 04 58 */	psq_l f31, 1112(r1), 0, 0 /* qr0 */
/* 803DD80C  CB E1 04 50 */	lfd f31, 0x450(r1)
/* 803DD810  E3 C1 04 48 */	psq_l f30, 1096(r1), 0, 0 /* qr0 */
/* 803DD814  CB C1 04 40 */	lfd f30, 0x440(r1)
/* 803DD818  E3 A1 04 38 */	psq_l f29, 1080(r1), 0, 0 /* qr0 */
/* 803DD81C  39 61 04 30 */	addi r11, r1, 0x430
/* 803DD820  CB A1 04 30 */	lfd f29, 0x430(r1)
/* 803DD824  4B CB D6 CD */	bl func_8009AEF0
/* 803DD828  80 01 04 64 */	lwz r0, 0x464(r1)
/* 803DD82C  7C 08 03 A6 */	mtlr r0
/* 803DD830  38 21 04 60 */	addi r1, r1, 0x460
/* 803DD834  4E 80 00 20 */	blr 
