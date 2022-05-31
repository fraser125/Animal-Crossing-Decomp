lbl_804E49AC:
/* 804E49AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E49B0  7C 08 02 A6 */	mflr r0
/* 804E49B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E49B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804E49BC  4B BB 65 15 */	bl func_8009AED0
/* 804E49C0  7C 9F 23 78 */	mr r31, r4
/* 804E49C4  7C 7E 1B 78 */	mr r30, r3
/* 804E49C8  3B BF 01 10 */	addi r29, r31, 0x110
/* 804E49CC  38 80 00 0E */	li r4, 0xe
/* 804E49D0  7F A3 EB 78 */	mr r3, r29
/* 804E49D4  4B F0 BD 59 */	bl mSc_bank_regist_check
/* 804E49D8  1C 63 00 5C */	mulli r3, r3, 0x5c
/* 804E49DC  7C 1D 1A AE */	lhax r0, r29, r3
/* 804E49E0  2C 00 00 00 */	cmpwi r0, 0
/* 804E49E4  40 81 01 80 */	ble lbl_804E4B64
/* 804E49E8  7C 7D 1A 14 */	add r3, r29, r3
/* 804E49EC  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 804E49F0  2C 00 00 00 */	cmpwi r0, 0
/* 804E49F4  40 81 01 70 */	ble lbl_804E4B64
/* 804E49F8  A8 03 00 B8 */	lha r0, 0xb8(r3)
/* 804E49FC  2C 00 00 00 */	cmpwi r0, 0
/* 804E4A00  40 81 01 64 */	ble lbl_804E4B64
/* 804E4A04  A8 03 01 14 */	lha r0, 0x114(r3)
/* 804E4A08  2C 00 00 00 */	cmpwi r0, 0
/* 804E4A0C  40 81 01 58 */	ble lbl_804E4B64
/* 804E4A10  A8 03 01 70 */	lha r0, 0x170(r3)
/* 804E4A14  2C 00 00 00 */	cmpwi r0, 0
/* 804E4A18  40 81 01 4C */	ble lbl_804E4B64
/* 804E4A1C  A8 03 01 CC */	lha r0, 0x1cc(r3)
/* 804E4A20  2C 00 00 00 */	cmpwi r0, 0
/* 804E4A24  40 81 01 40 */	ble lbl_804E4B64
/* 804E4A28  A8 03 02 28 */	lha r0, 0x228(r3)
/* 804E4A2C  2C 00 00 00 */	cmpwi r0, 0
/* 804E4A30  40 81 01 34 */	ble lbl_804E4B64
/* 804E4A34  7F C3 F3 78 */	mr r3, r30
/* 804E4A38  7F E4 FB 78 */	mr r4, r31
/* 804E4A3C  4B FF 2D 71 */	bl Player_actor_ItemBank_ct
/* 804E4A40  80 1E 0D 0C */	lwz r0, 0xd0c(r30)
/* 804E4A44  2C 00 00 29 */	cmpwi r0, 0x29
/* 804E4A48  40 82 00 0C */	bne lbl_804E4A54
/* 804E4A4C  7F C3 F3 78 */	mr r3, r30
/* 804E4A50  4B FF 09 1D */	bl Player_actor_SettleRequestMainIndexPriority
lbl_804E4A54:
/* 804E4A54  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 804E4A58  3B BE 01 74 */	addi r29, r30, 0x174
/* 804E4A5C  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 804E4A60  4B EF 4C 6D */	bl mPlib_get_player_mdl_p
/* 804E4A64  7C 64 1B 78 */	mr r4, r3
/* 804E4A68  7F A3 EB 78 */	mr r3, r29
/* 804E4A6C  38 DE 02 54 */	addi r6, r30, 0x254
/* 804E4A70  38 FE 02 F6 */	addi r7, r30, 0x2f6
/* 804E4A74  38 A0 00 00 */	li r5, 0
/* 804E4A78  4B E8 C0 1D */	bl cKF_SkeletonInfo_R_ct
/* 804E4A7C  38 00 00 0E */	li r0, 0xe
/* 804E4A80  38 BE 01 E0 */	addi r5, r30, 0x1e0
/* 804E4A84  38 9D FF FC */	addi r4, r29, -4
/* 804E4A88  7C 09 03 A6 */	mtctr r0
lbl_804E4A8C:
/* 804E4A8C  80 64 00 04 */	lwz r3, 4(r4)
/* 804E4A90  84 04 00 08 */	lwzu r0, 8(r4)
/* 804E4A94  90 65 00 04 */	stw r3, 4(r5)
/* 804E4A98  94 05 00 08 */	stwu r0, 8(r5)
/* 804E4A9C  42 00 FF F0 */	bdnz lbl_804E4A8C
/* 804E4AA0  57 80 07 7E */	clrlwi r0, r28, 0x1d
/* 804E4AA4  2C 00 00 01 */	cmpwi r0, 1
/* 804E4AA8  40 82 00 18 */	bne lbl_804E4AC0
/* 804E4AAC  7F E3 FB 78 */	mr r3, r31
/* 804E4AB0  38 80 00 01 */	li r4, 1
/* 804E4AB4  38 A0 00 00 */	li r5, 0
/* 804E4AB8  4B EF 5C A9 */	bl mPlib_request_main_outdoor_type1
/* 804E4ABC  48 00 00 98 */	b lbl_804E4B54
lbl_804E4AC0:
/* 804E4AC0  2C 00 00 02 */	cmpwi r0, 2
/* 804E4AC4  40 82 00 18 */	bne lbl_804E4ADC
/* 804E4AC8  7F E3 FB 78 */	mr r3, r31
/* 804E4ACC  38 80 00 00 */	li r4, 0
/* 804E4AD0  38 A0 00 00 */	li r5, 0
/* 804E4AD4  4B EF 5C 8D */	bl mPlib_request_main_outdoor_type1
/* 804E4AD8  48 00 00 7C */	b lbl_804E4B54
lbl_804E4ADC:
/* 804E4ADC  2C 00 00 03 */	cmpwi r0, 3
/* 804E4AE0  40 82 00 18 */	bne lbl_804E4AF8
/* 804E4AE4  7F E3 FB 78 */	mr r3, r31
/* 804E4AE8  38 80 00 00 */	li r4, 0
/* 804E4AEC  38 A0 00 01 */	li r5, 1
/* 804E4AF0  4B EF 5C 71 */	bl mPlib_request_main_outdoor_type1
/* 804E4AF4  48 00 00 60 */	b lbl_804E4B54
lbl_804E4AF8:
/* 804E4AF8  2C 00 00 04 */	cmpwi r0, 4
/* 804E4AFC  40 82 00 10 */	bne lbl_804E4B0C
/* 804E4B00  7F E3 FB 78 */	mr r3, r31
/* 804E4B04  4B EF 5B 05 */	bl mPlib_request_main_hide_type1
/* 804E4B08  48 00 00 4C */	b lbl_804E4B54
lbl_804E4B0C:
/* 804E4B0C  2C 00 00 05 */	cmpwi r0, 5
/* 804E4B10  40 82 00 10 */	bne lbl_804E4B20
/* 804E4B14  7F E3 FB 78 */	mr r3, r31
/* 804E4B18  4B EF 5B 31 */	bl mPlib_request_main_groundhog_type1
/* 804E4B1C  48 00 00 38 */	b lbl_804E4B54
lbl_804E4B20:
/* 804E4B20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E4B24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E4B28  3C 63 00 03 */	addis r3, r3, 3
/* 804E4B2C  88 03 88 3D */	lbz r0, -0x77c3(r3)
/* 804E4B30  2C 00 00 01 */	cmpwi r0, 1
/* 804E4B34  40 82 00 14 */	bne lbl_804E4B48
/* 804E4B38  7F E3 FB 78 */	mr r3, r31
/* 804E4B3C  38 80 00 2B */	li r4, 0x2b
/* 804E4B40  48 02 09 09 */	bl func_80505448
/* 804E4B44  48 00 00 10 */	b lbl_804E4B54
lbl_804E4B48:
/* 804E4B48  7F E3 FB 78 */	mr r3, r31
/* 804E4B4C  38 80 00 2B */	li r4, 0x2b
/* 804E4B50  48 00 00 71 */	bl func_804E4BC0
lbl_804E4B54:
/* 804E4B54  7F E3 FB 78 */	mr r3, r31
/* 804E4B58  38 80 00 01 */	li r4, 1
/* 804E4B5C  38 A0 00 01 */	li r5, 1
/* 804E4B60  4B E9 BB 79 */	bl Camera2_request_main_normal
lbl_804E4B64:
/* 804E4B64  39 61 00 20 */	addi r11, r1, 0x20
/* 804E4B68  4B BB 63 B5 */	bl func_8009AF1C
/* 804E4B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E4B70  7C 08 03 A6 */	mtlr r0
/* 804E4B74  38 21 00 20 */	addi r1, r1, 0x20
/* 804E4B78  4E 80 00 20 */	blr 
