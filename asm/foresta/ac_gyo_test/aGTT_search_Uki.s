lbl_805A387C:
/* 805A387C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805A3880  7C 08 02 A6 */	mflr r0
/* 805A3884  90 01 00 54 */	stw r0, 0x54(r1)
/* 805A3888  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805A388C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805A3890  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805A3894  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805A3898  39 61 00 30 */	addi r11, r1, 0x30
/* 805A389C  4B AF 76 2D */	bl func_8009AEC8
/* 805A38A0  7C 7E 1B 78 */	mr r30, r3
/* 805A38A4  3C A0 80 6C */	lis r5, data_806C3C58@ha /* 0x806C3C58@ha */
/* 805A38A8  80 1E 01 D8 */	lwz r0, 0x1d8(r30)
/* 805A38AC  3B E5 3C 58 */	addi r31, r5, data_806C3C58@l /* 0x806C3C58@l */
/* 805A38B0  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 805A38B4  3B 60 00 00 */	li r27, 0
/* 805A38B8  38 BF 00 00 */	addi r5, r31, 0
/* 805A38BC  54 00 18 38 */	slwi r0, r0, 3
/* 805A38C0  7C C5 02 14 */	add r6, r5, r0
/* 805A38C4  38 80 00 6F */	li r4, 0x6f
/* 805A38C8  AB 86 00 02 */	lha r28, 2(r6)
/* 805A38CC  38 A0 00 05 */	li r5, 5
/* 805A38D0  4B DD 24 11 */	bl Actor_info_name_search
/* 805A38D4  7C 7A 1B 79 */	or. r26, r3, r3
/* 805A38D8  93 5E 01 CC */	stw r26, 0x1cc(r30)
/* 805A38DC  41 82 01 34 */	beq lbl_805A3A10
/* 805A38E0  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A38E4  38 9A 00 28 */	addi r4, r26, 0x28
/* 805A38E8  4B E1 76 ED */	bl search_position_distance
/* 805A38EC  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 805A38F0  FF E0 08 90 */	fmr f31, f1
/* 805A38F4  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 805A38F8  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A38FC  38 9A 00 28 */	addi r4, r26, 0x28
/* 805A3900  EF C2 00 28 */	fsubs f30, f2, f0
/* 805A3904  4B E1 78 2D */	bl search_position_angleY
/* 805A3908  A8 9E 01 DC */	lha r4, 0x1dc(r30)
/* 805A390C  7C 65 07 34 */	extsh r5, r3
/* 805A3910  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 805A3914  7C 80 07 35 */	extsh. r0, r4
/* 805A3918  7C 03 28 50 */	subf r0, r3, r5
/* 805A391C  7C 1D 07 34 */	extsh r29, r0
/* 805A3920  41 82 00 0C */	beq lbl_805A392C
/* 805A3924  2C 04 00 01 */	cmpwi r4, 1
/* 805A3928  40 82 00 10 */	bne lbl_805A3938
lbl_805A392C:
/* 805A392C  3C 60 80 65 */	lis r3, lit_625@ha /* 0x8064A3E4@ha */
/* 805A3930  C0 03 A3 E4 */	lfs f0, lit_625@l(r3)  /* 0x8064A3E4@l */
/* 805A3934  48 00 00 0C */	b lbl_805A3940
lbl_805A3938:
/* 805A3938  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064A3E8@ha */
/* 805A393C  C0 03 A3 E8 */	lfs f0, lit_626@l(r3)  /* 0x8064A3E8@l */
lbl_805A3940:
/* 805A3940  88 1A 02 61 */	lbz r0, 0x261(r26)
/* 805A3944  28 00 00 00 */	cmplwi r0, 0
/* 805A3948  41 82 00 30 */	beq lbl_805A3978
/* 805A394C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A3950  40 80 00 28 */	bge lbl_805A3978
/* 805A3954  3C 85 00 01 */	addis r4, r5, 1
/* 805A3958  7F C3 F3 78 */	mr r3, r30
/* 805A395C  38 04 80 00 */	addi r0, r4, -32768
/* 805A3960  7C 04 07 34 */	extsh r4, r0
/* 805A3964  4B FF F5 B9 */	bl aGTT_set_angle
/* 805A3968  7F C3 F3 78 */	mr r3, r30
/* 805A396C  38 80 00 02 */	li r4, 2
/* 805A3970  48 00 12 D5 */	bl aGTT_setupAction
/* 805A3974  48 00 00 9C */	b lbl_805A3A10
lbl_805A3978:
/* 805A3978  4B FF F5 59 */	bl aGYO_get_uki_type
/* 805A397C  A0 1E 02 40 */	lhz r0, 0x240(r30)
/* 805A3980  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805A3984  40 82 00 8C */	bne lbl_805A3A10
/* 805A3988  A8 1A 02 64 */	lha r0, 0x264(r26)
/* 805A398C  2C 00 00 00 */	cmpwi r0, 0
/* 805A3990  40 82 00 80 */	bne lbl_805A3A10
/* 805A3994  1C 83 00 14 */	mulli r4, r3, 0x14
/* 805A3998  57 80 10 3A */	slwi r0, r28, 2
/* 805A399C  38 7F 01 F8 */	addi r3, r31, 0x1f8
/* 805A39A0  7C 04 02 14 */	add r0, r4, r0
/* 805A39A4  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A39A8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A39AC  40 80 00 64 */	bge lbl_805A3A10
/* 805A39B0  FC 20 F2 10 */	fabs f1, f30
/* 805A39B4  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064A3EC@ha */
/* 805A39B8  C0 03 A3 EC */	lfs f0, lit_627@l(r3)  /* 0x8064A3EC@l */
/* 805A39BC  FC 20 08 18 */	frsp f1, f1
/* 805A39C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A39C4  40 80 00 4C */	bge lbl_805A3A10
/* 805A39C8  38 7F 02 20 */	addi r3, r31, 0x220
/* 805A39CC  3C 80 80 65 */	lis r4, lit_555@ha /* 0x8064A3DC@ha */
/* 805A39D0  7C 43 04 2E */	lfsx f2, r3, r0
/* 805A39D4  C0 24 A3 DC */	lfs f1, lit_555@l(r4)  /* 0x8064A3DC@l */
/* 805A39D8  FC 00 10 50 */	fneg f0, f2
/* 805A39DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A39E0  FC 00 00 1E */	fctiwz f0, f0
/* 805A39E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A39E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A39EC  7C 1D 00 00 */	cmpw r29, r0
/* 805A39F0  40 81 00 20 */	ble lbl_805A3A10
/* 805A39F4  EC 01 00 B2 */	fmuls f0, f1, f2
/* 805A39F8  FC 00 00 1E */	fctiwz f0, f0
/* 805A39FC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A3A00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A3A04  7C 1D 00 00 */	cmpw r29, r0
/* 805A3A08  40 80 00 08 */	bge lbl_805A3A10
/* 805A3A0C  3B 60 00 01 */	li r27, 1
lbl_805A3A10:
/* 805A3A10  7F 63 DB 78 */	mr r3, r27
/* 805A3A14  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805A3A18  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805A3A1C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805A3A20  39 61 00 30 */	addi r11, r1, 0x30
/* 805A3A24  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805A3A28  4B AF 74 ED */	bl func_8009AF14
/* 805A3A2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A3A30  7C 08 03 A6 */	mtlr r0
/* 805A3A34  38 21 00 50 */	addi r1, r1, 0x50
/* 805A3A38  4E 80 00 20 */	blr 
