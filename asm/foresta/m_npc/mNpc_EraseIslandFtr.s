lbl_803D4D5C:
/* 803D4D5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D4D60  7C 08 02 A6 */	mflr r0
/* 803D4D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D4D68  39 61 00 30 */	addi r11, r1, 0x30
/* 803D4D6C  4B CC 61 4D */	bl func_8009AEB8
/* 803D4D70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D4D74  7C 7C 1B 78 */	mr r28, r3
/* 803D4D78  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D4D7C  3C 63 00 02 */	addis r3, r3, 2
/* 803D4D80  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D4D84  4B FF F7 B1 */	bl mNpc_GetIslandRoomP
/* 803D4D88  57 80 A7 3E */	rlwinm r0, r28, 0x14, 0x1c, 0x1f
/* 803D4D8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D4D90  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D4D94  7C 7E 1B 78 */	mr r30, r3
/* 803D4D98  3F 24 00 02 */	addis r25, r4, 2
/* 803D4D9C  2C 00 00 01 */	cmpwi r0, 1
/* 803D4DA0  3B 00 00 00 */	li r24, 0
/* 803D4DA4  3B E0 00 00 */	li r31, 0
/* 803D4DA8  3B A0 00 00 */	li r29, 0
/* 803D4DAC  3B 39 3D 18 */	addi r25, r25, 0x3d18
/* 803D4DB0  41 82 00 0C */	beq lbl_803D4DBC
/* 803D4DB4  2C 00 00 03 */	cmpwi r0, 3
/* 803D4DB8  40 82 01 B0 */	bne lbl_803D4F68
lbl_803D4DBC:
/* 803D4DBC  28 1E 00 00 */	cmplwi r30, 0
/* 803D4DC0  41 82 01 A8 */	beq lbl_803D4F68
/* 803D4DC4  7F 83 E3 78 */	mr r3, r28
/* 803D4DC8  4B FF FC 09 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 803D4DCC  2C 03 00 01 */	cmpwi r3, 1
/* 803D4DD0  40 82 00 58 */	bne lbl_803D4E28
/* 803D4DD4  7F 83 E3 78 */	mr r3, r28
/* 803D4DD8  4B FF F1 21 */	bl mNpc_GetIslandFtrIdx
/* 803D4DDC  7C 7A 1B 78 */	mr r26, r3
/* 803D4DE0  4B FF F8 5D */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D4DE4  2C 1A FF FF */	cmpwi r26, -1
/* 803D4DE8  41 82 01 80 */	beq lbl_803D4F68
/* 803D4DEC  2C 03 FF FF */	cmpwi r3, -1
/* 803D4DF0  41 82 01 78 */	beq lbl_803D4F68
/* 803D4DF4  1C 83 01 38 */	mulli r4, r3, 0x138
/* 803D4DF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D4DFC  38 00 00 01 */	li r0, 1
/* 803D4E00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D4E04  7C 63 22 14 */	add r3, r3, r4
/* 803D4E08  7C 00 D0 30 */	slw r0, r0, r26
/* 803D4E0C  3C 63 00 02 */	addis r3, r3, 2
/* 803D4E10  3B A0 00 01 */	li r29, 1
/* 803D4E14  38 83 34 70 */	addi r4, r3, 0x3470
/* 803D4E18  A0 63 34 70 */	lhz r3, 0x3470(r3)
/* 803D4E1C  7C 60 00 78 */	andc r0, r3, r0
/* 803D4E20  B0 04 00 00 */	sth r0, 0(r4)
/* 803D4E24  48 00 01 44 */	b lbl_803D4F68
lbl_803D4E28:
/* 803D4E28  3A E0 00 00 */	li r23, 0
/* 803D4E2C  3B 60 00 00 */	li r27, 0
/* 803D4E30  3B 40 00 00 */	li r26, 0
lbl_803D4E34:
/* 803D4E34  3A C0 00 00 */	li r22, 0
lbl_803D4E38:
/* 803D4E38  7F 83 E3 78 */	mr r3, r28
/* 803D4E3C  7E C4 B3 78 */	mr r4, r22
/* 803D4E40  48 09 EE 05 */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D4E44  7C 19 D2 2E */	lhzx r0, r25, r26
/* 803D4E48  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803D4E4C  7C 03 00 40 */	cmplw r3, r0
/* 803D4E50  40 82 00 1C */	bne lbl_803D4E6C
/* 803D4E54  3C 7B 00 01 */	addis r3, r27, 1
/* 803D4E58  38 00 00 00 */	li r0, 0
/* 803D4E5C  38 63 FE B3 */	addi r3, r3, -333
/* 803D4E60  7C 19 D3 2E */	sthx r0, r25, r26
/* 803D4E64  54 78 04 3E */	clrlwi r24, r3, 0x10
/* 803D4E68  48 00 00 10 */	b lbl_803D4E78
lbl_803D4E6C:
/* 803D4E6C  3A D6 00 01 */	addi r22, r22, 1
/* 803D4E70  2C 16 00 04 */	cmpwi r22, 4
/* 803D4E74  41 80 FF C4 */	blt lbl_803D4E38
lbl_803D4E78:
/* 803D4E78  57 00 04 3F */	clrlwi. r0, r24, 0x10
/* 803D4E7C  40 82 00 18 */	bne lbl_803D4E94
/* 803D4E80  3A F7 00 01 */	addi r23, r23, 1
/* 803D4E84  3B 5A 00 02 */	addi r26, r26, 2
/* 803D4E88  2C 17 00 04 */	cmpwi r23, 4
/* 803D4E8C  3B 7B 00 04 */	addi r27, r27, 4
/* 803D4E90  41 80 FF A4 */	blt lbl_803D4E34
lbl_803D4E94:
/* 803D4E94  57 1A 04 3F */	clrlwi. r26, r24, 0x10
/* 803D4E98  41 82 00 D0 */	beq lbl_803D4F68
/* 803D4E9C  3B 60 00 00 */	li r27, 0
lbl_803D4EA0:
/* 803D4EA0  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803D4EA4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D4EA8  2C 00 00 01 */	cmpwi r0, 1
/* 803D4EAC  41 82 00 0C */	beq lbl_803D4EB8
/* 803D4EB0  2C 00 00 03 */	cmpwi r0, 3
/* 803D4EB4  40 82 00 0C */	bne lbl_803D4EC0
lbl_803D4EB8:
/* 803D4EB8  3B FF 00 01 */	addi r31, r31, 1
/* 803D4EBC  48 00 00 94 */	b lbl_803D4F50
lbl_803D4EC0:
/* 803D4EC0  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D4EC4  41 80 00 8C */	blt lbl_803D4F50
/* 803D4EC8  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D4ECC  41 81 00 84 */	bgt lbl_803D4F50
/* 803D4ED0  38 00 00 04 */	li r0, 4
/* 803D4ED4  38 A0 FF FF */	li r5, -1
/* 803D4ED8  38 80 00 00 */	li r4, 0
/* 803D4EDC  7C 09 03 A6 */	mtctr r0
lbl_803D4EE0:
/* 803D4EE0  7C 1A 22 14 */	add r0, r26, r4
/* 803D4EE4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D4EE8  7C 03 00 40 */	cmplw r3, r0
/* 803D4EEC  40 82 00 0C */	bne lbl_803D4EF8
/* 803D4EF0  38 A0 00 01 */	li r5, 1
/* 803D4EF4  48 00 00 0C */	b lbl_803D4F00
lbl_803D4EF8:
/* 803D4EF8  38 84 00 01 */	addi r4, r4, 1
/* 803D4EFC  42 00 FF E4 */	bdnz lbl_803D4EE0
lbl_803D4F00:
/* 803D4F00  2C 05 FF FF */	cmpwi r5, -1
/* 803D4F04  41 82 00 48 */	beq lbl_803D4F4C
/* 803D4F08  7F E3 FB 78 */	mr r3, r31
/* 803D4F0C  4B FF F7 31 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D4F10  2C 03 FF FF */	cmpwi r3, -1
/* 803D4F14  41 82 00 38 */	beq lbl_803D4F4C
/* 803D4F18  1C 83 01 38 */	mulli r4, r3, 0x138
/* 803D4F1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D4F20  38 00 00 01 */	li r0, 1
/* 803D4F24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D4F28  7C 63 22 14 */	add r3, r3, r4
/* 803D4F2C  7C 00 F8 30 */	slw r0, r0, r31
/* 803D4F30  3C 63 00 02 */	addis r3, r3, 2
/* 803D4F34  3B A0 00 01 */	li r29, 1
/* 803D4F38  38 83 34 70 */	addi r4, r3, 0x3470
/* 803D4F3C  A0 63 34 70 */	lhz r3, 0x3470(r3)
/* 803D4F40  7C 60 00 78 */	andc r0, r3, r0
/* 803D4F44  B0 04 00 00 */	sth r0, 0(r4)
/* 803D4F48  48 00 00 20 */	b lbl_803D4F68
lbl_803D4F4C:
/* 803D4F4C  3B FF 00 01 */	addi r31, r31, 1
lbl_803D4F50:
/* 803D4F50  2C 1F 00 10 */	cmpwi r31, 0x10
/* 803D4F54  41 82 00 14 */	beq lbl_803D4F68
/* 803D4F58  3B 7B 00 01 */	addi r27, r27, 1
/* 803D4F5C  3B DE 00 02 */	addi r30, r30, 2
/* 803D4F60  2C 1B 01 00 */	cmpwi r27, 0x100
/* 803D4F64  41 80 FF 3C */	blt lbl_803D4EA0
lbl_803D4F68:
/* 803D4F68  7F A3 EB 78 */	mr r3, r29
/* 803D4F6C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D4F70  4B CC 5F 95 */	bl func_8009AF04
/* 803D4F74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D4F78  7C 08 03 A6 */	mtlr r0
/* 803D4F7C  38 21 00 30 */	addi r1, r1, 0x30
/* 803D4F80  4E 80 00 20 */	blr 
