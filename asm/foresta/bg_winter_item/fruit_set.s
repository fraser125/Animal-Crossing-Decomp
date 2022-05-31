lbl_804C0A6C:
/* 804C0A6C  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 804C0A70  7C 08 02 A6 */	mflr r0
/* 804C0A74  90 01 01 64 */	stw r0, 0x164(r1)
/* 804C0A78  39 61 01 60 */	addi r11, r1, 0x160
/* 804C0A7C  4B BD A4 1D */	bl __save_gpr
/* 804C0A80  3D 40 80 69 */	lis r10, data_80695C98@ha /* 0x80695C98@ha */
/* 804C0A84  7C 6F 1B 78 */	mr r15, r3
/* 804C0A88  7C 90 23 78 */	mr r16, r4
/* 804C0A8C  7C B1 2B 78 */	mr r17, r5
/* 804C0A90  7C CE 33 78 */	mr r14, r6
/* 804C0A94  7C F2 3B 78 */	mr r18, r7
/* 804C0A98  7D 13 43 78 */	mr r19, r8
/* 804C0A9C  7D 34 4B 78 */	mr r20, r9
/* 804C0AA0  3B 6A 5C 98 */	addi r27, r10, data_80695C98@l /* 0x80695C98@l */
/* 804C0AA4  38 61 00 44 */	addi r3, r1, 0x44
/* 804C0AA8  4B EE 49 D5 */	bl mFI_UtNum2CenterWpos
/* 804C0AAC  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 804C0AB0  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C0AB4  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 804C0AB8  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804C0ABC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804C0AC0  38 61 00 20 */	addi r3, r1, 0x20
/* 804C0AC4  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804C0AC8  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C0ACC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804C0AD0  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C0AD4  4B EC EE C5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C0AD8  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 804C0ADC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804C0AE0  28 00 25 1C */	cmplwi r0, 0x251c
/* 804C0AE4  3A A0 00 00 */	li r21, 0
/* 804C0AE8  41 82 00 34 */	beq lbl_804C0B1C
/* 804C0AEC  7D C0 07 34 */	extsh r0, r14
/* 804C0AF0  2C 00 00 01 */	cmpwi r0, 1
/* 804C0AF4  40 82 00 28 */	bne lbl_804C0B1C
/* 804C0AF8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804C0AFC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804C0B00  80 63 00 00 */	lwz r3, 0(r3)
/* 804C0B04  4B F1 8B 3D */	bl get_player_actor_withoutCheck
/* 804C0B08  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804C0B0C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 804C0B10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C0B14  40 81 00 08 */	ble lbl_804C0B1C
/* 804C0B18  3A A0 00 01 */	li r21, 1
lbl_804C0B1C:
/* 804C0B1C  2C 15 00 00 */	cmpwi r21, 0
/* 804C0B20  38 A0 00 00 */	li r5, 0
/* 804C0B24  41 82 00 08 */	beq lbl_804C0B2C
/* 804C0B28  38 A0 00 01 */	li r5, 1
lbl_804C0B2C:
/* 804C0B2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C0B30  7D C0 07 34 */	extsh r0, r14
/* 804C0B34  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804C0B38  7C B5 2B 78 */	mr r21, r5
/* 804C0B3C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C0B40  3B 41 00 7C */	addi r26, r1, 0x7c
/* 804C0B44  1F C5 00 0C */	mulli r30, r5, 0xc
/* 804C0B48  3B 21 00 88 */	addi r25, r1, 0x88
/* 804C0B4C  3F 04 00 02 */	addis r24, r4, 2
/* 804C0B50  7E E5 02 14 */	add r23, r5, r0
/* 804C0B54  55 FC 04 3E */	clrlwi r28, r15, 0x10
/* 804C0B58  39 C3 61 44 */	addi r14, r3, lit_664@l /* 0x80646144@l */
/* 804C0B5C  54 BD 18 38 */	slwi r29, r5, 3
/* 804C0B60  54 BF 10 3A */	slwi r31, r5, 2
/* 804C0B64  48 00 04 F0 */	b lbl_804C1054
lbl_804C0B68:
/* 804C0B68  2C 12 00 01 */	cmpwi r18, 1
/* 804C0B6C  40 82 00 18 */	bne lbl_804C0B84
/* 804C0B70  7E 04 83 78 */	mr r4, r16
/* 804C0B74  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C0B78  38 B1 00 01 */	addi r5, r17, 1
/* 804C0B7C  4B EE 49 01 */	bl mFI_UtNum2CenterWpos
/* 804C0B80  48 00 00 24 */	b lbl_804C0BA4
lbl_804C0B84:
/* 804C0B84  38 BB 2C 8C */	addi r5, r27, 0x2c8c
/* 804C0B88  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C0B8C  7C A5 EA 14 */	add r5, r5, r29
/* 804C0B90  80 85 00 00 */	lwz r4, 0(r5)
/* 804C0B94  80 05 00 04 */	lwz r0, 4(r5)
/* 804C0B98  7C 90 22 14 */	add r4, r16, r4
/* 804C0B9C  7C B1 02 14 */	add r5, r17, r0
/* 804C0BA0  4B EE 48 DD */	bl mFI_UtNum2CenterWpos
lbl_804C0BA4:
/* 804C0BA4  28 1C 25 1C */	cmplwi r28, 0x251c
/* 804C0BA8  40 82 00 34 */	bne lbl_804C0BDC
/* 804C0BAC  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C0BB0  38 A1 00 44 */	addi r5, r1, 0x44
/* 804C0BB4  38 80 00 00 */	li r4, 0
/* 804C0BB8  4B FF E4 9D */	bl mFI_search_unit_around_high
/* 804C0BBC  7C 60 1B 78 */	mr r0, r3
/* 804C0BC0  38 7B 2C EC */	addi r3, r27, 0x2cec
/* 804C0BC4  7C 16 03 78 */	mr r22, r0
/* 804C0BC8  38 81 00 44 */	addi r4, r1, 0x44
/* 804C0BCC  7C 63 F2 14 */	add r3, r3, r30
/* 804C0BD0  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C0BD4  4B EF A3 71 */	bl xyz_t_add
/* 804C0BD8  48 00 00 8C */	b lbl_804C0C64
lbl_804C0BDC:
/* 804C0BDC  28 1C 00 62 */	cmplwi r28, 0x62
/* 804C0BE0  40 82 00 20 */	bne lbl_804C0C00
/* 804C0BE4  38 7B 2C C8 */	addi r3, r27, 0x2cc8
/* 804C0BE8  38 81 00 44 */	addi r4, r1, 0x44
/* 804C0BEC  7C 63 F2 14 */	add r3, r3, r30
/* 804C0BF0  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C0BF4  3A C0 00 01 */	li r22, 1
/* 804C0BF8  4B EF A3 4D */	bl xyz_t_add
/* 804C0BFC  48 00 00 68 */	b lbl_804C0C64
lbl_804C0C00:
/* 804C0C00  28 1C 28 07 */	cmplwi r28, 0x2807
/* 804C0C04  40 82 00 34 */	bne lbl_804C0C38
/* 804C0C08  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C0C0C  38 A1 00 44 */	addi r5, r1, 0x44
/* 804C0C10  38 80 00 00 */	li r4, 0
/* 804C0C14  4B FF E4 41 */	bl mFI_search_unit_around_high
/* 804C0C18  7C 60 1B 78 */	mr r0, r3
/* 804C0C1C  38 7B 2D 10 */	addi r3, r27, 0x2d10
/* 804C0C20  7C 16 03 78 */	mr r22, r0
/* 804C0C24  38 81 00 44 */	addi r4, r1, 0x44
/* 804C0C28  7C 63 F2 14 */	add r3, r3, r30
/* 804C0C2C  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C0C30  4B EF A3 15 */	bl xyz_t_add
/* 804C0C34  48 00 00 30 */	b lbl_804C0C64
lbl_804C0C38:
/* 804C0C38  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C0C3C  38 A1 00 44 */	addi r5, r1, 0x44
/* 804C0C40  38 80 00 00 */	li r4, 0
/* 804C0C44  4B FF E4 11 */	bl mFI_search_unit_around_high
/* 804C0C48  7C 60 1B 78 */	mr r0, r3
/* 804C0C4C  38 7B 2C A4 */	addi r3, r27, 0x2ca4
/* 804C0C50  7C 16 03 78 */	mr r22, r0
/* 804C0C54  38 81 00 44 */	addi r4, r1, 0x44
/* 804C0C58  7C 63 F2 14 */	add r3, r3, r30
/* 804C0C5C  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C0C60  4B EF A2 E5 */	bl xyz_t_add
lbl_804C0C64:
/* 804C0C64  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804C0C68  38 61 00 14 */	addi r3, r1, 0x14
/* 804C0C6C  80 81 00 60 */	lwz r4, 0x60(r1)
/* 804C0C70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C0C74  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804C0C78  C0 2E 00 00 */	lfs f1, 0(r14)
/* 804C0C7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C0C80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C0C84  4B EC ED 15 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C0C88  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804C0C8C  7F 43 D3 78 */	mr r3, r26
/* 804C0C90  38 81 00 50 */	addi r4, r1, 0x50
/* 804C0C94  92 81 00 F4 */	stw r20, 0xf4(r1)
/* 804C0C98  B1 E1 00 76 */	sth r15, 0x76(r1)
/* 804C0C9C  4B EF A2 21 */	bl xyz_t_move
/* 804C0CA0  7F 23 CB 78 */	mr r3, r25
/* 804C0CA4  38 81 00 5C */	addi r4, r1, 0x5c
/* 804C0CA8  4B EF A2 15 */	bl xyz_t_move
/* 804C0CAC  38 60 00 00 */	li r3, 0
/* 804C0CB0  2C 16 00 00 */	cmpwi r22, 0
/* 804C0CB4  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804C0CB8  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804C0CBC  40 82 00 10 */	bne lbl_804C0CCC
/* 804C0CC0  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804C0CC4  28 00 00 62 */	cmplwi r0, 0x62
/* 804C0CC8  40 82 01 EC */	bne lbl_804C0EB4
lbl_804C0CCC:
/* 804C0CCC  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804C0CD0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804C0CD4  2C 00 00 01 */	cmpwi r0, 1
/* 804C0CD8  41 82 00 0C */	beq lbl_804C0CE4
/* 804C0CDC  2C 00 00 03 */	cmpwi r0, 3
/* 804C0CE0  40 82 00 10 */	bne lbl_804C0CF0
lbl_804C0CE4:
/* 804C0CE4  38 00 02 00 */	li r0, 0x200
/* 804C0CE8  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804C0CEC  48 00 00 3C */	b lbl_804C0D28
lbl_804C0CF0:
/* 804C0CF0  28 03 21 03 */	cmplwi r3, 0x2103
/* 804C0CF4  40 82 00 14 */	bne lbl_804C0D08
/* 804C0CF8  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804C0CFC  60 00 10 00 */	ori r0, r0, 0x1000
/* 804C0D00  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804C0D04  48 00 00 24 */	b lbl_804C0D28
lbl_804C0D08:
/* 804C0D08  38 00 01 00 */	li r0, 0x100
/* 804C0D0C  28 03 00 62 */	cmplwi r3, 0x62
/* 804C0D10  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804C0D14  40 82 00 14 */	bne lbl_804C0D28
/* 804C0D18  2C 16 00 00 */	cmpwi r22, 0
/* 804C0D1C  41 82 00 0C */	beq lbl_804C0D28
/* 804C0D20  60 00 04 00 */	ori r0, r0, 0x400
/* 804C0D24  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804C0D28:
/* 804C0D28  A0 81 00 D4 */	lhz r4, 0xd4(r1)
/* 804C0D2C  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646180@ha */
/* 804C0D30  C0 03 61 80 */	lfs f0, lit_1188@l(r3)  /* 0x80646180@l */
/* 804C0D34  38 A0 00 00 */	li r5, 0
/* 804C0D38  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804C0D3C  B0 A1 00 FA */	sth r5, 0xfa(r1)
/* 804C0D40  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804C0D44  41 82 00 28 */	beq lbl_804C0D6C
/* 804C0D48  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646184@ha */
/* 804C0D4C  38 80 00 01 */	li r4, 1
/* 804C0D50  C0 03 61 84 */	lfs f0, lit_1311@l(r3)  /* 0x80646184@l */
/* 804C0D54  38 00 00 1A */	li r0, 0x1a
/* 804C0D58  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804C0D5C  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C0D60  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C0D64  B0 A1 00 D6 */	sth r5, 0xd6(r1)
/* 804C0D68  48 00 00 50 */	b lbl_804C0DB8
lbl_804C0D6C:
/* 804C0D6C  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 804C0D70  41 82 00 24 */	beq lbl_804C0D94
/* 804C0D74  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646188@ha */
/* 804C0D78  38 80 00 05 */	li r4, 5
/* 804C0D7C  C0 03 61 88 */	lfs f0, lit_1312@l(r3)  /* 0x80646188@l */
/* 804C0D80  38 00 00 01 */	li r0, 1
/* 804C0D84  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804C0D88  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C0D8C  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804C0D90  48 00 00 28 */	b lbl_804C0DB8
lbl_804C0D94:
/* 804C0D94  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646188@ha */
/* 804C0D98  38 BF 00 0E */	addi r5, r31, 0xe
/* 804C0D9C  C0 03 61 88 */	lfs f0, lit_1312@l(r3)  /* 0x80646188@l */
/* 804C0DA0  38 9F 00 01 */	addi r4, r31, 1
/* 804C0DA4  38 00 00 01 */	li r0, 1
/* 804C0DA8  B0 A1 00 B8 */	sth r5, 0xb8(r1)
/* 804C0DAC  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804C0DB0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C0DB4  B0 01 00 D6 */	sth r0, 0xd6(r1)
lbl_804C0DB8:
/* 804C0DB8  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804C0DBC  38 00 00 00 */	li r0, 0
/* 804C0DC0  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804C0DC4  28 03 00 08 */	cmplwi r3, 8
/* 804C0DC8  41 80 00 0C */	blt lbl_804C0DD4
/* 804C0DCC  28 03 00 0A */	cmplwi r3, 0xa
/* 804C0DD0  40 81 00 14 */	ble lbl_804C0DE4
lbl_804C0DD4:
/* 804C0DD4  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C0DD8  41 80 00 24 */	blt lbl_804C0DFC
/* 804C0DDC  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C0DE0  41 81 00 1C */	bgt lbl_804C0DFC
lbl_804C0DE4:
/* 804C0DE4  7F 25 CB 78 */	mr r5, r25
/* 804C0DE8  38 81 00 38 */	addi r4, r1, 0x38
/* 804C0DEC  4B FF EF 61 */	bl bIT_actor_rand_pos_get_plus
/* 804C0DF0  7F 23 CB 78 */	mr r3, r25
/* 804C0DF4  38 81 00 38 */	addi r4, r1, 0x38
/* 804C0DF8  4B EF A0 C5 */	bl xyz_t_move
lbl_804C0DFC:
/* 804C0DFC  7F 23 CB 78 */	mr r3, r25
/* 804C0E00  7F 44 D3 78 */	mr r4, r26
/* 804C0E04  4B EF A2 89 */	bl search_position_distanceXZ
/* 804C0E08  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804C0E0C  3C 00 43 30 */	lis r0, 0x4330
/* 804C0E10  90 01 01 10 */	stw r0, 0x110(r1)
/* 804C0E14  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C0E18  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C0E1C  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804C0E20  90 01 01 14 */	stw r0, 0x114(r1)
/* 804C0E24  38 83 61 5C */	addi r4, r3, lit_770@l /* 0x8064615C@l */
/* 804C0E28  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804C0E2C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804C0E30  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C0E34  38 81 00 CC */	addi r4, r1, 0xcc
/* 804C0E38  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804C0E3C  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C0E40  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804C0E44  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C0E48  4B FF F9 55 */	bl func_calc_spec_drop_time
/* 804C0E4C  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804C0E50  38 81 00 68 */	addi r4, r1, 0x68
/* 804C0E54  80 63 00 00 */	lwz r3, 0(r3)
/* 804C0E58  3C 63 00 01 */	addis r3, r3, 1
/* 804C0E5C  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804C0E60  4B FF F9 85 */	bl bIT_actor_drop_entry_main
/* 804C0E64  2C 03 00 00 */	cmpwi r3, 0
/* 804C0E68  41 82 00 3C */	beq lbl_804C0EA4
/* 804C0E6C  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804C0E70  28 00 00 62 */	cmplwi r0, 0x62
/* 804C0E74  41 82 00 30 */	beq lbl_804C0EA4
/* 804C0E78  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804C0E7C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C0E80  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 804C0E84  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C0E88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C0E8C  38 81 00 08 */	addi r4, r1, 8
/* 804C0E90  90 A1 00 08 */	stw r5, 8(r1)
/* 804C0E94  38 A0 00 00 */	li r5, 0
/* 804C0E98  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804C0E9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C0EA0  4B EE 69 91 */	bl mFI_SetFG_common
lbl_804C0EA4:
/* 804C0EA4  7E 63 9B 78 */	mr r3, r19
/* 804C0EA8  38 81 00 5C */	addi r4, r1, 0x5c
/* 804C0EAC  4B EF A0 11 */	bl xyz_t_move
/* 804C0EB0  48 00 01 94 */	b lbl_804C1044
lbl_804C0EB4:
/* 804C0EB4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 804C0EB8  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804C0EBC  2C 00 00 01 */	cmpwi r0, 1
/* 804C0EC0  41 82 00 0C */	beq lbl_804C0ECC
/* 804C0EC4  2C 00 00 03 */	cmpwi r0, 3
/* 804C0EC8  40 82 00 14 */	bne lbl_804C0EDC
lbl_804C0ECC:
/* 804C0ECC  38 60 00 01 */	li r3, 1
/* 804C0ED0  38 00 02 00 */	li r0, 0x200
/* 804C0ED4  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804C0ED8  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804C0EDC:
/* 804C0EDC  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804C0EE0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C0EE4  41 82 00 1C */	beq lbl_804C0F00
/* 804C0EE8  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646184@ha */
/* 804C0EEC  38 00 00 1A */	li r0, 0x1a
/* 804C0EF0  C0 03 61 84 */	lfs f0, lit_1311@l(r3)  /* 0x80646184@l */
/* 804C0EF4  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C0EF8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C0EFC  48 00 00 20 */	b lbl_804C0F1C
lbl_804C0F00:
/* 804C0F00  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646188@ha */
/* 804C0F04  38 9F 00 0E */	addi r4, r31, 0xe
/* 804C0F08  C0 03 61 88 */	lfs f0, lit_1312@l(r3)  /* 0x80646188@l */
/* 804C0F0C  38 1F 00 01 */	addi r0, r31, 1
/* 804C0F10  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804C0F14  B0 01 00 F2 */	sth r0, 0xf2(r1)
/* 804C0F18  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804C0F1C:
/* 804C0F1C  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804C0F20  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C0F24  C0 03 61 3C */	lfs f0, data_8064613C@l(r3)  /* 0x8064613C@l */
/* 804C0F28  38 A0 00 0C */	li r5, 0xc
/* 804C0F2C  60 06 00 24 */	ori r6, r0, 0x24
/* 804C0F30  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804C0F34  38 80 00 1B */	li r4, 0x1b
/* 804C0F38  38 60 00 00 */	li r3, 0
/* 804C0F3C  54 C0 05 AD */	rlwinm. r0, r6, 0, 0x16, 0x16
/* 804C0F40  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 804C0F44  B0 C1 00 D4 */	sth r6, 0xd4(r1)
/* 804C0F48  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804C0F4C  B0 A1 00 E0 */	sth r5, 0xe0(r1)
/* 804C0F50  B0 81 00 D8 */	sth r4, 0xd8(r1)
/* 804C0F54  B0 61 00 FA */	sth r3, 0xfa(r1)
/* 804C0F58  41 82 00 1C */	beq lbl_804C0F74
/* 804C0F5C  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646184@ha */
/* 804C0F60  38 00 00 1A */	li r0, 0x1a
/* 804C0F64  C0 03 61 84 */	lfs f0, lit_1311@l(r3)  /* 0x80646184@l */
/* 804C0F68  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C0F6C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C0F70  48 00 00 18 */	b lbl_804C0F88
lbl_804C0F74:
/* 804C0F74  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646188@ha */
/* 804C0F78  38 1F 00 0E */	addi r0, r31, 0xe
/* 804C0F7C  C0 03 61 88 */	lfs f0, lit_1312@l(r3)  /* 0x80646188@l */
/* 804C0F80  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C0F84  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804C0F88:
/* 804C0F88  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804C0F8C  38 00 00 00 */	li r0, 0
/* 804C0F90  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804C0F94  28 03 00 08 */	cmplwi r3, 8
/* 804C0F98  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804C0F9C  41 80 00 0C */	blt lbl_804C0FA8
/* 804C0FA0  28 03 00 0A */	cmplwi r3, 0xa
/* 804C0FA4  40 81 00 14 */	ble lbl_804C0FB8
lbl_804C0FA8:
/* 804C0FA8  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C0FAC  41 80 00 24 */	blt lbl_804C0FD0
/* 804C0FB0  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C0FB4  41 81 00 1C */	bgt lbl_804C0FD0
lbl_804C0FB8:
/* 804C0FB8  7F 25 CB 78 */	mr r5, r25
/* 804C0FBC  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C0FC0  4B FF ED 8D */	bl bIT_actor_rand_pos_get_plus
/* 804C0FC4  7F 23 CB 78 */	mr r3, r25
/* 804C0FC8  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C0FCC  4B EF 9E F1 */	bl xyz_t_move
lbl_804C0FD0:
/* 804C0FD0  7F 23 CB 78 */	mr r3, r25
/* 804C0FD4  7F 44 D3 78 */	mr r4, r26
/* 804C0FD8  4B EF A0 B5 */	bl search_position_distanceXZ
/* 804C0FDC  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804C0FE0  3C 00 43 30 */	lis r0, 0x4330
/* 804C0FE4  90 01 01 10 */	stw r0, 0x110(r1)
/* 804C0FE8  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C0FEC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C0FF0  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804C0FF4  90 01 01 14 */	stw r0, 0x114(r1)
/* 804C0FF8  38 83 61 5C */	addi r4, r3, lit_770@l /* 0x8064615C@l */
/* 804C0FFC  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804C1000  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804C1004  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C1008  38 81 00 CC */	addi r4, r1, 0xcc
/* 804C100C  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804C1010  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C1014  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804C1018  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C101C  4B FF F7 81 */	bl func_calc_spec_drop_time
/* 804C1020  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804C1024  38 81 00 68 */	addi r4, r1, 0x68
/* 804C1028  80 63 00 00 */	lwz r3, 0(r3)
/* 804C102C  3C 63 00 01 */	addis r3, r3, 1
/* 804C1030  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804C1034  4B FF F7 B1 */	bl bIT_actor_drop_entry_main
/* 804C1038  7E 63 9B 78 */	mr r3, r19
/* 804C103C  38 9B 2D 28 */	addi r4, r27, 0x2d28
/* 804C1040  4B EF 9E 7D */	bl xyz_t_move
lbl_804C1044:
/* 804C1044  3A B5 00 01 */	addi r21, r21, 1
/* 804C1048  3B FF 00 04 */	addi r31, r31, 4
/* 804C104C  3B DE 00 0C */	addi r30, r30, 0xc
/* 804C1050  3B BD 00 08 */	addi r29, r29, 8
lbl_804C1054:
/* 804C1054  7C 15 B8 00 */	cmpw r21, r23
/* 804C1058  41 80 FB 10 */	blt lbl_804C0B68
/* 804C105C  38 60 00 00 */	li r3, 0
/* 804C1060  39 61 01 60 */	addi r11, r1, 0x160
/* 804C1064  4B BD 9E 81 */	bl __restore_gpr
/* 804C1068  80 01 01 64 */	lwz r0, 0x164(r1)
/* 804C106C  7C 08 03 A6 */	mtlr r0
/* 804C1070  38 21 01 60 */	addi r1, r1, 0x160
/* 804C1074  4E 80 00 20 */	blr 
