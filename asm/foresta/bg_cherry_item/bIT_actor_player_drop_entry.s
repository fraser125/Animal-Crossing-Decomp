lbl_804B2CFC:
/* 804B2CFC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804B2D00  7C 08 02 A6 */	mflr r0
/* 804B2D04  90 01 00 64 */	stw r0, 0x64(r1)
/* 804B2D08  39 61 00 60 */	addi r11, r1, 0x60
/* 804B2D0C  4B BE 81 C1 */	bl func_8009AECC
/* 804B2D10  7C 9D 23 78 */	mr r29, r4
/* 804B2D14  7C BF 2B 78 */	mr r31, r5
/* 804B2D18  7C DC 33 78 */	mr r28, r6
/* 804B2D1C  7C FE 3B 78 */	mr r30, r7
/* 804B2D20  4B F2 69 21 */	bl get_player_actor_withoutCheck
/* 804B2D24  3C 80 80 64 */	lis r4, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B2D28  7C 7B 1B 78 */	mr r27, r3
/* 804B2D2C  38 64 5F EC */	addi r3, r4, data_80645FEC@l /* 0x80645FEC@l */
/* 804B2D30  7F E4 FB 78 */	mr r4, r31
/* 804B2D34  C0 03 00 00 */	lfs f0, 0(r3)
/* 804B2D38  7F 85 E3 78 */	mr r5, r28
/* 804B2D3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804B2D40  3B E0 00 00 */	li r31, 0
/* 804B2D44  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B2D48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B2D4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B2D50  4B EF 27 2D */	bl mFI_UtNum2CenterWpos
/* 804B2D54  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804B2D58  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B2D5C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804B2D60  38 83 5F F4 */	addi r4, r3, lit_664@l /* 0x80645FF4@l */
/* 804B2D64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B2D68  38 61 00 20 */	addi r3, r1, 0x20
/* 804B2D6C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804B2D70  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B2D74  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804B2D78  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B2D7C  4B ED CC 1D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B2D80  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804B2D84  38 61 00 14 */	addi r3, r1, 0x14
/* 804B2D88  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804B2D8C  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804B2D90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B2D94  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804B2D98  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B2D9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B2DA0  4B EF 46 91 */	bl mFI_GetUnitFG
/* 804B2DA4  7C 7C 1B 79 */	or. r28, r3, r3
/* 804B2DA8  41 82 01 18 */	beq lbl_804B2EC0
/* 804B2DAC  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804B2DB0  28 00 00 00 */	cmplwi r0, 0
/* 804B2DB4  41 82 00 1C */	beq lbl_804B2DD0
/* 804B2DB8  28 00 00 11 */	cmplwi r0, 0x11
/* 804B2DBC  41 80 00 0C */	blt lbl_804B2DC8
/* 804B2DC0  28 00 00 29 */	cmplwi r0, 0x29
/* 804B2DC4  40 81 00 0C */	ble lbl_804B2DD0
lbl_804B2DC8:
/* 804B2DC8  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B2DCC  40 82 00 F4 */	bne lbl_804B2EC0
lbl_804B2DD0:
/* 804B2DD0  38 61 00 38 */	addi r3, r1, 0x38
/* 804B2DD4  38 9B 00 28 */	addi r4, r27, 0x28
/* 804B2DD8  3B 60 00 00 */	li r27, 0
/* 804B2DDC  4B F0 80 E1 */	bl xyz_t_move
/* 804B2DE0  3C 60 80 64 */	lis r3, lit_1003@ha /* 0x80646028@ha */
/* 804B2DE4  57 A0 A7 3F */	rlwinm. r0, r29, 0x14, 0x1c, 0x1f
/* 804B2DE8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804B2DEC  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804B2DF0  C0 03 60 28 */	lfs f0, lit_1003@l(r3)  /* 0x80646028@l */
/* 804B2DF4  EC 01 00 2A */	fadds f0, f1, f0
/* 804B2DF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804B2DFC  40 82 00 30 */	bne lbl_804B2E2C
/* 804B2E00  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804B2E04  2C 00 00 08 */	cmpwi r0, 8
/* 804B2E08  40 82 00 10 */	bne lbl_804B2E18
/* 804B2E0C  63 60 00 03 */	ori r0, r27, 3
/* 804B2E10  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804B2E14  48 00 00 20 */	b lbl_804B2E34
lbl_804B2E18:
/* 804B2E18  2C 00 00 00 */	cmpwi r0, 0
/* 804B2E1C  40 82 00 18 */	bne lbl_804B2E34
/* 804B2E20  63 60 00 01 */	ori r0, r27, 1
/* 804B2E24  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804B2E28  48 00 00 0C */	b lbl_804B2E34
lbl_804B2E2C:
/* 804B2E2C  63 60 00 01 */	ori r0, r27, 1
/* 804B2E30  54 1B 04 3E */	clrlwi r27, r0, 0x10
lbl_804B2E34:
/* 804B2E34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B2E38  7F A4 EB 78 */	mr r4, r29
/* 804B2E3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B2E40  7F 67 DB 78 */	mr r7, r27
/* 804B2E44  3C 63 00 02 */	addis r3, r3, 2
/* 804B2E48  7F C8 F3 78 */	mr r8, r30
/* 804B2E4C  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B2E50  38 A1 00 38 */	addi r5, r1, 0x38
/* 804B2E54  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804B2E58  80 63 00 00 */	lwz r3, 0(r3)
/* 804B2E5C  3C 63 00 01 */	addis r3, r3, 1
/* 804B2E60  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B2E64  48 00 03 D9 */	bl bIT_actor_drop_entry
/* 804B2E68  2C 03 00 00 */	cmpwi r3, 0
/* 804B2E6C  41 82 00 58 */	beq lbl_804B2EC4
/* 804B2E70  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804B2E74  28 00 00 11 */	cmplwi r0, 0x11
/* 804B2E78  41 80 00 0C */	blt lbl_804B2E84
/* 804B2E7C  28 00 00 29 */	cmplwi r0, 0x29
/* 804B2E80  40 81 00 38 */	ble lbl_804B2EB8
lbl_804B2E84:
/* 804B2E84  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B2E88  41 82 00 30 */	beq lbl_804B2EB8
/* 804B2E8C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804B2E90  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B2E94  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 804B2E98  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B2E9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B2EA0  38 81 00 08 */	addi r4, r1, 8
/* 804B2EA4  90 A1 00 08 */	stw r5, 8(r1)
/* 804B2EA8  38 A0 00 00 */	li r5, 0
/* 804B2EAC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804B2EB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B2EB4  4B EF 49 7D */	bl mFI_SetFG_common
lbl_804B2EB8:
/* 804B2EB8  3B E0 00 01 */	li r31, 1
/* 804B2EBC  48 00 00 08 */	b lbl_804B2EC4
lbl_804B2EC0:
/* 804B2EC0  3B E0 FF FF */	li r31, -1
lbl_804B2EC4:
/* 804B2EC4  7F E3 FB 78 */	mr r3, r31
/* 804B2EC8  39 61 00 60 */	addi r11, r1, 0x60
/* 804B2ECC  4B BE 80 4D */	bl func_8009AF18
/* 804B2ED0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B2ED4  7C 08 03 A6 */	mtlr r0
/* 804B2ED8  38 21 00 60 */	addi r1, r1, 0x60
/* 804B2EDC  4E 80 00 20 */	blr 
