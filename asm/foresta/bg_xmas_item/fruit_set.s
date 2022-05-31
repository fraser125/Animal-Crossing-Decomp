lbl_804C7E84:
/* 804C7E84  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 804C7E88  7C 08 02 A6 */	mflr r0
/* 804C7E8C  90 01 01 64 */	stw r0, 0x164(r1)
/* 804C7E90  39 61 01 60 */	addi r11, r1, 0x160
/* 804C7E94  4B BD 30 05 */	bl __save_gpr
/* 804C7E98  3D 40 80 6A */	lis r10, data_80698C10@ha /* 0x80698C10@ha */
/* 804C7E9C  7C 6F 1B 78 */	mr r15, r3
/* 804C7EA0  7C 90 23 78 */	mr r16, r4
/* 804C7EA4  7C B1 2B 78 */	mr r17, r5
/* 804C7EA8  7C CE 33 78 */	mr r14, r6
/* 804C7EAC  7C F2 3B 78 */	mr r18, r7
/* 804C7EB0  7D 13 43 78 */	mr r19, r8
/* 804C7EB4  7D 34 4B 78 */	mr r20, r9
/* 804C7EB8  3B 6A 8C 10 */	addi r27, r10, data_80698C10@l /* 0x80698C10@l */
/* 804C7EBC  38 61 00 44 */	addi r3, r1, 0x44
/* 804C7EC0  4B ED D5 BD */	bl mFI_UtNum2CenterWpos
/* 804C7EC4  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 804C7EC8  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C7ECC  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 804C7ED0  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804C7ED4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804C7ED8  38 61 00 20 */	addi r3, r1, 0x20
/* 804C7EDC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804C7EE0  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C7EE4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804C7EE8  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C7EEC  4B EC 7A AD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C7EF0  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 804C7EF4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804C7EF8  28 00 25 1C */	cmplwi r0, 0x251c
/* 804C7EFC  3A A0 00 00 */	li r21, 0
/* 804C7F00  41 82 00 34 */	beq lbl_804C7F34
/* 804C7F04  7D C0 07 34 */	extsh r0, r14
/* 804C7F08  2C 00 00 01 */	cmpwi r0, 1
/* 804C7F0C  40 82 00 28 */	bne lbl_804C7F34
/* 804C7F10  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804C7F14  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804C7F18  80 63 00 00 */	lwz r3, 0(r3)
/* 804C7F1C  4B F1 17 25 */	bl get_player_actor_withoutCheck
/* 804C7F20  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804C7F24  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 804C7F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C7F2C  40 81 00 08 */	ble lbl_804C7F34
/* 804C7F30  3A A0 00 01 */	li r21, 1
lbl_804C7F34:
/* 804C7F34  2C 15 00 00 */	cmpwi r21, 0
/* 804C7F38  38 A0 00 00 */	li r5, 0
/* 804C7F3C  41 82 00 08 */	beq lbl_804C7F44
/* 804C7F40  38 A0 00 01 */	li r5, 1
lbl_804C7F44:
/* 804C7F44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C7F48  7D C0 07 34 */	extsh r0, r14
/* 804C7F4C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804C7F50  7C B5 2B 78 */	mr r21, r5
/* 804C7F54  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C7F58  3B 41 00 7C */	addi r26, r1, 0x7c
/* 804C7F5C  1F C5 00 0C */	mulli r30, r5, 0xc
/* 804C7F60  3B 21 00 88 */	addi r25, r1, 0x88
/* 804C7F64  3F 04 00 02 */	addis r24, r4, 2
/* 804C7F68  7E E5 02 14 */	add r23, r5, r0
/* 804C7F6C  55 FC 04 3E */	clrlwi r28, r15, 0x10
/* 804C7F70  39 C3 61 E4 */	addi r14, r3, lit_664@l /* 0x806461E4@l */
/* 804C7F74  54 BD 18 38 */	slwi r29, r5, 3
/* 804C7F78  54 BF 10 3A */	slwi r31, r5, 2
/* 804C7F7C  48 00 04 F0 */	b lbl_804C846C
lbl_804C7F80:
/* 804C7F80  2C 12 00 01 */	cmpwi r18, 1
/* 804C7F84  40 82 00 18 */	bne lbl_804C7F9C
/* 804C7F88  7E 04 83 78 */	mr r4, r16
/* 804C7F8C  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C7F90  38 B1 00 01 */	addi r5, r17, 1
/* 804C7F94  4B ED D4 E9 */	bl mFI_UtNum2CenterWpos
/* 804C7F98  48 00 00 24 */	b lbl_804C7FBC
lbl_804C7F9C:
/* 804C7F9C  38 BB 2D 14 */	addi r5, r27, 0x2d14
/* 804C7FA0  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C7FA4  7C A5 EA 14 */	add r5, r5, r29
/* 804C7FA8  80 85 00 00 */	lwz r4, 0(r5)
/* 804C7FAC  80 05 00 04 */	lwz r0, 4(r5)
/* 804C7FB0  7C 90 22 14 */	add r4, r16, r4
/* 804C7FB4  7C B1 02 14 */	add r5, r17, r0
/* 804C7FB8  4B ED D4 C5 */	bl mFI_UtNum2CenterWpos
lbl_804C7FBC:
/* 804C7FBC  28 1C 25 1C */	cmplwi r28, 0x251c
/* 804C7FC0  40 82 00 34 */	bne lbl_804C7FF4
/* 804C7FC4  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C7FC8  38 A1 00 44 */	addi r5, r1, 0x44
/* 804C7FCC  38 80 00 00 */	li r4, 0
/* 804C7FD0  4B FF E4 9D */	bl mFI_search_unit_around_high
/* 804C7FD4  7C 60 1B 78 */	mr r0, r3
/* 804C7FD8  38 7B 2D 74 */	addi r3, r27, 0x2d74
/* 804C7FDC  7C 16 03 78 */	mr r22, r0
/* 804C7FE0  38 81 00 44 */	addi r4, r1, 0x44
/* 804C7FE4  7C 63 F2 14 */	add r3, r3, r30
/* 804C7FE8  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C7FEC  4B EF 2F 59 */	bl xyz_t_add
/* 804C7FF0  48 00 00 8C */	b lbl_804C807C
lbl_804C7FF4:
/* 804C7FF4  28 1C 00 62 */	cmplwi r28, 0x62
/* 804C7FF8  40 82 00 20 */	bne lbl_804C8018
/* 804C7FFC  38 7B 2D 50 */	addi r3, r27, 0x2d50
/* 804C8000  38 81 00 44 */	addi r4, r1, 0x44
/* 804C8004  7C 63 F2 14 */	add r3, r3, r30
/* 804C8008  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C800C  3A C0 00 01 */	li r22, 1
/* 804C8010  4B EF 2F 35 */	bl xyz_t_add
/* 804C8014  48 00 00 68 */	b lbl_804C807C
lbl_804C8018:
/* 804C8018  28 1C 28 07 */	cmplwi r28, 0x2807
/* 804C801C  40 82 00 34 */	bne lbl_804C8050
/* 804C8020  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C8024  38 A1 00 44 */	addi r5, r1, 0x44
/* 804C8028  38 80 00 00 */	li r4, 0
/* 804C802C  4B FF E4 41 */	bl mFI_search_unit_around_high
/* 804C8030  7C 60 1B 78 */	mr r0, r3
/* 804C8034  38 7B 2D 98 */	addi r3, r27, 0x2d98
/* 804C8038  7C 16 03 78 */	mr r22, r0
/* 804C803C  38 81 00 44 */	addi r4, r1, 0x44
/* 804C8040  7C 63 F2 14 */	add r3, r3, r30
/* 804C8044  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C8048  4B EF 2E FD */	bl xyz_t_add
/* 804C804C  48 00 00 30 */	b lbl_804C807C
lbl_804C8050:
/* 804C8050  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C8054  38 A1 00 44 */	addi r5, r1, 0x44
/* 804C8058  38 80 00 00 */	li r4, 0
/* 804C805C  4B FF E4 11 */	bl mFI_search_unit_around_high
/* 804C8060  7C 60 1B 78 */	mr r0, r3
/* 804C8064  38 7B 2D 2C */	addi r3, r27, 0x2d2c
/* 804C8068  7C 16 03 78 */	mr r22, r0
/* 804C806C  38 81 00 44 */	addi r4, r1, 0x44
/* 804C8070  7C 63 F2 14 */	add r3, r3, r30
/* 804C8074  38 A1 00 50 */	addi r5, r1, 0x50
/* 804C8078  4B EF 2E CD */	bl xyz_t_add
lbl_804C807C:
/* 804C807C  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804C8080  38 61 00 14 */	addi r3, r1, 0x14
/* 804C8084  80 81 00 60 */	lwz r4, 0x60(r1)
/* 804C8088  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C808C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804C8090  C0 2E 00 00 */	lfs f1, 0(r14)
/* 804C8094  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C8098  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C809C  4B EC 78 FD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C80A0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804C80A4  7F 43 D3 78 */	mr r3, r26
/* 804C80A8  38 81 00 50 */	addi r4, r1, 0x50
/* 804C80AC  92 81 00 F4 */	stw r20, 0xf4(r1)
/* 804C80B0  B1 E1 00 76 */	sth r15, 0x76(r1)
/* 804C80B4  4B EF 2E 09 */	bl xyz_t_move
/* 804C80B8  7F 23 CB 78 */	mr r3, r25
/* 804C80BC  38 81 00 5C */	addi r4, r1, 0x5c
/* 804C80C0  4B EF 2D FD */	bl xyz_t_move
/* 804C80C4  38 60 00 00 */	li r3, 0
/* 804C80C8  2C 16 00 00 */	cmpwi r22, 0
/* 804C80CC  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804C80D0  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804C80D4  40 82 00 10 */	bne lbl_804C80E4
/* 804C80D8  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804C80DC  28 00 00 62 */	cmplwi r0, 0x62
/* 804C80E0  40 82 01 EC */	bne lbl_804C82CC
lbl_804C80E4:
/* 804C80E4  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804C80E8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804C80EC  2C 00 00 01 */	cmpwi r0, 1
/* 804C80F0  41 82 00 0C */	beq lbl_804C80FC
/* 804C80F4  2C 00 00 03 */	cmpwi r0, 3
/* 804C80F8  40 82 00 10 */	bne lbl_804C8108
lbl_804C80FC:
/* 804C80FC  38 00 02 00 */	li r0, 0x200
/* 804C8100  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804C8104  48 00 00 3C */	b lbl_804C8140
lbl_804C8108:
/* 804C8108  28 03 21 03 */	cmplwi r3, 0x2103
/* 804C810C  40 82 00 14 */	bne lbl_804C8120
/* 804C8110  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804C8114  60 00 10 00 */	ori r0, r0, 0x1000
/* 804C8118  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804C811C  48 00 00 24 */	b lbl_804C8140
lbl_804C8120:
/* 804C8120  38 00 01 00 */	li r0, 0x100
/* 804C8124  28 03 00 62 */	cmplwi r3, 0x62
/* 804C8128  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804C812C  40 82 00 14 */	bne lbl_804C8140
/* 804C8130  2C 16 00 00 */	cmpwi r22, 0
/* 804C8134  41 82 00 0C */	beq lbl_804C8140
/* 804C8138  60 00 04 00 */	ori r0, r0, 0x400
/* 804C813C  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804C8140:
/* 804C8140  A0 81 00 D4 */	lhz r4, 0xd4(r1)
/* 804C8144  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646220@ha */
/* 804C8148  C0 03 62 20 */	lfs f0, lit_1188@l(r3)  /* 0x80646220@l */
/* 804C814C  38 A0 00 00 */	li r5, 0
/* 804C8150  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804C8154  B0 A1 00 FA */	sth r5, 0xfa(r1)
/* 804C8158  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804C815C  41 82 00 28 */	beq lbl_804C8184
/* 804C8160  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646224@ha */
/* 804C8164  38 80 00 01 */	li r4, 1
/* 804C8168  C0 03 62 24 */	lfs f0, lit_1311@l(r3)  /* 0x80646224@l */
/* 804C816C  38 00 00 1A */	li r0, 0x1a
/* 804C8170  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804C8174  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C8178  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C817C  B0 A1 00 D6 */	sth r5, 0xd6(r1)
/* 804C8180  48 00 00 50 */	b lbl_804C81D0
lbl_804C8184:
/* 804C8184  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 804C8188  41 82 00 24 */	beq lbl_804C81AC
/* 804C818C  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646228@ha */
/* 804C8190  38 80 00 05 */	li r4, 5
/* 804C8194  C0 03 62 28 */	lfs f0, lit_1312@l(r3)  /* 0x80646228@l */
/* 804C8198  38 00 00 01 */	li r0, 1
/* 804C819C  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804C81A0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C81A4  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804C81A8  48 00 00 28 */	b lbl_804C81D0
lbl_804C81AC:
/* 804C81AC  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646228@ha */
/* 804C81B0  38 BF 00 0E */	addi r5, r31, 0xe
/* 804C81B4  C0 03 62 28 */	lfs f0, lit_1312@l(r3)  /* 0x80646228@l */
/* 804C81B8  38 9F 00 01 */	addi r4, r31, 1
/* 804C81BC  38 00 00 01 */	li r0, 1
/* 804C81C0  B0 A1 00 B8 */	sth r5, 0xb8(r1)
/* 804C81C4  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804C81C8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C81CC  B0 01 00 D6 */	sth r0, 0xd6(r1)
lbl_804C81D0:
/* 804C81D0  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804C81D4  38 00 00 00 */	li r0, 0
/* 804C81D8  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804C81DC  28 03 00 08 */	cmplwi r3, 8
/* 804C81E0  41 80 00 0C */	blt lbl_804C81EC
/* 804C81E4  28 03 00 0A */	cmplwi r3, 0xa
/* 804C81E8  40 81 00 14 */	ble lbl_804C81FC
lbl_804C81EC:
/* 804C81EC  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C81F0  41 80 00 24 */	blt lbl_804C8214
/* 804C81F4  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C81F8  41 81 00 1C */	bgt lbl_804C8214
lbl_804C81FC:
/* 804C81FC  7F 25 CB 78 */	mr r5, r25
/* 804C8200  38 81 00 38 */	addi r4, r1, 0x38
/* 804C8204  4B FF EF 61 */	bl bIT_actor_rand_pos_get_plus
/* 804C8208  7F 23 CB 78 */	mr r3, r25
/* 804C820C  38 81 00 38 */	addi r4, r1, 0x38
/* 804C8210  4B EF 2C AD */	bl xyz_t_move
lbl_804C8214:
/* 804C8214  7F 23 CB 78 */	mr r3, r25
/* 804C8218  7F 44 D3 78 */	mr r4, r26
/* 804C821C  4B EF 2E 71 */	bl search_position_distanceXZ
/* 804C8220  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804C8224  3C 00 43 30 */	lis r0, 0x4330
/* 804C8228  90 01 01 10 */	stw r0, 0x110(r1)
/* 804C822C  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C8230  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C8234  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804C8238  90 01 01 14 */	stw r0, 0x114(r1)
/* 804C823C  38 83 61 FC */	addi r4, r3, lit_770@l /* 0x806461FC@l */
/* 804C8240  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804C8244  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804C8248  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C824C  38 81 00 CC */	addi r4, r1, 0xcc
/* 804C8250  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804C8254  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C8258  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804C825C  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C8260  4B FF F9 55 */	bl func_calc_spec_drop_time
/* 804C8264  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804C8268  38 81 00 68 */	addi r4, r1, 0x68
/* 804C826C  80 63 00 00 */	lwz r3, 0(r3)
/* 804C8270  3C 63 00 01 */	addis r3, r3, 1
/* 804C8274  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804C8278  4B FF F9 85 */	bl bIT_actor_drop_entry_main
/* 804C827C  2C 03 00 00 */	cmpwi r3, 0
/* 804C8280  41 82 00 3C */	beq lbl_804C82BC
/* 804C8284  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804C8288  28 00 00 62 */	cmplwi r0, 0x62
/* 804C828C  41 82 00 30 */	beq lbl_804C82BC
/* 804C8290  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804C8294  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C8298  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 804C829C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C82A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C82A4  38 81 00 08 */	addi r4, r1, 8
/* 804C82A8  90 A1 00 08 */	stw r5, 8(r1)
/* 804C82AC  38 A0 00 00 */	li r5, 0
/* 804C82B0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804C82B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C82B8  4B ED F5 79 */	bl mFI_SetFG_common
lbl_804C82BC:
/* 804C82BC  7E 63 9B 78 */	mr r3, r19
/* 804C82C0  38 81 00 5C */	addi r4, r1, 0x5c
/* 804C82C4  4B EF 2B F9 */	bl xyz_t_move
/* 804C82C8  48 00 01 94 */	b lbl_804C845C
lbl_804C82CC:
/* 804C82CC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 804C82D0  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804C82D4  2C 00 00 01 */	cmpwi r0, 1
/* 804C82D8  41 82 00 0C */	beq lbl_804C82E4
/* 804C82DC  2C 00 00 03 */	cmpwi r0, 3
/* 804C82E0  40 82 00 14 */	bne lbl_804C82F4
lbl_804C82E4:
/* 804C82E4  38 60 00 01 */	li r3, 1
/* 804C82E8  38 00 02 00 */	li r0, 0x200
/* 804C82EC  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804C82F0  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804C82F4:
/* 804C82F4  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804C82F8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C82FC  41 82 00 1C */	beq lbl_804C8318
/* 804C8300  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646224@ha */
/* 804C8304  38 00 00 1A */	li r0, 0x1a
/* 804C8308  C0 03 62 24 */	lfs f0, lit_1311@l(r3)  /* 0x80646224@l */
/* 804C830C  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C8310  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C8314  48 00 00 20 */	b lbl_804C8334
lbl_804C8318:
/* 804C8318  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646228@ha */
/* 804C831C  38 9F 00 0E */	addi r4, r31, 0xe
/* 804C8320  C0 03 62 28 */	lfs f0, lit_1312@l(r3)  /* 0x80646228@l */
/* 804C8324  38 1F 00 01 */	addi r0, r31, 1
/* 804C8328  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804C832C  B0 01 00 F2 */	sth r0, 0xf2(r1)
/* 804C8330  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804C8334:
/* 804C8334  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804C8338  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C833C  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804C8340  38 A0 00 0C */	li r5, 0xc
/* 804C8344  60 06 00 24 */	ori r6, r0, 0x24
/* 804C8348  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804C834C  38 80 00 1B */	li r4, 0x1b
/* 804C8350  38 60 00 00 */	li r3, 0
/* 804C8354  54 C0 05 AD */	rlwinm. r0, r6, 0, 0x16, 0x16
/* 804C8358  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 804C835C  B0 C1 00 D4 */	sth r6, 0xd4(r1)
/* 804C8360  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804C8364  B0 A1 00 E0 */	sth r5, 0xe0(r1)
/* 804C8368  B0 81 00 D8 */	sth r4, 0xd8(r1)
/* 804C836C  B0 61 00 FA */	sth r3, 0xfa(r1)
/* 804C8370  41 82 00 1C */	beq lbl_804C838C
/* 804C8374  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646224@ha */
/* 804C8378  38 00 00 1A */	li r0, 0x1a
/* 804C837C  C0 03 62 24 */	lfs f0, lit_1311@l(r3)  /* 0x80646224@l */
/* 804C8380  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C8384  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804C8388  48 00 00 18 */	b lbl_804C83A0
lbl_804C838C:
/* 804C838C  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646228@ha */
/* 804C8390  38 1F 00 0E */	addi r0, r31, 0xe
/* 804C8394  C0 03 62 28 */	lfs f0, lit_1312@l(r3)  /* 0x80646228@l */
/* 804C8398  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804C839C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804C83A0:
/* 804C83A0  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804C83A4  38 00 00 00 */	li r0, 0
/* 804C83A8  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804C83AC  28 03 00 08 */	cmplwi r3, 8
/* 804C83B0  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804C83B4  41 80 00 0C */	blt lbl_804C83C0
/* 804C83B8  28 03 00 0A */	cmplwi r3, 0xa
/* 804C83BC  40 81 00 14 */	ble lbl_804C83D0
lbl_804C83C0:
/* 804C83C0  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C83C4  41 80 00 24 */	blt lbl_804C83E8
/* 804C83C8  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C83CC  41 81 00 1C */	bgt lbl_804C83E8
lbl_804C83D0:
/* 804C83D0  7F 25 CB 78 */	mr r5, r25
/* 804C83D4  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C83D8  4B FF ED 8D */	bl bIT_actor_rand_pos_get_plus
/* 804C83DC  7F 23 CB 78 */	mr r3, r25
/* 804C83E0  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C83E4  4B EF 2A D9 */	bl xyz_t_move
lbl_804C83E8:
/* 804C83E8  7F 23 CB 78 */	mr r3, r25
/* 804C83EC  7F 44 D3 78 */	mr r4, r26
/* 804C83F0  4B EF 2C 9D */	bl search_position_distanceXZ
/* 804C83F4  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804C83F8  3C 00 43 30 */	lis r0, 0x4330
/* 804C83FC  90 01 01 10 */	stw r0, 0x110(r1)
/* 804C8400  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C8404  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C8408  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804C840C  90 01 01 14 */	stw r0, 0x114(r1)
/* 804C8410  38 83 61 FC */	addi r4, r3, lit_770@l /* 0x806461FC@l */
/* 804C8414  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804C8418  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804C841C  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C8420  38 81 00 CC */	addi r4, r1, 0xcc
/* 804C8424  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804C8428  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C842C  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804C8430  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C8434  4B FF F7 81 */	bl func_calc_spec_drop_time
/* 804C8438  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804C843C  38 81 00 68 */	addi r4, r1, 0x68
/* 804C8440  80 63 00 00 */	lwz r3, 0(r3)
/* 804C8444  3C 63 00 01 */	addis r3, r3, 1
/* 804C8448  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804C844C  4B FF F7 B1 */	bl bIT_actor_drop_entry_main
/* 804C8450  7E 63 9B 78 */	mr r3, r19
/* 804C8454  38 9B 2D B0 */	addi r4, r27, 0x2db0
/* 804C8458  4B EF 2A 65 */	bl xyz_t_move
lbl_804C845C:
/* 804C845C  3A B5 00 01 */	addi r21, r21, 1
/* 804C8460  3B FF 00 04 */	addi r31, r31, 4
/* 804C8464  3B DE 00 0C */	addi r30, r30, 0xc
/* 804C8468  3B BD 00 08 */	addi r29, r29, 8
lbl_804C846C:
/* 804C846C  7C 15 B8 00 */	cmpw r21, r23
/* 804C8470  41 80 FB 10 */	blt lbl_804C7F80
/* 804C8474  38 60 00 00 */	li r3, 0
/* 804C8478  39 61 01 60 */	addi r11, r1, 0x160
/* 804C847C  4B BD 2A 69 */	bl __restore_gpr
/* 804C8480  80 01 01 64 */	lwz r0, 0x164(r1)
/* 804C8484  7C 08 03 A6 */	mtlr r0
/* 804C8488  38 21 01 60 */	addi r1, r1, 0x160
/* 804C848C  4E 80 00 20 */	blr 
