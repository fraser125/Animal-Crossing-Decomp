lbl_803C8E24:
/* 803C8E24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803C8E28  7C 08 02 A6 */	mflr r0
/* 803C8E2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803C8E30  39 61 00 40 */	addi r11, r1, 0x40
/* 803C8E34  4B CD 20 A1 */	bl func_8009AED4
/* 803C8E38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C8E3C  7C 7D 1B 78 */	mr r29, r3
/* 803C8E40  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C8E44  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8E48  3F E4 00 02 */	addis r31, r4, 2
/* 803C8E4C  7F FE FB 78 */	mr r30, r31
/* 803C8E50  3B FF 13 1C */	addi r31, r31, 0x131c
/* 803C8E54  7F E4 FB 78 */	mr r4, r31
/* 803C8E58  3B DE 61 20 */	addi r30, r30, 0x6120
/* 803C8E5C  4B FF F1 4D */	bl func_803C7FA8
/* 803C8E60  3C 80 80 66 */	lis r4, data_8065A2F8@ha /* 0x8065A2F8@ha */
/* 803C8E64  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8E68  38 84 A2 F8 */	addi r4, r4, data_8065A2F8@l /* 0x8065A2F8@l */
/* 803C8E6C  38 A0 00 7F */	li r5, 0x7f
/* 803C8E70  48 03 D9 C9 */	bl lbRTC_IsEqualTime
/* 803C8E74  2C 03 00 01 */	cmpwi r3, 1
/* 803C8E78  40 82 00 1C */	bne lbl_803C8E94
/* 803C8E7C  7F C4 F3 78 */	mr r4, r30
/* 803C8E80  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8E84  48 03 E3 B1 */	bl lbRTC_TimeCopy
/* 803C8E88  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8E8C  38 80 00 01 */	li r4, 1
/* 803C8E90  48 03 E1 2D */	bl lbRTC_Sub_DD
lbl_803C8E94:
/* 803C8E94  80 FD 00 00 */	lwz r7, 0(r29)
/* 803C8E98  38 61 00 0C */	addi r3, r1, 0xc
/* 803C8E9C  80 DD 00 04 */	lwz r6, 4(r29)
/* 803C8EA0  38 81 00 08 */	addi r4, r1, 8
/* 803C8EA4  80 1D 00 08 */	lwz r0, 8(r29)
/* 803C8EA8  38 A1 00 18 */	addi r5, r1, 0x18
/* 803C8EAC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803C8EB0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803C8EB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 803C8EB8  4B FD C8 A9 */	bl mFI_Wpos2BlockNum
/* 803C8EBC  4B FD BD D5 */	bl mFI_CheckFieldData
/* 803C8EC0  2C 03 00 01 */	cmpwi r3, 1
/* 803C8EC4  40 82 00 E4 */	bne lbl_803C8FA8
/* 803C8EC8  4B FD BE 05 */	bl mFI_GetFieldId
/* 803C8ECC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C8ED0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C8ED4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803C8ED8  2C 00 00 07 */	cmpwi r0, 7
/* 803C8EDC  40 82 00 CC */	bne lbl_803C8FA8
/* 803C8EE0  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803C8EE4  40 82 00 C4 */	bne lbl_803C8FA8
/* 803C8EE8  4B FF F1 A1 */	bl mMsr_CheckMushroomDay
/* 803C8EEC  2C 03 00 01 */	cmpwi r3, 1
/* 803C8EF0  40 82 00 B8 */	bne lbl_803C8FA8
/* 803C8EF4  88 1F 00 04 */	lbz r0, 4(r31)
/* 803C8EF8  7F C4 F3 78 */	mr r4, r30
/* 803C8EFC  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8F00  54 05 EF FE */	rlwinm r5, r0, 0x1d, 0x1f, 0x1f
/* 803C8F04  4B FF F8 85 */	bl mMsr_GetMushroomNum
/* 803C8F08  2C 03 00 00 */	cmpwi r3, 0
/* 803C8F0C  40 81 00 38 */	ble lbl_803C8F44
/* 803C8F10  2C 03 00 05 */	cmpwi r3, 5
/* 803C8F14  41 81 00 30 */	bgt lbl_803C8F44
/* 803C8F18  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C8F1C  80 A1 00 08 */	lwz r5, 8(r1)
/* 803C8F20  4B FF FC F5 */	bl mMsr_SetMushroomNum
/* 803C8F24  7F E3 FB 78 */	mr r3, r31
/* 803C8F28  7F C4 F3 78 */	mr r4, r30
/* 803C8F2C  4B FF F1 01 */	bl mMsr_Rtc2MushTime
/* 803C8F30  88 1F 00 04 */	lbz r0, 4(r31)
/* 803C8F34  38 60 00 00 */	li r3, 0
/* 803C8F38  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 803C8F3C  98 1F 00 04 */	stb r0, 4(r31)
/* 803C8F40  48 00 00 68 */	b lbl_803C8FA8
lbl_803C8F44:
/* 803C8F44  7F C3 F3 78 */	mr r3, r30
/* 803C8F48  38 81 00 10 */	addi r4, r1, 0x10
/* 803C8F4C  4B FF F1 CD */	bl mMsr_GetFirstClearMushroomNum
/* 803C8F50  2C 03 00 00 */	cmpwi r3, 0
/* 803C8F54  40 81 00 54 */	ble lbl_803C8FA8
/* 803C8F58  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C8F5C  80 A1 00 08 */	lwz r5, 8(r1)
/* 803C8F60  4B FF F5 71 */	bl mMsr_ClearMushrooms
/* 803C8F64  88 1F 00 04 */	lbz r0, 4(r31)
/* 803C8F68  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 803C8F6C  28 00 00 01 */	cmplwi r0, 1
/* 803C8F70  41 82 00 2C */	beq lbl_803C8F9C
/* 803C8F74  7F C4 F3 78 */	mr r4, r30
/* 803C8F78  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8F7C  38 A0 00 70 */	li r5, 0x70
/* 803C8F80  48 03 D8 B9 */	bl lbRTC_IsEqualTime
/* 803C8F84  2C 03 00 00 */	cmpwi r3, 0
/* 803C8F88  40 82 00 14 */	bne lbl_803C8F9C
/* 803C8F8C  88 1F 00 04 */	lbz r0, 4(r31)
/* 803C8F90  38 60 00 01 */	li r3, 1
/* 803C8F94  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 803C8F98  98 1F 00 04 */	stb r0, 4(r31)
lbl_803C8F9C:
/* 803C8F9C  7F E3 FB 78 */	mr r3, r31
/* 803C8FA0  7F C4 F3 78 */	mr r4, r30
/* 803C8FA4  4B FF F0 89 */	bl mMsr_Rtc2MushTime
lbl_803C8FA8:
/* 803C8FA8  39 61 00 40 */	addi r11, r1, 0x40
/* 803C8FAC  4B CD 1F 75 */	bl func_8009AF20
/* 803C8FB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803C8FB4  7C 08 03 A6 */	mtlr r0
/* 803C8FB8  38 21 00 40 */	addi r1, r1, 0x40
/* 803C8FBC  4E 80 00 20 */	blr 
