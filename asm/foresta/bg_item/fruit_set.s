lbl_804B8F74:
/* 804B8F74  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 804B8F78  7C 08 02 A6 */	mflr r0
/* 804B8F7C  90 01 01 64 */	stw r0, 0x164(r1)
/* 804B8F80  39 61 01 60 */	addi r11, r1, 0x160
/* 804B8F84  4B BE 1F 15 */	bl __save_gpr
/* 804B8F88  3D 40 80 69 */	lis r10, data_80692AE0@ha /* 0x80692AE0@ha */
/* 804B8F8C  7C 6F 1B 78 */	mr r15, r3
/* 804B8F90  7C 90 23 78 */	mr r16, r4
/* 804B8F94  7C B1 2B 78 */	mr r17, r5
/* 804B8F98  7C CE 33 78 */	mr r14, r6
/* 804B8F9C  7C F2 3B 78 */	mr r18, r7
/* 804B8FA0  7D 13 43 78 */	mr r19, r8
/* 804B8FA4  7D 34 4B 78 */	mr r20, r9
/* 804B8FA8  3B 6A 2A E0 */	addi r27, r10, data_80692AE0@l /* 0x80692AE0@l */
/* 804B8FAC  38 61 00 44 */	addi r3, r1, 0x44
/* 804B8FB0  4B EE C4 CD */	bl mFI_UtNum2CenterWpos
/* 804B8FB4  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 804B8FB8  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804B8FBC  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 804B8FC0  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804B8FC4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804B8FC8  38 61 00 20 */	addi r3, r1, 0x20
/* 804B8FCC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804B8FD0  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B8FD4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804B8FD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B8FDC  4B ED 69 BD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B8FE0  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 804B8FE4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804B8FE8  28 00 25 1C */	cmplwi r0, 0x251c
/* 804B8FEC  3A A0 00 00 */	li r21, 0
/* 804B8FF0  41 82 00 34 */	beq lbl_804B9024
/* 804B8FF4  7D C0 07 34 */	extsh r0, r14
/* 804B8FF8  2C 00 00 01 */	cmpwi r0, 1
/* 804B8FFC  40 82 00 28 */	bne lbl_804B9024
/* 804B9000  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804B9004  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804B9008  80 63 00 00 */	lwz r3, 0(r3)
/* 804B900C  4B F2 06 35 */	bl get_player_actor_withoutCheck
/* 804B9010  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804B9014  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 804B9018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B901C  40 81 00 08 */	ble lbl_804B9024
/* 804B9020  3A A0 00 01 */	li r21, 1
lbl_804B9024:
/* 804B9024  2C 15 00 00 */	cmpwi r21, 0
/* 804B9028  38 A0 00 00 */	li r5, 0
/* 804B902C  41 82 00 08 */	beq lbl_804B9034
/* 804B9030  38 A0 00 01 */	li r5, 1
lbl_804B9034:
/* 804B9034  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B9038  7D C0 07 34 */	extsh r0, r14
/* 804B903C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804B9040  7C B5 2B 78 */	mr r21, r5
/* 804B9044  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804B9048  3B 41 00 7C */	addi r26, r1, 0x7c
/* 804B904C  1F C5 00 0C */	mulli r30, r5, 0xc
/* 804B9050  3B 21 00 88 */	addi r25, r1, 0x88
/* 804B9054  3F 04 00 02 */	addis r24, r4, 2
/* 804B9058  7E E5 02 14 */	add r23, r5, r0
/* 804B905C  55 FC 04 3E */	clrlwi r28, r15, 0x10
/* 804B9060  39 C3 60 94 */	addi r14, r3, lit_664@l /* 0x80646094@l */
/* 804B9064  54 BD 18 38 */	slwi r29, r5, 3
/* 804B9068  54 BF 10 3A */	slwi r31, r5, 2
/* 804B906C  48 00 04 F0 */	b lbl_804B955C
lbl_804B9070:
/* 804B9070  2C 12 00 01 */	cmpwi r18, 1
/* 804B9074  40 82 00 18 */	bne lbl_804B908C
/* 804B9078  7E 04 83 78 */	mr r4, r16
/* 804B907C  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B9080  38 B1 00 01 */	addi r5, r17, 1
/* 804B9084  4B EE C3 F9 */	bl mFI_UtNum2CenterWpos
/* 804B9088  48 00 00 24 */	b lbl_804B90AC
lbl_804B908C:
/* 804B908C  38 BB 2C 74 */	addi r5, r27, 0x2c74
/* 804B9090  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B9094  7C A5 EA 14 */	add r5, r5, r29
/* 804B9098  80 85 00 00 */	lwz r4, 0(r5)
/* 804B909C  80 05 00 04 */	lwz r0, 4(r5)
/* 804B90A0  7C 90 22 14 */	add r4, r16, r4
/* 804B90A4  7C B1 02 14 */	add r5, r17, r0
/* 804B90A8  4B EE C3 D5 */	bl mFI_UtNum2CenterWpos
lbl_804B90AC:
/* 804B90AC  28 1C 25 1C */	cmplwi r28, 0x251c
/* 804B90B0  40 82 00 34 */	bne lbl_804B90E4
/* 804B90B4  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B90B8  38 A1 00 44 */	addi r5, r1, 0x44
/* 804B90BC  38 80 00 00 */	li r4, 0
/* 804B90C0  4B FF E4 9D */	bl mFI_search_unit_around_high
/* 804B90C4  7C 60 1B 78 */	mr r0, r3
/* 804B90C8  38 7B 2C D4 */	addi r3, r27, 0x2cd4
/* 804B90CC  7C 16 03 78 */	mr r22, r0
/* 804B90D0  38 81 00 44 */	addi r4, r1, 0x44
/* 804B90D4  7C 63 F2 14 */	add r3, r3, r30
/* 804B90D8  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B90DC  4B F0 1E 69 */	bl xyz_t_add
/* 804B90E0  48 00 00 8C */	b lbl_804B916C
lbl_804B90E4:
/* 804B90E4  28 1C 00 62 */	cmplwi r28, 0x62
/* 804B90E8  40 82 00 20 */	bne lbl_804B9108
/* 804B90EC  38 7B 2C B0 */	addi r3, r27, 0x2cb0
/* 804B90F0  38 81 00 44 */	addi r4, r1, 0x44
/* 804B90F4  7C 63 F2 14 */	add r3, r3, r30
/* 804B90F8  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B90FC  3A C0 00 01 */	li r22, 1
/* 804B9100  4B F0 1E 45 */	bl xyz_t_add
/* 804B9104  48 00 00 68 */	b lbl_804B916C
lbl_804B9108:
/* 804B9108  28 1C 28 07 */	cmplwi r28, 0x2807
/* 804B910C  40 82 00 34 */	bne lbl_804B9140
/* 804B9110  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B9114  38 A1 00 44 */	addi r5, r1, 0x44
/* 804B9118  38 80 00 00 */	li r4, 0
/* 804B911C  4B FF E4 41 */	bl mFI_search_unit_around_high
/* 804B9120  7C 60 1B 78 */	mr r0, r3
/* 804B9124  38 7B 2C F8 */	addi r3, r27, 0x2cf8
/* 804B9128  7C 16 03 78 */	mr r22, r0
/* 804B912C  38 81 00 44 */	addi r4, r1, 0x44
/* 804B9130  7C 63 F2 14 */	add r3, r3, r30
/* 804B9134  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B9138  4B F0 1E 0D */	bl xyz_t_add
/* 804B913C  48 00 00 30 */	b lbl_804B916C
lbl_804B9140:
/* 804B9140  38 61 00 5C */	addi r3, r1, 0x5c
/* 804B9144  38 A1 00 44 */	addi r5, r1, 0x44
/* 804B9148  38 80 00 00 */	li r4, 0
/* 804B914C  4B FF E4 11 */	bl mFI_search_unit_around_high
/* 804B9150  7C 60 1B 78 */	mr r0, r3
/* 804B9154  38 7B 2C 8C */	addi r3, r27, 0x2c8c
/* 804B9158  7C 16 03 78 */	mr r22, r0
/* 804B915C  38 81 00 44 */	addi r4, r1, 0x44
/* 804B9160  7C 63 F2 14 */	add r3, r3, r30
/* 804B9164  38 A1 00 50 */	addi r5, r1, 0x50
/* 804B9168  4B F0 1D DD */	bl xyz_t_add
lbl_804B916C:
/* 804B916C  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804B9170  38 61 00 14 */	addi r3, r1, 0x14
/* 804B9174  80 81 00 60 */	lwz r4, 0x60(r1)
/* 804B9178  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B917C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804B9180  C0 2E 00 00 */	lfs f1, 0(r14)
/* 804B9184  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B9188  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B918C  4B ED 68 0D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B9190  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804B9194  7F 43 D3 78 */	mr r3, r26
/* 804B9198  38 81 00 50 */	addi r4, r1, 0x50
/* 804B919C  92 81 00 F4 */	stw r20, 0xf4(r1)
/* 804B91A0  B1 E1 00 76 */	sth r15, 0x76(r1)
/* 804B91A4  4B F0 1D 19 */	bl xyz_t_move
/* 804B91A8  7F 23 CB 78 */	mr r3, r25
/* 804B91AC  38 81 00 5C */	addi r4, r1, 0x5c
/* 804B91B0  4B F0 1D 0D */	bl xyz_t_move
/* 804B91B4  38 60 00 00 */	li r3, 0
/* 804B91B8  2C 16 00 00 */	cmpwi r22, 0
/* 804B91BC  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804B91C0  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804B91C4  40 82 00 10 */	bne lbl_804B91D4
/* 804B91C8  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804B91CC  28 00 00 62 */	cmplwi r0, 0x62
/* 804B91D0  40 82 01 EC */	bne lbl_804B93BC
lbl_804B91D4:
/* 804B91D4  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804B91D8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804B91DC  2C 00 00 01 */	cmpwi r0, 1
/* 804B91E0  41 82 00 0C */	beq lbl_804B91EC
/* 804B91E4  2C 00 00 03 */	cmpwi r0, 3
/* 804B91E8  40 82 00 10 */	bne lbl_804B91F8
lbl_804B91EC:
/* 804B91EC  38 00 02 00 */	li r0, 0x200
/* 804B91F0  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804B91F4  48 00 00 3C */	b lbl_804B9230
lbl_804B91F8:
/* 804B91F8  28 03 21 03 */	cmplwi r3, 0x2103
/* 804B91FC  40 82 00 14 */	bne lbl_804B9210
/* 804B9200  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804B9204  60 00 10 00 */	ori r0, r0, 0x1000
/* 804B9208  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804B920C  48 00 00 24 */	b lbl_804B9230
lbl_804B9210:
/* 804B9210  38 00 01 00 */	li r0, 0x100
/* 804B9214  28 03 00 62 */	cmplwi r3, 0x62
/* 804B9218  B0 01 00 D4 */	sth r0, 0xd4(r1)
/* 804B921C  40 82 00 14 */	bne lbl_804B9230
/* 804B9220  2C 16 00 00 */	cmpwi r22, 0
/* 804B9224  41 82 00 0C */	beq lbl_804B9230
/* 804B9228  60 00 04 00 */	ori r0, r0, 0x400
/* 804B922C  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804B9230:
/* 804B9230  A0 81 00 D4 */	lhz r4, 0xd4(r1)
/* 804B9234  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x806460D0@ha */
/* 804B9238  C0 03 60 D0 */	lfs f0, lit_1188@l(r3)  /* 0x806460D0@l */
/* 804B923C  38 A0 00 00 */	li r5, 0
/* 804B9240  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804B9244  B0 A1 00 FA */	sth r5, 0xfa(r1)
/* 804B9248  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804B924C  41 82 00 28 */	beq lbl_804B9274
/* 804B9250  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x806460D4@ha */
/* 804B9254  38 80 00 01 */	li r4, 1
/* 804B9258  C0 03 60 D4 */	lfs f0, lit_1311@l(r3)  /* 0x806460D4@l */
/* 804B925C  38 00 00 1A */	li r0, 0x1a
/* 804B9260  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804B9264  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B9268  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B926C  B0 A1 00 D6 */	sth r5, 0xd6(r1)
/* 804B9270  48 00 00 50 */	b lbl_804B92C0
lbl_804B9274:
/* 804B9274  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 804B9278  41 82 00 24 */	beq lbl_804B929C
/* 804B927C  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x806460D8@ha */
/* 804B9280  38 80 00 05 */	li r4, 5
/* 804B9284  C0 03 60 D8 */	lfs f0, lit_1312@l(r3)  /* 0x806460D8@l */
/* 804B9288  38 00 00 01 */	li r0, 1
/* 804B928C  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804B9290  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B9294  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804B9298  48 00 00 28 */	b lbl_804B92C0
lbl_804B929C:
/* 804B929C  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x806460D8@ha */
/* 804B92A0  38 BF 00 0E */	addi r5, r31, 0xe
/* 804B92A4  C0 03 60 D8 */	lfs f0, lit_1312@l(r3)  /* 0x806460D8@l */
/* 804B92A8  38 9F 00 01 */	addi r4, r31, 1
/* 804B92AC  38 00 00 01 */	li r0, 1
/* 804B92B0  B0 A1 00 B8 */	sth r5, 0xb8(r1)
/* 804B92B4  B0 81 00 F2 */	sth r4, 0xf2(r1)
/* 804B92B8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B92BC  B0 01 00 D6 */	sth r0, 0xd6(r1)
lbl_804B92C0:
/* 804B92C0  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804B92C4  38 00 00 00 */	li r0, 0
/* 804B92C8  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804B92CC  28 03 00 08 */	cmplwi r3, 8
/* 804B92D0  41 80 00 0C */	blt lbl_804B92DC
/* 804B92D4  28 03 00 0A */	cmplwi r3, 0xa
/* 804B92D8  40 81 00 14 */	ble lbl_804B92EC
lbl_804B92DC:
/* 804B92DC  28 03 25 14 */	cmplwi r3, 0x2514
/* 804B92E0  41 80 00 24 */	blt lbl_804B9304
/* 804B92E4  28 03 25 1B */	cmplwi r3, 0x251b
/* 804B92E8  41 81 00 1C */	bgt lbl_804B9304
lbl_804B92EC:
/* 804B92EC  7F 25 CB 78 */	mr r5, r25
/* 804B92F0  38 81 00 38 */	addi r4, r1, 0x38
/* 804B92F4  4B FF EF 61 */	bl bIT_actor_rand_pos_get_plus
/* 804B92F8  7F 23 CB 78 */	mr r3, r25
/* 804B92FC  38 81 00 38 */	addi r4, r1, 0x38
/* 804B9300  4B F0 1B BD */	bl xyz_t_move
lbl_804B9304:
/* 804B9304  7F 23 CB 78 */	mr r3, r25
/* 804B9308  7F 44 D3 78 */	mr r4, r26
/* 804B930C  4B F0 1D 81 */	bl search_position_distanceXZ
/* 804B9310  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804B9314  3C 00 43 30 */	lis r0, 0x4330
/* 804B9318  90 01 01 10 */	stw r0, 0x110(r1)
/* 804B931C  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804B9320  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804B9324  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804B9328  90 01 01 14 */	stw r0, 0x114(r1)
/* 804B932C  38 83 60 AC */	addi r4, r3, lit_770@l /* 0x806460AC@l */
/* 804B9330  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804B9334  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804B9338  C8 64 00 00 */	lfd f3, 0(r4)
/* 804B933C  38 81 00 CC */	addi r4, r1, 0xcc
/* 804B9340  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804B9344  EC 44 10 28 */	fsubs f2, f4, f2
/* 804B9348  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804B934C  EC 60 18 28 */	fsubs f3, f0, f3
/* 804B9350  4B FF F9 55 */	bl func_calc_spec_drop_time
/* 804B9354  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804B9358  38 81 00 68 */	addi r4, r1, 0x68
/* 804B935C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9360  3C 63 00 01 */	addis r3, r3, 1
/* 804B9364  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804B9368  4B FF F9 85 */	bl bIT_actor_drop_entry_main
/* 804B936C  2C 03 00 00 */	cmpwi r3, 0
/* 804B9370  41 82 00 3C */	beq lbl_804B93AC
/* 804B9374  A0 01 00 76 */	lhz r0, 0x76(r1)
/* 804B9378  28 00 00 62 */	cmplwi r0, 0x62
/* 804B937C  41 82 00 30 */	beq lbl_804B93AC
/* 804B9380  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804B9384  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B9388  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 804B938C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B9390  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B9394  38 81 00 08 */	addi r4, r1, 8
/* 804B9398  90 A1 00 08 */	stw r5, 8(r1)
/* 804B939C  38 A0 00 00 */	li r5, 0
/* 804B93A0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804B93A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B93A8  4B EE E4 89 */	bl mFI_SetFG_common
lbl_804B93AC:
/* 804B93AC  7E 63 9B 78 */	mr r3, r19
/* 804B93B0  38 81 00 5C */	addi r4, r1, 0x5c
/* 804B93B4  4B F0 1B 09 */	bl xyz_t_move
/* 804B93B8  48 00 01 94 */	b lbl_804B954C
lbl_804B93BC:
/* 804B93BC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 804B93C0  B0 61 00 D4 */	sth r3, 0xd4(r1)
/* 804B93C4  2C 00 00 01 */	cmpwi r0, 1
/* 804B93C8  41 82 00 0C */	beq lbl_804B93D4
/* 804B93CC  2C 00 00 03 */	cmpwi r0, 3
/* 804B93D0  40 82 00 14 */	bne lbl_804B93E4
lbl_804B93D4:
/* 804B93D4  38 60 00 01 */	li r3, 1
/* 804B93D8  38 00 02 00 */	li r0, 0x200
/* 804B93DC  B0 61 00 F2 */	sth r3, 0xf2(r1)
/* 804B93E0  B0 01 00 D4 */	sth r0, 0xd4(r1)
lbl_804B93E4:
/* 804B93E4  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804B93E8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804B93EC  41 82 00 1C */	beq lbl_804B9408
/* 804B93F0  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x806460D4@ha */
/* 804B93F4  38 00 00 1A */	li r0, 0x1a
/* 804B93F8  C0 03 60 D4 */	lfs f0, lit_1311@l(r3)  /* 0x806460D4@l */
/* 804B93FC  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B9400  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B9404  48 00 00 20 */	b lbl_804B9424
lbl_804B9408:
/* 804B9408  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x806460D8@ha */
/* 804B940C  38 9F 00 0E */	addi r4, r31, 0xe
/* 804B9410  C0 03 60 D8 */	lfs f0, lit_1312@l(r3)  /* 0x806460D8@l */
/* 804B9414  38 1F 00 01 */	addi r0, r31, 1
/* 804B9418  B0 81 00 B8 */	sth r4, 0xb8(r1)
/* 804B941C  B0 01 00 F2 */	sth r0, 0xf2(r1)
/* 804B9420  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804B9424:
/* 804B9424  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 804B9428  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804B942C  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804B9430  38 A0 00 0C */	li r5, 0xc
/* 804B9434  60 06 00 24 */	ori r6, r0, 0x24
/* 804B9438  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804B943C  38 80 00 1B */	li r4, 0x1b
/* 804B9440  38 60 00 00 */	li r3, 0
/* 804B9444  54 C0 05 AD */	rlwinm. r0, r6, 0, 0x16, 0x16
/* 804B9448  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 804B944C  B0 C1 00 D4 */	sth r6, 0xd4(r1)
/* 804B9450  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804B9454  B0 A1 00 E0 */	sth r5, 0xe0(r1)
/* 804B9458  B0 81 00 D8 */	sth r4, 0xd8(r1)
/* 804B945C  B0 61 00 FA */	sth r3, 0xfa(r1)
/* 804B9460  41 82 00 1C */	beq lbl_804B947C
/* 804B9464  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x806460D4@ha */
/* 804B9468  38 00 00 1A */	li r0, 0x1a
/* 804B946C  C0 03 60 D4 */	lfs f0, lit_1311@l(r3)  /* 0x806460D4@l */
/* 804B9470  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B9474  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B9478  48 00 00 18 */	b lbl_804B9490
lbl_804B947C:
/* 804B947C  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x806460D8@ha */
/* 804B9480  38 1F 00 0E */	addi r0, r31, 0xe
/* 804B9484  C0 03 60 D8 */	lfs f0, lit_1312@l(r3)  /* 0x806460D8@l */
/* 804B9488  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 804B948C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804B9490:
/* 804B9490  A0 61 00 76 */	lhz r3, 0x76(r1)
/* 804B9494  38 00 00 00 */	li r0, 0
/* 804B9498  B0 01 00 D6 */	sth r0, 0xd6(r1)
/* 804B949C  28 03 00 08 */	cmplwi r3, 8
/* 804B94A0  B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 804B94A4  41 80 00 0C */	blt lbl_804B94B0
/* 804B94A8  28 03 00 0A */	cmplwi r3, 0xa
/* 804B94AC  40 81 00 14 */	ble lbl_804B94C0
lbl_804B94B0:
/* 804B94B0  28 03 25 14 */	cmplwi r3, 0x2514
/* 804B94B4  41 80 00 24 */	blt lbl_804B94D8
/* 804B94B8  28 03 25 1B */	cmplwi r3, 0x251b
/* 804B94BC  41 81 00 1C */	bgt lbl_804B94D8
lbl_804B94C0:
/* 804B94C0  7F 25 CB 78 */	mr r5, r25
/* 804B94C4  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B94C8  4B FF ED 8D */	bl bIT_actor_rand_pos_get_plus
/* 804B94CC  7F 23 CB 78 */	mr r3, r25
/* 804B94D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B94D4  4B F0 19 E9 */	bl xyz_t_move
lbl_804B94D8:
/* 804B94D8  7F 23 CB 78 */	mr r3, r25
/* 804B94DC  7F 44 D3 78 */	mr r4, r26
/* 804B94E0  4B F0 1B AD */	bl search_position_distanceXZ
/* 804B94E4  A8 81 00 B8 */	lha r4, 0xb8(r1)
/* 804B94E8  3C 00 43 30 */	lis r0, 0x4330
/* 804B94EC  90 01 01 10 */	stw r0, 0x110(r1)
/* 804B94F0  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804B94F4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804B94F8  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 804B94FC  90 01 01 14 */	stw r0, 0x114(r1)
/* 804B9500  38 83 60 AC */	addi r4, r3, lit_770@l /* 0x806460AC@l */
/* 804B9504  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804B9508  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804B950C  C8 64 00 00 */	lfd f3, 0(r4)
/* 804B9510  38 81 00 CC */	addi r4, r1, 0xcc
/* 804B9514  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 804B9518  EC 44 10 28 */	fsubs f2, f4, f2
/* 804B951C  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 804B9520  EC 60 18 28 */	fsubs f3, f0, f3
/* 804B9524  4B FF F7 81 */	bl func_calc_spec_drop_time
/* 804B9528  80 78 60 80 */	lwz r3, 0x6080(r24)
/* 804B952C  38 81 00 68 */	addi r4, r1, 0x68
/* 804B9530  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9534  3C 63 00 01 */	addis r3, r3, 1
/* 804B9538  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804B953C  4B FF F7 B1 */	bl bIT_actor_drop_entry_main
/* 804B9540  7E 63 9B 78 */	mr r3, r19
/* 804B9544  38 9B 2D 10 */	addi r4, r27, 0x2d10
/* 804B9548  4B F0 19 75 */	bl xyz_t_move
lbl_804B954C:
/* 804B954C  3A B5 00 01 */	addi r21, r21, 1
/* 804B9550  3B FF 00 04 */	addi r31, r31, 4
/* 804B9554  3B DE 00 0C */	addi r30, r30, 0xc
/* 804B9558  3B BD 00 08 */	addi r29, r29, 8
lbl_804B955C:
/* 804B955C  7C 15 B8 00 */	cmpw r21, r23
/* 804B9560  41 80 FB 10 */	blt lbl_804B9070
/* 804B9564  38 60 00 00 */	li r3, 0
/* 804B9568  39 61 01 60 */	addi r11, r1, 0x160
/* 804B956C  4B BE 19 79 */	bl __restore_gpr
/* 804B9570  80 01 01 64 */	lwz r0, 0x164(r1)
/* 804B9574  7C 08 03 A6 */	mtlr r0
/* 804B9578  38 21 01 60 */	addi r1, r1, 0x160
/* 804B957C  4E 80 00 20 */	blr 
