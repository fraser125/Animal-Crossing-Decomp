lbl_803D4AB8:
/* 803D4AB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D4ABC  7C 08 02 A6 */	mflr r0
/* 803D4AC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D4AC4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D4AC8  4B CC 63 F1 */	bl func_8009AEB8
/* 803D4ACC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D4AD0  7C 76 1B 78 */	mr r22, r3
/* 803D4AD4  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803D4AD8  7C 97 23 78 */	mr r23, r4
/* 803D4ADC  3F 83 00 02 */	addis r28, r3, 2
/* 803D4AE0  A0 7C 34 40 */	lhz r3, 0x3440(r28)
/* 803D4AE4  3B 5C 34 40 */	addi r26, r28, 0x3440
/* 803D4AE8  3B 9C 34 50 */	addi r28, r28, 0x3450
/* 803D4AEC  4B FF FA 49 */	bl mNpc_GetIslandRoomP
/* 803D4AF0  56 E0 A7 3E */	rlwinm r0, r23, 0x14, 0x1c, 0x1f
/* 803D4AF4  7C 7B 1B 78 */	mr r27, r3
/* 803D4AF8  2C 00 00 01 */	cmpwi r0, 1
/* 803D4AFC  3B A0 00 00 */	li r29, 0
/* 803D4B00  3B 20 00 00 */	li r25, 0
/* 803D4B04  3B 00 00 00 */	li r24, 0
/* 803D4B08  41 82 00 0C */	beq lbl_803D4B14
/* 803D4B0C  2C 00 00 03 */	cmpwi r0, 3
/* 803D4B10  40 82 02 30 */	bne lbl_803D4D40
lbl_803D4B14:
/* 803D4B14  28 1B 00 00 */	cmplwi r27, 0
/* 803D4B18  41 82 02 28 */	beq lbl_803D4D40
/* 803D4B1C  28 16 00 00 */	cmplwi r22, 0
/* 803D4B20  41 82 02 20 */	beq lbl_803D4D40
/* 803D4B24  7E C3 B3 78 */	mr r3, r22
/* 803D4B28  48 00 B5 1D */	bl mPr_NullCheckPersonalID
/* 803D4B2C  2C 03 00 00 */	cmpwi r3, 0
/* 803D4B30  40 82 02 10 */	bne lbl_803D4D40
/* 803D4B34  7E C3 B3 78 */	mr r3, r22
/* 803D4B38  7F 84 E3 78 */	mr r4, r28
/* 803D4B3C  38 A0 00 07 */	li r5, 7
/* 803D4B40  4B FF 72 39 */	bl mNpc_GetAnimalMemoryIdx
/* 803D4B44  2C 03 FF FF */	cmpwi r3, -1
/* 803D4B48  40 82 00 30 */	bne lbl_803D4B78
/* 803D4B4C  7F 43 D3 78 */	mr r3, r26
/* 803D4B50  7F 84 E3 78 */	mr r4, r28
/* 803D4B54  38 A0 00 07 */	li r5, 7
/* 803D4B58  4B FF 6F 71 */	bl mNpc_ForceGetFreeAnimalMemoryIdx
/* 803D4B5C  1C 03 01 38 */	mulli r0, r3, 0x138
/* 803D4B60  7E C3 B3 78 */	mr r3, r22
/* 803D4B64  7F 44 D3 78 */	mr r4, r26
/* 803D4B68  7F 9C 02 14 */	add r28, r28, r0
/* 803D4B6C  7F 85 E3 78 */	mr r5, r28
/* 803D4B70  4B FF 71 B5 */	bl mNpc_SetAnimalMemory
/* 803D4B74  48 00 00 0C */	b lbl_803D4B80
lbl_803D4B78:
/* 803D4B78  1C 03 01 38 */	mulli r0, r3, 0x138
/* 803D4B7C  7F 9C 02 14 */	add r28, r28, r0
lbl_803D4B80:
/* 803D4B80  28 1C 00 00 */	cmplwi r28, 0
/* 803D4B84  41 82 01 BC */	beq lbl_803D4D40
/* 803D4B88  7E E3 BB 78 */	mr r3, r23
/* 803D4B8C  4B FF FE 45 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 803D4B90  2C 03 00 01 */	cmpwi r3, 1
/* 803D4B94  40 82 00 40 */	bne lbl_803D4BD4
/* 803D4B98  7E E3 BB 78 */	mr r3, r23
/* 803D4B9C  4B FF F3 5D */	bl mNpc_GetIslandFtrIdx
/* 803D4BA0  7C 77 1B 78 */	mr r23, r3
/* 803D4BA4  2C 17 FF FF */	cmpwi r23, -1
/* 803D4BA8  41 82 01 98 */	beq lbl_803D4D40
/* 803D4BAC  4B FF FA 91 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D4BB0  2C 03 FF FF */	cmpwi r3, -1
/* 803D4BB4  40 82 01 8C */	bne lbl_803D4D40
/* 803D4BB8  38 00 00 01 */	li r0, 1
/* 803D4BBC  A0 7C 00 20 */	lhz r3, 0x20(r28)
/* 803D4BC0  7C 00 B8 30 */	slw r0, r0, r23
/* 803D4BC4  3B 20 00 01 */	li r25, 1
/* 803D4BC8  7C 60 03 78 */	or r0, r3, r0
/* 803D4BCC  B0 1C 00 20 */	sth r0, 0x20(r28)
/* 803D4BD0  48 00 01 70 */	b lbl_803D4D40
lbl_803D4BD4:
/* 803D4BD4  7E E3 BB 78 */	mr r3, r23
/* 803D4BD8  48 09 EF 75 */	bl aMR_GetFurnitureUnit
/* 803D4BDC  2C 03 00 00 */	cmpwi r3, 0
/* 803D4BE0  40 82 00 14 */	bne lbl_803D4BF4
/* 803D4BE4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FEB3@ha */
/* 803D4BE8  38 03 FE B3 */	addi r0, r3, 0xFEB3 /* 0x0000FEB3@l */
/* 803D4BEC  38 83 FE B7 */	addi r4, r3, -329
/* 803D4BF0  48 00 00 1C */	b lbl_803D4C0C
lbl_803D4BF4:
/* 803D4BF4  38 03 00 01 */	addi r0, r3, 1
/* 803D4BF8  38 80 00 00 */	li r4, 0
/* 803D4BFC  54 03 10 3A */	slwi r3, r0, 2
/* 803D4C00  3C 63 00 01 */	addis r3, r3, 1
/* 803D4C04  38 03 FE B3 */	addi r0, r3, -333
/* 803D4C08  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_803D4C0C:
/* 803D4C0C  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 803D4C10  54 9E 04 3E */	clrlwi r30, r4, 0x10
/* 803D4C14  3A C0 00 00 */	li r22, 0
lbl_803D4C18:
/* 803D4C18  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803D4C1C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D4C20  2C 00 00 01 */	cmpwi r0, 1
/* 803D4C24  41 82 00 0C */	beq lbl_803D4C30
/* 803D4C28  2C 00 00 03 */	cmpwi r0, 3
/* 803D4C2C  40 82 00 0C */	bne lbl_803D4C38
lbl_803D4C30:
/* 803D4C30  3B BD 00 01 */	addi r29, r29, 1
/* 803D4C34  48 00 00 F4 */	b lbl_803D4D28
lbl_803D4C38:
/* 803D4C38  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D4C3C  41 80 00 EC */	blt lbl_803D4D28
/* 803D4C40  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D4C44  41 81 00 E4 */	bgt lbl_803D4D28
/* 803D4C48  38 00 00 04 */	li r0, 4
/* 803D4C4C  3B 40 FF FF */	li r26, -1
/* 803D4C50  38 80 00 00 */	li r4, 0
/* 803D4C54  7C 09 03 A6 */	mtctr r0
lbl_803D4C58:
/* 803D4C58  7C 1F 22 14 */	add r0, r31, r4
/* 803D4C5C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D4C60  7C 03 00 40 */	cmplw r3, r0
/* 803D4C64  40 82 00 10 */	bne lbl_803D4C74
/* 803D4C68  7C 98 23 78 */	mr r24, r4
/* 803D4C6C  3B 40 00 00 */	li r26, 0
/* 803D4C70  48 00 00 28 */	b lbl_803D4C98
lbl_803D4C74:
/* 803D4C74  7C 1E 22 14 */	add r0, r30, r4
/* 803D4C78  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D4C7C  7C 03 00 40 */	cmplw r3, r0
/* 803D4C80  40 82 00 10 */	bne lbl_803D4C90
/* 803D4C84  7C 98 23 78 */	mr r24, r4
/* 803D4C88  3B 40 00 01 */	li r26, 1
/* 803D4C8C  48 00 00 0C */	b lbl_803D4C98
lbl_803D4C90:
/* 803D4C90  38 84 00 01 */	addi r4, r4, 1
/* 803D4C94  42 00 FF C4 */	bdnz lbl_803D4C58
lbl_803D4C98:
/* 803D4C98  2C 1A FF FF */	cmpwi r26, -1
/* 803D4C9C  41 82 00 88 */	beq lbl_803D4D24
/* 803D4CA0  7F A3 EB 78 */	mr r3, r29
/* 803D4CA4  4B FF F9 99 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D4CA8  2C 03 FF FF */	cmpwi r3, -1
/* 803D4CAC  40 82 00 78 */	bne lbl_803D4D24
/* 803D4CB0  38 00 00 01 */	li r0, 1
/* 803D4CB4  A0 7C 00 20 */	lhz r3, 0x20(r28)
/* 803D4CB8  7C 00 E8 30 */	slw r0, r0, r29
/* 803D4CBC  2C 1A 00 00 */	cmpwi r26, 0
/* 803D4CC0  7C 60 03 78 */	or r0, r3, r0
/* 803D4CC4  B0 1C 00 20 */	sth r0, 0x20(r28)
/* 803D4CC8  40 82 00 18 */	bne lbl_803D4CE0
/* 803D4CCC  3C 7F FF FF */	addis r3, r31, 0xffff
/* 803D4CD0  38 03 01 4D */	addi r0, r3, 0x14d
/* 803D4CD4  7C 00 16 70 */	srawi r0, r0, 2
/* 803D4CD8  7F 40 01 94 */	addze r26, r0
/* 803D4CDC  48 00 00 14 */	b lbl_803D4CF0
lbl_803D4CE0:
/* 803D4CE0  3C 7E FF FF */	addis r3, r30, 0xffff
/* 803D4CE4  38 03 01 4D */	addi r0, r3, 0x14d
/* 803D4CE8  7C 00 16 70 */	srawi r0, r0, 2
/* 803D4CEC  7F 40 01 94 */	addze r26, r0
lbl_803D4CF0:
/* 803D4CF0  2C 1A 00 04 */	cmpwi r26, 4
/* 803D4CF4  40 80 00 4C */	bge lbl_803D4D40
/* 803D4CF8  7E E3 BB 78 */	mr r3, r23
/* 803D4CFC  7F 04 C3 78 */	mr r4, r24
/* 803D4D00  48 09 EF 45 */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D4D04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D4D08  57 40 08 3C */	slwi r0, r26, 1
/* 803D4D0C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D4D10  3B 20 00 01 */	li r25, 1
/* 803D4D14  3C 84 00 02 */	addis r4, r4, 2
/* 803D4D18  7C 84 02 14 */	add r4, r4, r0
/* 803D4D1C  B0 64 3D 18 */	sth r3, 0x3d18(r4)
/* 803D4D20  48 00 00 20 */	b lbl_803D4D40
lbl_803D4D24:
/* 803D4D24  3B BD 00 01 */	addi r29, r29, 1
lbl_803D4D28:
/* 803D4D28  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803D4D2C  41 82 00 14 */	beq lbl_803D4D40
/* 803D4D30  3A D6 00 01 */	addi r22, r22, 1
/* 803D4D34  3B 7B 00 02 */	addi r27, r27, 2
/* 803D4D38  2C 16 01 00 */	cmpwi r22, 0x100
/* 803D4D3C  41 80 FE DC */	blt lbl_803D4C18
lbl_803D4D40:
/* 803D4D40  7F 23 CB 78 */	mr r3, r25
/* 803D4D44  39 61 00 30 */	addi r11, r1, 0x30
/* 803D4D48  4B CC 61 BD */	bl func_8009AF04
/* 803D4D4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D4D50  7C 08 03 A6 */	mtlr r0
/* 803D4D54  38 21 00 30 */	addi r1, r1, 0x30
/* 803D4D58  4E 80 00 20 */	blr 
