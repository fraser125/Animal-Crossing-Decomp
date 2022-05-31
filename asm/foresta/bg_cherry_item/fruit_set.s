lbl_804B1BF0:
/* 804B1BF0  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 804B1BF4  7C 08 02 A6 */	mflr r0
/* 804B1BF8  90 01 01 64 */	stw r0, 0x164(r1)
/* 804B1BFC  39 61 01 60 */	addi r11, r1, 0x160
/* 804B1C00  4B BE 92 99 */	bl __save_gpr
/* 804B1C04  3D 40 80 69 */	lis r10, data_8068FB68@ha /* 0x8068FB68@ha */
/* 804B1C08  7C 6F 1B 78 */	mr r15, r3
/* 804B1C0C  7C 90 23 78 */	mr r16, r4
/* 804B1C10  7C B1 2B 78 */	mr r17, r5
/* 804B1C14  7C CE 33 78 */	mr r14, r6
/* 804B1C18  7C F2 3B 78 */	mr r18, r7
/* 804B1C1C  7D 13 43 78 */	mr r19, r8
/* 804B1C20  7D 34 4B 78 */	mr r20, r9
/* 804B1C24  3B 6A FB 68 */	addi r27, r10, data_8068FB68@l /* 0x8068FB68@l */
/* 804B1C28  38 61 00 44 */	addi r3, r1, 0x44
/* 804B1C2C  4B EF 38 51 */	bl mFI_UtNum2CenterWpos
/* 804B1C30  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 804B1C34  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B1C38  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 804B1C3C  38 83 5F F4 */	addi r4, r3, lit_664@l /* 0x80645FF4@l */
/* 804B1C40  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804B1C44  38 61 00 20 */	addi r3, r1, 0x20
/* 804B1C48  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804B1C4C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B1C50  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804B1C54  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B1C58  4B ED DD 41 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B1C5C  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 804B1C60  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804B1C64  28 00 25 1C */	cmplwi r0, 0x251c
/* 804B1C68  3A A0 00 00 */	li r21, 0
/* 804B1C6C  41 82 00 34 */	beq lbl_804B1CA0
/* 804B1C70  7D C0 07 34 */	extsh r0, r14
/* 804B1C74  2C 00 00 01 */	cmpwi r0, 1
/* 804B1C78  40 82 00 28 */	bne lbl_804B1CA0
/* 804B1C7C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804B1C80  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804B1C84  80 63 00 00 */	lwz r3, 0(r3)
/* 804B1C88  4B F2 79 B9 */	bl get_player_actor_withoutCheck
/* 804B1C8C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804B1C90  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 804B1C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1C98  40 81 00 08 */	ble lbl_804B1CA0
/* 804B1C9C  3A A0 00 01 */	li r21, 1
lbl_804B1CA0:
/* 804B1CA0  2C 15 00 00 */	cmpwi r21, 0
/* 804B1CA4  38 A0 00 00 */	li r5, 0
/* 804B1CA8  41 82 00 08 */	beq lbl_804B1CB0
/* 804B1CAC  38 A0 00 01 */	li r5, 1
lbl_804B1CB0:
/* 804B1CB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B1CB4  7D C0 07 34 */	extsh r0, r14
/* 804B1CB8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804B1CBC  7C B5 2B 78 */	mr r21, r5
/* 804B1CC0  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B1CC4  3B 41 00 7C */	addi r26, r1, 0x7c
/* 804B1CC8  1F C5 00 0C */	mulli r30, r5, 0xc
/* 804B1CCC  3B 21 00 88 */	addi r25, r1, 0x88
/* 804B1CD0  3F 04 00 02 */	addis r24, r4, 2
/* 804B1CD4  7E E5 02 14 */	add r23, r5, r0
/* 804B1CD8  55 FC 04 3E */	clrlwi r28, r15, 0x10
/* 804B1CDC  39 C3 5F F4 */	addi r14, r3, lit_664@l /* 0x80645FF4@l */
/* 804B1CE0  54 BD 18 38 */	slwi r29, r5, 3
/* 804B1CE4  54 BF 10 3A */	slwi r31, r5, 2
/* 804B1CE8  48 00 04 F0 */	b lbl_804B21D8
lbl_804B1CEC:
/* 804B1CEC  2C 12 00 01 */	cmpwi r18, 1
/* 804B1CF0  40 82 00 18 */	bne lbl_804B1D08
/* 804B1CF4  7E 04 83 78 */	mr r4, r16
/* 804B1CF8  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B1CFC  38 B1 00 01 */	addi r5, r17, 1
/* 804B1D00  4B EF 37 7D */	bl mFI_UtNum2CenterWpos
/* 804B1D04  48 00 00 24 */	b lbl_804B1D28
lbl_804B1D08:
/* 804B1D08  38 BB 2C 8C */	addi r5, r27, 0x2c8c
/* 804B1D0C  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B1D10  7C A5 EA 14 */	add r5, r5, r29
/* 804B1D14  80 85 00 00 */	lwz r4, 0(r5)
/* 804B1D18  80 05 00 04 */	lwz r0, 4(r5)
/* 804B1D1C  7C 90 22 14 */	add r4, r16, r4
/* 804B1D20  7C B1 02 14 */	add r5, r17, r0
/* 804B1D24  4B EF 37 59 */	bl mFI_UtNum2CenterWpos
lbl_804B1D28:
/* 804B1D28  28 1C 25 1C */	cmplwi r28, 0x251c
/* 804B1D2C  40 82 00 34 */	bne lbl_804B1D60
/* 804B1D30  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B1D34  38 A1 00 44 */	addi r5, r1, 0x44
/* 804B1D38  38 80 00 00 */	li r4, 0
/* 804B1D3C  4B FF E4 9D */	bl mFI_search_unit_around_high
/* 804B1D40  7C 60 1B 78 */	mr r0, r3
/* 804B1D44  38 7B 2C EC */	addi r3, r27, 0x2cec
/* 804B1D48  7C 16 03 78 */	mr r22, r0
/* 804B1D4C  38 81 00 44 */	addi r4, r1, 0x44
/* 804B1D50  7C 63 F2 14 */	add r3, r3, r30
/* 804B1D54  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B1D58  4B F0 91 ED */	bl xyz_t_add
/* 804B1D5C  48 00 00 8C */	b lbl_804B1DE8
lbl_804B1D60:
/* 804B1D60  28 1C 00 62 */	cmplwi r28, 0x62
/* 804B1D64  40 82 00 20 */	bne lbl_804B1D84
/* 804B1D68  38 7B 2C C8 */	addi r3, r27, 0x2cc8
/* 804B1D6C  38 81 00 44 */	addi r4, r1, 0x44
/* 804B1D70  7C 63 F2 14 */	add r3, r3, r30
/* 804B1D74  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B1D78  3A C0 00 01 */	li r22, 1
/* 804B1D7C  4B F0 91 C9 */	bl xyz_t_add
/* 804B1D80  48 00 00 68 */	b lbl_804B1DE8
lbl_804B1D84:
/* 804B1D84  28 1C 28 07 */	cmplwi r28, 0x2807
/* 804B1D88  40 82 00 34 */	bne lbl_804B1DBC
/* 804B1D8C  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B1D90  38 A1 00 44 */	addi r5, r1, 0x44
/* 804B1D94  38 80 00 00 */	li r4, 0
/* 804B1D98  4B FF E4 41 */	bl mFI_search_unit_around_high
/* 804B1D9C  7C 60 1B 78 */	mr r0, r3
/* 804B1DA0  38 7B 2D 10 */	addi r3, r27, 0x2d10
/* 804B1DA4  7C 16 03 78 */	mr r22, r0
/* 804B1DA8  38 81 00 44 */	addi r4, r1, 0x44
/* 804B1DAC  7C 63 F2 14 */	add r3, r3, r30
/* 804B1DB0  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B1DB4  4B F0 91 91 */	bl xyz_t_add
/* 804B1DB8  48 00 00 30 */	b lbl_804B1DE8
lbl_804B1DBC:
/* 804B1DBC  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B1DC0  38 A1 00 44 */	addi r5, r1, 0x44
/* 804B1DC4  38 80 00 00 */	li r4, 0
/* 804B1DC8  4B FF E4 11 */	bl mFI_search_unit_around_high
/* 804B1DCC  7C 60 1B 78 */	mr r0, r3
/* 804B1DD0  38 7B 2C A4 */	addi r3, r27, 0x2ca4
/* 804B1DD4  7C 16 03 78 */	mr r22, r0
/* 804B1DD8  38 81 00 44 */	addi r4, r1, 0x44
/* 804B1DDC  7C 63 F2 14 */	add r3, r3, r30
/* 804B1DE0  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B1DE4  4B F0 91 61 */	bl xyz_t_add
lbl_804B1DE8:
/* 804B1DE8  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804B1DEC  38 61 00 14 */	addi r3, r1, 0x14
/* 804B1DF0  80 81 00 60 */	lwz r4, 0x60(r1)
/* 804B1DF4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B1DF8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804B1DFC  C0 2E 00 00 */	lfs f1, 0(r14)
/* 804B1E00  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B1E04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B1E08  4B ED DB 91 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B1E0C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804B1E10  7F 43 D3 78 */	mr r3, r26
/* 804B1E14  38 81 00 50 */	addi r4, r1, 0x50
/* 804B1E18  92 81 00 F4 */	stw r20, 0xf4(r1)
/* 804B1E1C  B1 E1 00 76 */	sth r15, 0x76(r1)
/* 804B1E20  4B F0 90 9D */	bl xyz_t_move
/* 804B1E24  7F 23 CB 78 */	mr r3, r25
/* 804B1E28  38 81 00 5C */	addi r4, r1, 0x5c
/* 804B1E2C  4B F0 90 91 */	bl xyz_t_move
/* 804B1E30  38 60 00 00 */	li r3, 0
/* 804B1E34  2C 16 00 00 */	cmpwi r22, 0
/* 804B1E38  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804B1E3C  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804B1E40  40 82 00 10 */	bne lbl_804B1E50
/* 804B1E44  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804B1E48  28 00 00 62 */	cmplwi r0, 0x62
/* 804B1E4C  40 82 01 EC */	bne lbl_804B2038
lbl_804B1E50:
/* 804B1E50  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804B1E54  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804B1E58  2C 00 00 01 */	cmpwi r0, 1
/* 804B1E5C  41 82 00 0C */	beq lbl_804B1E68
/* 804B1E60  2C 00 00 03 */	cmpwi r0, 3
/* 804B1E64  40 82 00 10 */	bne lbl_804B1E74
lbl_804B1E68:
/* 804B1E68  38 00 02 00 */	li r0, 0x200
/* 804B1E6C  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804B1E70  48 00 00 3C */	b lbl_804B1EAC
lbl_804B1E74:
/* 804B1E74  28 03 21 03 */	cmplwi r3, 0x2103
/* 804B1E78  40 82 00 14 */	bne lbl_804B1E8C
/* 804B1E7C  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804B1E80  60 00 10 00 */	ori r0, r0, 0x1000
/* 804B1E84  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804B1E88  48 00 00 24 */	b lbl_804B1EAC
lbl_804B1E8C:
/* 804B1E8C  38 00 01 00 */	li r0, 0x100
/* 804B1E90  28 03 00 62 */	cmplwi r3, 0x62
/* 804B1E94  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804B1E98  40 82 00 14 */	bne lbl_804B1EAC
/* 804B1E9C  2C 16 00 00 */	cmpwi r22, 0
/* 804B1EA0  41 82 00 0C */	beq lbl_804B1EAC
/* 804B1EA4  60 00 04 00 */	ori r0, r0, 0x400
/* 804B1EA8  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804B1EAC:
/* 804B1EAC  A0 81 00 D4 */	lhz r4, 0xd4(r1)
/* 804B1EB0  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646030@ha */
/* 804B1EB4  C0 03 60 30 */	lfs f0, lit_1188@l(r3)  /* 0x80646030@l */
/* 804B1EB8  38 A0 00 00 */	li r5, 0
/* 804B1EBC  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804B1EC0  B0 A1 00 FA */	sth r5, 0xfa(r1)
/* 804B1EC4  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804B1EC8  41 82 00 28 */	beq lbl_804B1EF0
/* 804B1ECC  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646034@ha */
/* 804B1ED0  38 80 00 01 */	li r4, 1
/* 804B1ED4  C0 03 60 34 */	lfs f0, lit_1311@l(r3)  /* 0x80646034@l */
/* 804B1ED8  38 00 00 1A */	li r0, 0x1a
/* 804B1EDC  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804B1EE0  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B1EE4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B1EE8  B0 A1 00 D6 */	sth r5, 0xd6(r1)
/* 804B1EEC  48 00 00 50 */	b lbl_804B1F3C
lbl_804B1EF0:
/* 804B1EF0  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 804B1EF4  41 82 00 24 */	beq lbl_804B1F18
/* 804B1EF8  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646038@ha */
/* 804B1EFC  38 80 00 05 */	li r4, 5
/* 804B1F00  C0 03 60 38 */	lfs f0, lit_1312@l(r3)  /* 0x80646038@l */
/* 804B1F04  38 00 00 01 */	li r0, 1
/* 804B1F08  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804B1F0C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B1F10  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804B1F14  48 00 00 28 */	b lbl_804B1F3C
lbl_804B1F18:
/* 804B1F18  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646038@ha */
/* 804B1F1C  38 BF 00 0E */	addi r5, r31, 0xe
/* 804B1F20  C0 03 60 38 */	lfs f0, lit_1312@l(r3)  /* 0x80646038@l */
/* 804B1F24  38 9F 00 01 */	addi r4, r31, 1
/* 804B1F28  38 00 00 01 */	li r0, 1
/* 804B1F2C  B0 A1 00 B8 */	sth r5, 0xb8(r1)
/* 804B1F30  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804B1F34  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B1F38  B0 01 00 D6 */	sth r0, 0xd6(r1)
lbl_804B1F3C:
/* 804B1F3C  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804B1F40  38 00 00 00 */	li r0, 0
/* 804B1F44  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804B1F48  28 03 00 08 */	cmplwi r3, 8
/* 804B1F4C  41 80 00 0C */	blt lbl_804B1F58
/* 804B1F50  28 03 00 0A */	cmplwi r3, 0xa
/* 804B1F54  40 81 00 14 */	ble lbl_804B1F68
lbl_804B1F58:
/* 804B1F58  28 03 25 14 */	cmplwi r3, 0x2514
/* 804B1F5C  41 80 00 24 */	blt lbl_804B1F80
/* 804B1F60  28 03 25 1B */	cmplwi r3, 0x251b
/* 804B1F64  41 81 00 1C */	bgt lbl_804B1F80
lbl_804B1F68:
/* 804B1F68  7F 25 CB 78 */	mr r5, r25
/* 804B1F6C  38 81 00 38 */	addi r4, r1, 0x38
/* 804B1F70  4B FF EF 61 */	bl bIT_actor_rand_pos_get_plus
/* 804B1F74  7F 23 CB 78 */	mr r3, r25
/* 804B1F78  38 81 00 38 */	addi r4, r1, 0x38
/* 804B1F7C  4B F0 8F 41 */	bl xyz_t_move
lbl_804B1F80:
/* 804B1F80  7F 23 CB 78 */	mr r3, r25
/* 804B1F84  7F 44 D3 78 */	mr r4, r26
/* 804B1F88  4B F0 91 05 */	bl search_position_distanceXZ
/* 804B1F8C  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804B1F90  3C 00 43 30 */	lis r0, 0x4330
/* 804B1F94  90 01 01 10 */	stw r0, 0x110(r1)
/* 804B1F98  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B1F9C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804B1FA0  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804B1FA4  90 01 01 14 */	stw r0, 0x114(r1)
/* 804B1FA8  38 83 60 0C */	addi r4, r3, lit_770@l /* 0x8064600C@l */
/* 804B1FAC  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804B1FB0  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804B1FB4  C8 64 00 00 */	lfd f3, 0(r4)
/* 804B1FB8  38 81 00 CC */	addi r4, r1, 0xcc
/* 804B1FBC  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804B1FC0  EC 44 10 28 */	fsubs f2, f4, f2
/* 804B1FC4  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804B1FC8  EC 60 18 28 */	fsubs f3, f0, f3
/* 804B1FCC  4B FF F9 55 */	bl func_calc_spec_drop_time
/* 804B1FD0  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804B1FD4  38 81 00 68 */	addi r4, r1, 0x68
/* 804B1FD8  80 63 00 00 */	lwz r3, 0(r3)
/* 804B1FDC  3C 63 00 01 */	addis r3, r3, 1
/* 804B1FE0  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804B1FE4  4B FF F9 85 */	bl bIT_actor_drop_entry_main
/* 804B1FE8  2C 03 00 00 */	cmpwi r3, 0
/* 804B1FEC  41 82 00 3C */	beq lbl_804B2028
/* 804B1FF0  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804B1FF4  28 00 00 62 */	cmplwi r0, 0x62
/* 804B1FF8  41 82 00 30 */	beq lbl_804B2028
/* 804B1FFC  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804B2000  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B2004  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 804B2008  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B200C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B2010  38 81 00 08 */	addi r4, r1, 8
/* 804B2014  90 A1 00 08 */	stw r5, 8(r1)
/* 804B2018  38 A0 00 00 */	li r5, 0
/* 804B201C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804B2020  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B2024  4B EF 58 0D */	bl mFI_SetFG_common
lbl_804B2028:
/* 804B2028  7E 63 9B 78 */	mr r3, r19
/* 804B202C  38 81 00 5C */	addi r4, r1, 0x5c
/* 804B2030  4B F0 8E 8D */	bl xyz_t_move
/* 804B2034  48 00 01 94 */	b lbl_804B21C8
lbl_804B2038:
/* 804B2038  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 804B203C  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804B2040  2C 00 00 01 */	cmpwi r0, 1
/* 804B2044  41 82 00 0C */	beq lbl_804B2050
/* 804B2048  2C 00 00 03 */	cmpwi r0, 3
/* 804B204C  40 82 00 14 */	bne lbl_804B2060
lbl_804B2050:
/* 804B2050  38 60 00 01 */	li r3, 1
/* 804B2054  38 00 02 00 */	li r0, 0x200
/* 804B2058  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804B205C  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804B2060:
/* 804B2060  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804B2064  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804B2068  41 82 00 1C */	beq lbl_804B2084
/* 804B206C  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646034@ha */
/* 804B2070  38 00 00 1A */	li r0, 0x1a
/* 804B2074  C0 03 60 34 */	lfs f0, lit_1311@l(r3)  /* 0x80646034@l */
/* 804B2078  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B207C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B2080  48 00 00 20 */	b lbl_804B20A0
lbl_804B2084:
/* 804B2084  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646038@ha */
/* 804B2088  38 9F 00 0E */	addi r4, r31, 0xe
/* 804B208C  C0 03 60 38 */	lfs f0, lit_1312@l(r3)  /* 0x80646038@l */
/* 804B2090  38 1F 00 01 */	addi r0, r31, 1
/* 804B2094  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804B2098  B0 01 00 F2 */	sth r0, 0xf2(r1)
/* 804B209C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804B20A0:
/* 804B20A0  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804B20A4  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B20A8  C0 03 5F EC */	lfs f0, data_80645FEC@l(r3)  /* 0x80645FEC@l */
/* 804B20AC  38 A0 00 0C */	li r5, 0xc
/* 804B20B0  60 06 00 24 */	ori r6, r0, 0x24
/* 804B20B4  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804B20B8  38 80 00 1B */	li r4, 0x1b
/* 804B20BC  38 60 00 00 */	li r3, 0
/* 804B20C0  54 C0 05 AD */	rlwinm. r0, r6, 0, 0x16, 0x16
/* 804B20C4  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 804B20C8  B0 C1 00 D4 */	sth r6, 0xd4(r1)
/* 804B20CC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804B20D0  B0 A1 00 E0 */	sth r5, 0xe0(r1)
/* 804B20D4  B0 81 00 D8 */	sth r4, 0xd8(r1)
/* 804B20D8  B0 61 00 FA */	sth r3, 0xfa(r1)
/* 804B20DC  41 82 00 1C */	beq lbl_804B20F8
/* 804B20E0  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646034@ha */
/* 804B20E4  38 00 00 1A */	li r0, 0x1a
/* 804B20E8  C0 03 60 34 */	lfs f0, lit_1311@l(r3)  /* 0x80646034@l */
/* 804B20EC  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B20F0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B20F4  48 00 00 18 */	b lbl_804B210C
lbl_804B20F8:
/* 804B20F8  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646038@ha */
/* 804B20FC  38 1F 00 0E */	addi r0, r31, 0xe
/* 804B2100  C0 03 60 38 */	lfs f0, lit_1312@l(r3)  /* 0x80646038@l */
/* 804B2104  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B2108  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804B210C:
/* 804B210C  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804B2110  38 00 00 00 */	li r0, 0
/* 804B2114  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804B2118  28 03 00 08 */	cmplwi r3, 8
/* 804B211C  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804B2120  41 80 00 0C */	blt lbl_804B212C
/* 804B2124  28 03 00 0A */	cmplwi r3, 0xa
/* 804B2128  40 81 00 14 */	ble lbl_804B213C
lbl_804B212C:
/* 804B212C  28 03 25 14 */	cmplwi r3, 0x2514
/* 804B2130  41 80 00 24 */	blt lbl_804B2154
/* 804B2134  28 03 25 1B */	cmplwi r3, 0x251b
/* 804B2138  41 81 00 1C */	bgt lbl_804B2154
lbl_804B213C:
/* 804B213C  7F 25 CB 78 */	mr r5, r25
/* 804B2140  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B2144  4B FF ED 8D */	bl bIT_actor_rand_pos_get_plus
/* 804B2148  7F 23 CB 78 */	mr r3, r25
/* 804B214C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B2150  4B F0 8D 6D */	bl xyz_t_move
lbl_804B2154:
/* 804B2154  7F 23 CB 78 */	mr r3, r25
/* 804B2158  7F 44 D3 78 */	mr r4, r26
/* 804B215C  4B F0 8F 31 */	bl search_position_distanceXZ
/* 804B2160  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804B2164  3C 00 43 30 */	lis r0, 0x4330
/* 804B2168  90 01 01 10 */	stw r0, 0x110(r1)
/* 804B216C  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B2170  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804B2174  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804B2178  90 01 01 14 */	stw r0, 0x114(r1)
/* 804B217C  38 83 60 0C */	addi r4, r3, lit_770@l /* 0x8064600C@l */
/* 804B2180  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804B2184  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804B2188  C8 64 00 00 */	lfd f3, 0(r4)
/* 804B218C  38 81 00 CC */	addi r4, r1, 0xcc
/* 804B2190  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804B2194  EC 44 10 28 */	fsubs f2, f4, f2
/* 804B2198  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804B219C  EC 60 18 28 */	fsubs f3, f0, f3
/* 804B21A0  4B FF F7 81 */	bl func_calc_spec_drop_time
/* 804B21A4  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804B21A8  38 81 00 68 */	addi r4, r1, 0x68
/* 804B21AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B21B0  3C 63 00 01 */	addis r3, r3, 1
/* 804B21B4  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804B21B8  4B FF F7 B1 */	bl bIT_actor_drop_entry_main
/* 804B21BC  7E 63 9B 78 */	mr r3, r19
/* 804B21C0  38 9B 2D 28 */	addi r4, r27, 0x2d28
/* 804B21C4  4B F0 8C F9 */	bl xyz_t_move
lbl_804B21C8:
/* 804B21C8  3A B5 00 01 */	addi r21, r21, 1
/* 804B21CC  3B FF 00 04 */	addi r31, r31, 4
/* 804B21D0  3B DE 00 0C */	addi r30, r30, 0xc
/* 804B21D4  3B BD 00 08 */	addi r29, r29, 8
lbl_804B21D8:
/* 804B21D8  7C 15 B8 00 */	cmpw r21, r23
/* 804B21DC  41 80 FB 10 */	blt lbl_804B1CEC
/* 804B21E0  38 60 00 00 */	li r3, 0
/* 804B21E4  39 61 01 60 */	addi r11, r1, 0x160
/* 804B21E8  4B BE 8C FD */	bl __restore_gpr
/* 804B21EC  80 01 01 64 */	lwz r0, 0x164(r1)
/* 804B21F0  7C 08 03 A6 */	mtlr r0
/* 804B21F4  38 21 01 60 */	addi r1, r1, 0x160
/* 804B21F8  4E 80 00 20 */	blr 
