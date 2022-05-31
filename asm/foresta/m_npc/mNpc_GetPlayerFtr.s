lbl_803D5AB8:
/* 803D5AB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D5ABC  7C 08 02 A6 */	mflr r0
/* 803D5AC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D5AC4  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5AC8  4B CC 53 F9 */	bl func_8009AEC0
/* 803D5ACC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D5AD0  7C 78 1B 78 */	mr r24, r3
/* 803D5AD4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D5AD8  3F E3 00 02 */	addis r31, r3, 2
/* 803D5ADC  A4 7F 34 40 */	lhzu r3, 0x3440(r31)
/* 803D5AE0  7F FB FB 78 */	mr r27, r31
/* 803D5AE4  4B FF EA 51 */	bl mNpc_GetIslandRoomP
/* 803D5AE8  7C 60 1B 78 */	mr r0, r3
/* 803D5AEC  7F 03 C3 78 */	mr r3, r24
/* 803D5AF0  7C 1C 03 78 */	mr r28, r0
/* 803D5AF4  38 9F 00 10 */	addi r4, r31, 0x10
/* 803D5AF8  7F 9D E3 78 */	mr r29, r28
/* 803D5AFC  3B 40 00 00 */	li r26, 0
/* 803D5B00  3B 20 00 00 */	li r25, 0
/* 803D5B04  3B C0 00 00 */	li r30, 0
/* 803D5B08  38 A0 00 07 */	li r5, 7
/* 803D5B0C  4B FF 62 6D */	bl mNpc_GetAnimalMemoryIdx
/* 803D5B10  28 1C 00 00 */	cmplwi r28, 0
/* 803D5B14  7C 7F 1B 78 */	mr r31, r3
/* 803D5B18  41 82 01 34 */	beq lbl_803D5C4C
/* 803D5B1C  2C 1F FF FF */	cmpwi r31, -1
/* 803D5B20  41 82 01 2C */	beq lbl_803D5C4C
/* 803D5B24  3B 00 00 00 */	li r24, 0
lbl_803D5B28:
/* 803D5B28  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D5B2C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D5B30  2C 00 00 01 */	cmpwi r0, 1
/* 803D5B34  41 82 00 1C */	beq lbl_803D5B50
/* 803D5B38  2C 00 00 03 */	cmpwi r0, 3
/* 803D5B3C  41 82 00 14 */	beq lbl_803D5B50
/* 803D5B40  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D5B44  41 80 00 24 */	blt lbl_803D5B68
/* 803D5B48  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D5B4C  41 81 00 1C */	bgt lbl_803D5B68
lbl_803D5B50:
/* 803D5B50  7F C3 F3 78 */	mr r3, r30
/* 803D5B54  4B FF EA E9 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D5B58  7C 03 F8 00 */	cmpw r3, r31
/* 803D5B5C  40 82 00 08 */	bne lbl_803D5B64
/* 803D5B60  3B 39 00 01 */	addi r25, r25, 1
lbl_803D5B64:
/* 803D5B64  3B DE 00 01 */	addi r30, r30, 1
lbl_803D5B68:
/* 803D5B68  3B 18 00 01 */	addi r24, r24, 1
/* 803D5B6C  3B 9C 00 02 */	addi r28, r28, 2
/* 803D5B70  2C 18 01 00 */	cmpwi r24, 0x100
/* 803D5B74  41 80 FF B4 */	blt lbl_803D5B28
/* 803D5B78  28 1D 00 00 */	cmplwi r29, 0
/* 803D5B7C  7F BE EB 78 */	mr r30, r29
/* 803D5B80  3B A0 00 00 */	li r29, 0
/* 803D5B84  41 82 00 C8 */	beq lbl_803D5C4C
/* 803D5B88  2C 19 00 00 */	cmpwi r25, 0
/* 803D5B8C  40 81 00 C0 */	ble lbl_803D5C4C
/* 803D5B90  4B C8 71 65 */	bl fqrand
/* 803D5B94  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 803D5B98  3C 00 43 30 */	lis r0, 0x4330
/* 803D5B9C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D5BA0  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D5BA4  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D5BA8  3B 80 00 00 */	li r28, 0
/* 803D5BAC  90 01 00 08 */	stw r0, 8(r1)
/* 803D5BB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D5BB4  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D5BB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D5BBC  FC 00 00 1E */	fctiwz f0, f0
/* 803D5BC0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D5BC4  83 21 00 14 */	lwz r25, 0x14(r1)
lbl_803D5BC8:
/* 803D5BC8  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803D5BCC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D5BD0  2C 00 00 01 */	cmpwi r0, 1
/* 803D5BD4  41 82 00 1C */	beq lbl_803D5BF0
/* 803D5BD8  2C 00 00 03 */	cmpwi r0, 3
/* 803D5BDC  41 82 00 14 */	beq lbl_803D5BF0
/* 803D5BE0  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D5BE4  41 80 00 58 */	blt lbl_803D5C3C
/* 803D5BE8  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D5BEC  41 81 00 50 */	bgt lbl_803D5C3C
lbl_803D5BF0:
/* 803D5BF0  7F A3 EB 78 */	mr r3, r29
/* 803D5BF4  4B FF EA 49 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D5BF8  7C 03 F8 00 */	cmpw r3, r31
/* 803D5BFC  40 82 00 3C */	bne lbl_803D5C38
/* 803D5C00  2C 19 00 00 */	cmpwi r25, 0
/* 803D5C04  40 82 00 30 */	bne lbl_803D5C34
/* 803D5C08  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803D5C0C  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D5C10  41 80 00 14 */	blt lbl_803D5C24
/* 803D5C14  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D5C18  41 81 00 0C */	bgt lbl_803D5C24
/* 803D5C1C  7F 64 DB 78 */	mr r4, r27
/* 803D5C20  4B FF E9 C1 */	bl mNpc_getNormalFtr
lbl_803D5C24:
/* 803D5C24  38 80 00 00 */	li r4, 0
/* 803D5C28  48 09 E0 1D */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D5C2C  7C 7A 1B 78 */	mr r26, r3
/* 803D5C30  48 00 00 1C */	b lbl_803D5C4C
lbl_803D5C34:
/* 803D5C34  3B 39 FF FF */	addi r25, r25, -1
lbl_803D5C38:
/* 803D5C38  3B BD 00 01 */	addi r29, r29, 1
lbl_803D5C3C:
/* 803D5C3C  3B 9C 00 01 */	addi r28, r28, 1
/* 803D5C40  3B DE 00 02 */	addi r30, r30, 2
/* 803D5C44  2C 1C 01 00 */	cmpwi r28, 0x100
/* 803D5C48  41 80 FF 80 */	blt lbl_803D5BC8
lbl_803D5C4C:
/* 803D5C4C  7F 43 D3 78 */	mr r3, r26
/* 803D5C50  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5C54  4B CC 52 B9 */	bl func_8009AF0C
/* 803D5C58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D5C5C  7C 08 03 A6 */	mtlr r0
/* 803D5C60  38 21 00 40 */	addi r1, r1, 0x40
/* 803D5C64  4E 80 00 20 */	blr 
