lbl_80493DC4:
/* 80493DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493DC8  7C 08 02 A6 */	mflr r0
/* 80493DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80493DD4  4B C0 70 FD */	bl func_8009AED0
/* 80493DD8  7C 9C 23 78 */	mr r28, r4
/* 80493DDC  3B C0 FF FF */	li r30, -1
/* 80493DE0  3B A0 FF FF */	li r29, -1
/* 80493DE4  4B F0 A7 05 */	bl mEv_get_rumor
/* 80493DE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80493DEC  41 82 00 08 */	beq lbl_80493DF4
/* 80493DF0  57 FD 00 FE */	clrlwi r29, r31, 3
lbl_80493DF4:
/* 80493DF4  2C 1D FF FF */	cmpwi r29, -1
/* 80493DF8  41 82 00 28 */	beq lbl_80493E20
/* 80493DFC  57 BD 08 3C */	slwi r29, r29, 1
/* 80493E00  38 60 00 02 */	li r3, 2
/* 80493E04  4B F5 05 CD */	bl mQst_GetRandom
/* 80493E08  3C 80 80 69 */	lis r4, l_ev_cal@ha /* 0x8068B510@ha */
/* 80493E0C  57 80 10 3A */	slwi r0, r28, 2
/* 80493E10  38 84 B5 10 */	addi r4, r4, l_ev_cal@l /* 0x8068B510@l */
/* 80493E14  7F BD 1A 14 */	add r29, r29, r3
/* 80493E18  7C 04 00 2E */	lwzx r0, r4, r0
/* 80493E1C  7F DD 02 14 */	add r30, r29, r0
lbl_80493E20:
/* 80493E20  3C 1F A0 00 */	addis r0, r31, 0xa000
/* 80493E24  28 00 00 05 */	cmplwi r0, 5
/* 80493E28  40 82 00 1C */	bne lbl_80493E44
/* 80493E2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80493E30  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80493E34  3C 63 00 02 */	addis r3, r3, 2
/* 80493E38  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 80493E3C  28 00 00 04 */	cmplwi r0, 4
/* 80493E40  40 82 00 28 */	bne lbl_80493E68
lbl_80493E44:
/* 80493E44  3C 1F A0 00 */	addis r0, r31, 0xa000
/* 80493E48  28 00 00 01 */	cmplwi r0, 1
/* 80493E4C  40 82 00 24 */	bne lbl_80493E70
/* 80493E50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80493E54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80493E58  3C 63 00 02 */	addis r3, r3, 2
/* 80493E5C  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 80493E60  28 00 00 03 */	cmplwi r0, 3
/* 80493E64  41 82 00 0C */	beq lbl_80493E70
lbl_80493E68:
/* 80493E68  3B C0 FF FF */	li r30, -1
/* 80493E6C  48 00 00 58 */	b lbl_80493EC4
lbl_80493E70:
/* 80493E70  3C 7F A0 00 */	addis r3, r31, 0xa000
/* 80493E74  38 03 FF F7 */	addi r0, r3, -9
/* 80493E78  28 00 00 01 */	cmplwi r0, 1
/* 80493E7C  40 81 00 14 */	ble lbl_80493E90
/* 80493E80  28 03 00 15 */	cmplwi r3, 0x15
/* 80493E84  41 82 00 0C */	beq lbl_80493E90
/* 80493E88  28 03 00 16 */	cmplwi r3, 0x16
/* 80493E8C  40 82 00 1C */	bne lbl_80493EA8
lbl_80493E90:
/* 80493E90  38 60 00 00 */	li r3, 0
/* 80493E94  4B F0 74 5D */	bl mEv_get_next_weekday
/* 80493E98  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80493E9C  38 80 00 0E */	li r4, 0xe
/* 80493EA0  4B FF D8 79 */	bl aQMgr_set_number_free_str_add_nichi
/* 80493EA4  48 00 00 20 */	b lbl_80493EC4
lbl_80493EA8:
/* 80493EA8  28 03 00 0D */	cmplwi r3, 0xd
/* 80493EAC  40 82 00 18 */	bne lbl_80493EC4
/* 80493EB0  38 60 00 06 */	li r3, 6
/* 80493EB4  4B F0 74 3D */	bl mEv_get_next_weekday
/* 80493EB8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80493EBC  38 80 00 0F */	li r4, 0xf
/* 80493EC0  4B FF D8 59 */	bl aQMgr_set_number_free_str_add_nichi
lbl_80493EC4:
/* 80493EC4  3C 60 80 40 */	lis r3, lbRk_ToSeiyouReki@ha /* 0x80407658@ha */
/* 80493EC8  38 80 00 10 */	li r4, 0x10
/* 80493ECC  38 63 76 58 */	addi r3, r3, lbRk_ToSeiyouReki@l /* 0x80407658@l */
/* 80493ED0  38 A0 00 11 */	li r5, 0x11
/* 80493ED4  38 C0 00 08 */	li r6, 8
/* 80493ED8  38 E0 00 0F */	li r7, 0xf
/* 80493EDC  4B FF EA 9D */	bl aQMgr_set_calendar_free_str
/* 80493EE0  3C 60 80 40 */	lis r3, lbRk_ToSeiyouReki@ha /* 0x80407658@ha */
/* 80493EE4  38 80 00 12 */	li r4, 0x12
/* 80493EE8  38 63 76 58 */	addi r3, r3, lbRk_ToSeiyouReki@l /* 0x80407658@l */
/* 80493EEC  38 A0 00 13 */	li r5, 0x13
/* 80493EF0  38 C0 00 09 */	li r6, 9
/* 80493EF4  38 E0 00 0D */	li r7, 0xd
/* 80493EF8  4B FF EA 81 */	bl aQMgr_set_calendar_free_str
/* 80493EFC  7F C3 F3 78 */	mr r3, r30
/* 80493F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80493F04  4B C0 70 19 */	bl func_8009AF1C
/* 80493F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493F0C  7C 08 03 A6 */	mtlr r0
/* 80493F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80493F14  4E 80 00 20 */	blr 
