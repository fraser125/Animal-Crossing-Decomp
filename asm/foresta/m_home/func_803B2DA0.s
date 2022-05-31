lbl_803B2DA0:
/* 803B2DA0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803B2DA4  7C 08 02 A6 */	mflr r0
/* 803B2DA8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 803B2DAC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 803B2DB0  4B CE 81 0D */	bl func_8009AEBC
/* 803B2DB4  54 7E 07 BE */	clrlwi r30, r3, 0x1e
/* 803B2DB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B2DBC  1F FE 26 B0 */	mulli r31, r30, 0x26b0
/* 803B2DC0  3C 80 80 65 */	lis r4, data_806545C8@ha /* 0x806545C8@ha */
/* 803B2DC4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803B2DC8  3B 24 45 C8 */	addi r25, r4, data_806545C8@l /* 0x806545C8@l */
/* 803B2DCC  7C 60 FA 14 */	add r3, r0, r31
/* 803B2DD0  38 80 26 B0 */	li r4, 0x26b0
/* 803B2DD4  3F 43 00 01 */	addis r26, r3, 1
/* 803B2DD8  3B 5A 9C E8 */	addi r26, r26, -25368
/* 803B2DDC  7F 43 D3 78 */	mr r3, r26
/* 803B2DE0  4B CA A2 89 */	bl bzero
/* 803B2DE4  7F 43 D3 78 */	mr r3, r26
/* 803B2DE8  48 02 D2 A5 */	bl mPr_ClearPersonalID
/* 803B2DEC  38 79 04 00 */	addi r3, r25, 0x400
/* 803B2DF0  38 9A 00 38 */	addi r4, r26, 0x38
/* 803B2DF4  38 A0 02 00 */	li r5, 0x200
/* 803B2DF8  4B CA A2 25 */	bl func_8005D01C
/* 803B2DFC  38 60 00 00 */	li r3, 0
/* 803B2E00  38 00 01 00 */	li r0, 0x100
/* 803B2E04  90 7A 02 3C */	stw r3, 0x23c(r26)
/* 803B2E08  38 9A 11 88 */	addi r4, r26, 0x1188
/* 803B2E0C  38 B9 02 00 */	addi r5, r25, 0x200
/* 803B2E10  90 7A 02 38 */	stw r3, 0x238(r26)
/* 803B2E14  90 7A 02 3C */	stw r3, 0x23c(r26)
/* 803B2E18  90 7A 02 38 */	stw r3, 0x238(r26)
/* 803B2E1C  7C 09 03 A6 */	mtctr r0
lbl_803B2E20:
/* 803B2E20  A0 05 00 00 */	lhz r0, 0(r5)
/* 803B2E24  38 A5 00 02 */	addi r5, r5, 2
/* 803B2E28  B0 04 00 00 */	sth r0, 0(r4)
/* 803B2E2C  38 84 00 02 */	addi r4, r4, 2
/* 803B2E30  42 00 FF F0 */	bdnz lbl_803B2E20
/* 803B2E34  38 00 01 00 */	li r0, 0x100
/* 803B2E38  38 7A 08 E0 */	addi r3, r26, 0x8e0
/* 803B2E3C  38 99 00 00 */	addi r4, r25, 0
/* 803B2E40  7C 09 03 A6 */	mtctr r0
lbl_803B2E44:
/* 803B2E44  A0 04 00 00 */	lhz r0, 0(r4)
/* 803B2E48  38 84 00 02 */	addi r4, r4, 2
/* 803B2E4C  B0 03 00 00 */	sth r0, 0(r3)
/* 803B2E50  38 63 00 02 */	addi r3, r3, 2
/* 803B2E54  42 00 FF F0 */	bdnz lbl_803B2E44
/* 803B2E58  38 7A 1A 30 */	addi r3, r26, 0x1a30
/* 803B2E5C  38 80 00 0A */	li r4, 0xa
/* 803B2E60  48 00 98 F1 */	bl mMl_clear_mail_box
/* 803B2E64  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B2E68  7F 43 D3 78 */	mr r3, r26
/* 803B2E6C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B2E70  3C 04 00 01 */	addis r0, r4, 1
/* 803B2E74  7C 80 FA 14 */	add r4, r0, r31
/* 803B2E78  9B C4 9D 14 */	stb r30, -0x62ec(r4)
/* 803B2E7C  9B C4 9D 16 */	stb r30, -0x62ea(r4)
/* 803B2E80  4B FD 25 75 */	bl mCkRh_InitGokiSaveData_1Room_ByHomeData
/* 803B2E84  7F C3 F3 78 */	mr r3, r30
/* 803B2E88  48 00 01 4D */	bl mHm_SetDefaultPlayerRoomData
/* 803B2E8C  3B 1A 25 F4 */	addi r24, r26, 0x25f4
/* 803B2E90  3B 39 0C 00 */	addi r25, r25, 0xc00
/* 803B2E94  3B 81 00 08 */	addi r28, r1, 8
/* 803B2E98  3A E0 00 00 */	li r23, 0
/* 803B2E9C  3B A0 00 00 */	li r29, 0
/* 803B2EA0  3B 60 00 CD */	li r27, 0xcd
lbl_803B2EA4:
/* 803B2EA4  7C B9 E8 2E */	lwzx r5, r25, r29
/* 803B2EA8  38 61 00 08 */	addi r3, r1, 8
/* 803B2EAC  38 80 00 80 */	li r4, 0x80
/* 803B2EB0  48 03 BE 1D */	bl mString_Load_StringFromRom
/* 803B2EB4  38 61 00 08 */	addi r3, r1, 8
/* 803B2EB8  38 80 00 80 */	li r4, 0x80
/* 803B2EBC  38 A0 00 20 */	li r5, 0x20
/* 803B2EC0  48 00 97 65 */	bl func_803BC624
/* 803B2EC4  7C 7A 1B 78 */	mr r26, r3
/* 803B2EC8  7F 03 C3 78 */	mr r3, r24
/* 803B2ECC  7F 7C D1 AE */	stbx r27, r28, r26
/* 803B2ED0  7F 84 E3 78 */	mr r4, r28
/* 803B2ED4  38 BA 00 01 */	addi r5, r26, 1
/* 803B2ED8  48 00 7B 4D */	bl func_803BAA24
/* 803B2EDC  3A F7 00 01 */	addi r23, r23, 1
/* 803B2EE0  7F 1A C2 14 */	add r24, r26, r24
/* 803B2EE4  2C 17 00 04 */	cmpwi r23, 4
/* 803B2EE8  3B BD 00 04 */	addi r29, r29, 4
/* 803B2EEC  3B 18 00 01 */	addi r24, r24, 1
/* 803B2EF0  41 80 FF B4 */	blt lbl_803B2EA4
/* 803B2EF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B2EF8  38 C0 00 00 */	li r6, 0
/* 803B2EFC  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803B2F00  38 80 00 FF */	li r4, 0xff
/* 803B2F04  3C 05 00 02 */	addis r0, r5, 2
/* 803B2F08  7C 60 F2 14 */	add r3, r0, r30
/* 803B2F0C  3C 05 00 01 */	addis r0, r5, 1
/* 803B2F10  98 C3 13 A0 */	stb r6, 0x13a0(r3)
/* 803B2F14  7C 60 FA 14 */	add r3, r0, r31
/* 803B2F18  98 83 9D 17 */	stb r4, -0x62e9(r3)
/* 803B2F1C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 803B2F20  4B CE 7F E9 */	bl func_8009AF08
/* 803B2F24  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 803B2F28  7C 08 03 A6 */	mtlr r0
/* 803B2F2C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 803B2F30  4E 80 00 20 */	blr 
