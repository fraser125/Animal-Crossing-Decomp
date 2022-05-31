lbl_803D58F0:
/* 803D58F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D58F4  7C 08 02 A6 */	mflr r0
/* 803D58F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D58FC  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5900  4B CC 55 C1 */	bl func_8009AEC0
/* 803D5904  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D5908  7C 7D 1B 78 */	mr r29, r3
/* 803D590C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803D5910  7C 9E 23 78 */	mr r30, r4
/* 803D5914  3F 43 00 02 */	addis r26, r3, 2
/* 803D5918  A0 7A 34 40 */	lhz r3, 0x3440(r26)
/* 803D591C  3B 5A 34 50 */	addi r26, r26, 0x3450
/* 803D5920  4B FF EC 15 */	bl mNpc_GetIslandRoomP
/* 803D5924  7C 7B 1B 79 */	or. r27, r3, r3
/* 803D5928  3B 20 00 00 */	li r25, 0
/* 803D592C  3B 00 00 00 */	li r24, 0
/* 803D5930  3B E0 00 00 */	li r31, 0
/* 803D5934  7F 7C DB 78 */	mr r28, r27
/* 803D5938  41 82 01 64 */	beq lbl_803D5A9C
/* 803D593C  28 1D 00 00 */	cmplwi r29, 0
/* 803D5940  41 82 01 5C */	beq lbl_803D5A9C
/* 803D5944  7F A3 EB 78 */	mr r3, r29
/* 803D5948  7F 44 D3 78 */	mr r4, r26
/* 803D594C  38 A0 00 07 */	li r5, 7
/* 803D5950  4B FF 64 29 */	bl mNpc_GetAnimalMemoryIdx
/* 803D5954  7C 7D 1B 78 */	mr r29, r3
/* 803D5958  2C 1D FF FF */	cmpwi r29, -1
/* 803D595C  41 82 01 40 */	beq lbl_803D5A9C
/* 803D5960  3B 40 00 00 */	li r26, 0
lbl_803D5964:
/* 803D5964  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803D5968  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D596C  2C 00 00 01 */	cmpwi r0, 1
/* 803D5970  41 82 00 0C */	beq lbl_803D597C
/* 803D5974  2C 00 00 03 */	cmpwi r0, 3
/* 803D5978  40 82 00 30 */	bne lbl_803D59A8
lbl_803D597C:
/* 803D597C  7F C4 F3 78 */	mr r4, r30
/* 803D5980  48 09 E2 49 */	bl aMR_CorrespondFurniture
/* 803D5984  2C 03 00 00 */	cmpwi r3, 0
/* 803D5988  40 82 00 18 */	bne lbl_803D59A0
/* 803D598C  7F 03 C3 78 */	mr r3, r24
/* 803D5990  4B FF EC AD */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D5994  7C 03 E8 00 */	cmpw r3, r29
/* 803D5998  40 82 00 08 */	bne lbl_803D59A0
/* 803D599C  3B 39 00 01 */	addi r25, r25, 1
lbl_803D59A0:
/* 803D59A0  3B 18 00 01 */	addi r24, r24, 1
/* 803D59A4  48 00 00 18 */	b lbl_803D59BC
lbl_803D59A8:
/* 803D59A8  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D59AC  41 80 00 10 */	blt lbl_803D59BC
/* 803D59B0  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D59B4  41 81 00 08 */	bgt lbl_803D59BC
/* 803D59B8  3B 18 00 01 */	addi r24, r24, 1
lbl_803D59BC:
/* 803D59BC  3B 5A 00 01 */	addi r26, r26, 1
/* 803D59C0  3B 7B 00 02 */	addi r27, r27, 2
/* 803D59C4  2C 1A 01 00 */	cmpwi r26, 0x100
/* 803D59C8  41 80 FF 9C */	blt lbl_803D5964
/* 803D59CC  28 1C 00 00 */	cmplwi r28, 0
/* 803D59D0  3B 60 00 00 */	li r27, 0
/* 803D59D4  41 82 00 C8 */	beq lbl_803D5A9C
/* 803D59D8  2C 19 00 00 */	cmpwi r25, 0
/* 803D59DC  40 81 00 C0 */	ble lbl_803D5A9C
/* 803D59E0  4B C8 73 15 */	bl fqrand
/* 803D59E4  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 803D59E8  3C 00 43 30 */	lis r0, 0x4330
/* 803D59EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D59F0  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D59F4  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D59F8  3B 40 00 00 */	li r26, 0
/* 803D59FC  90 01 00 08 */	stw r0, 8(r1)
/* 803D5A00  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D5A04  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D5A08  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D5A0C  FC 00 00 1E */	fctiwz f0, f0
/* 803D5A10  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D5A14  83 01 00 14 */	lwz r24, 0x14(r1)
lbl_803D5A18:
/* 803D5A18  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D5A1C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D5A20  2C 00 00 01 */	cmpwi r0, 1
/* 803D5A24  41 82 00 0C */	beq lbl_803D5A30
/* 803D5A28  2C 00 00 03 */	cmpwi r0, 3
/* 803D5A2C  40 82 00 4C */	bne lbl_803D5A78
lbl_803D5A30:
/* 803D5A30  7F C4 F3 78 */	mr r4, r30
/* 803D5A34  48 09 E1 95 */	bl aMR_CorrespondFurniture
/* 803D5A38  2C 03 00 00 */	cmpwi r3, 0
/* 803D5A3C  40 82 00 34 */	bne lbl_803D5A70
/* 803D5A40  7F 63 DB 78 */	mr r3, r27
/* 803D5A44  4B FF EB F9 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D5A48  7C 03 E8 00 */	cmpw r3, r29
/* 803D5A4C  40 82 00 24 */	bne lbl_803D5A70
/* 803D5A50  2C 18 00 00 */	cmpwi r24, 0
/* 803D5A54  40 82 00 18 */	bne lbl_803D5A6C
/* 803D5A58  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D5A5C  38 80 00 00 */	li r4, 0
/* 803D5A60  48 09 E1 E5 */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D5A64  7C 7F 1B 78 */	mr r31, r3
/* 803D5A68  48 00 00 34 */	b lbl_803D5A9C
lbl_803D5A6C:
/* 803D5A6C  3B 18 FF FF */	addi r24, r24, -1
lbl_803D5A70:
/* 803D5A70  3B 7B 00 01 */	addi r27, r27, 1
/* 803D5A74  48 00 00 18 */	b lbl_803D5A8C
lbl_803D5A78:
/* 803D5A78  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D5A7C  41 80 00 10 */	blt lbl_803D5A8C
/* 803D5A80  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D5A84  41 81 00 08 */	bgt lbl_803D5A8C
/* 803D5A88  3B 7B 00 01 */	addi r27, r27, 1
lbl_803D5A8C:
/* 803D5A8C  3B 5A 00 01 */	addi r26, r26, 1
/* 803D5A90  3B 9C 00 02 */	addi r28, r28, 2
/* 803D5A94  2C 1A 01 00 */	cmpwi r26, 0x100
/* 803D5A98  41 80 FF 80 */	blt lbl_803D5A18
lbl_803D5A9C:
/* 803D5A9C  7F E3 FB 78 */	mr r3, r31
/* 803D5AA0  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5AA4  4B CC 54 69 */	bl func_8009AF0C
/* 803D5AA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D5AAC  7C 08 03 A6 */	mtlr r0
/* 803D5AB0  38 21 00 40 */	addi r1, r1, 0x40
/* 803D5AB4  4E 80 00 20 */	blr 
