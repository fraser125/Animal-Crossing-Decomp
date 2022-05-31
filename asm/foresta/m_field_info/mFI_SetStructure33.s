lbl_803A9ADC:
/* 803A9ADC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A9AE0  7C 08 02 A6 */	mflr r0
/* 803A9AE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A9AE8  39 61 00 40 */	addi r11, r1, 0x40
/* 803A9AEC  4B CF 13 C9 */	bl func_8009AEB4
/* 803A9AF0  7D 19 43 79 */	or. r25, r8, r8
/* 803A9AF4  3D 00 81 16 */	lis r8, l_set_fg_table@ha /* 0x81167CA8@ha */
/* 803A9AF8  38 08 7C A8 */	addi r0, r8, l_set_fg_table@l /* 0x81167CA8@l */
/* 803A9AFC  7C 75 1B 78 */	mr r21, r3
/* 803A9B00  7C B6 2B 78 */	mr r22, r5
/* 803A9B04  7C D7 33 78 */	mr r23, r6
/* 803A9B08  7C F8 3B 78 */	mr r24, r7
/* 803A9B0C  7D 3A 4B 78 */	mr r26, r9
/* 803A9B10  7D 5B 53 78 */	mr r27, r10
/* 803A9B14  7C 1D 03 78 */	mr r29, r0
/* 803A9B18  38 60 00 00 */	li r3, 0
/* 803A9B1C  40 81 00 88 */	ble lbl_803A9BA4
/* 803A9B20  2C 19 00 0F */	cmpwi r25, 0xf
/* 803A9B24  40 80 00 80 */	bge lbl_803A9BA4
/* 803A9B28  2C 1A 00 00 */	cmpwi r26, 0
/* 803A9B2C  40 81 00 78 */	ble lbl_803A9BA4
/* 803A9B30  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803A9B34  40 80 00 70 */	bge lbl_803A9BA4
/* 803A9B38  38 00 00 09 */	li r0, 9
/* 803A9B3C  38 60 00 00 */	li r3, 0
/* 803A9B40  7C 09 03 A6 */	mtctr r0
lbl_803A9B44:
/* 803A9B44  7E DD 1B 2E */	sthx r22, r29, r3
/* 803A9B48  38 63 00 02 */	addi r3, r3, 2
/* 803A9B4C  42 00 FF F8 */	bdnz lbl_803A9B44
/* 803A9B50  B0 9D 00 08 */	sth r4, 8(r29)
/* 803A9B54  3B C0 FF FF */	li r30, -1
lbl_803A9B58:
/* 803A9B58  3B 80 FF FF */	li r28, -1
/* 803A9B5C  7F FA F2 14 */	add r31, r26, r30
lbl_803A9B60:
/* 803A9B60  A0 9D 00 00 */	lhz r4, 0(r29)
/* 803A9B64  7E A3 AB 78 */	mr r3, r21
/* 803A9B68  7E C5 B3 78 */	mr r5, r22
/* 803A9B6C  7E E6 BB 78 */	mr r6, r23
/* 803A9B70  7F 07 C3 78 */	mr r7, r24
/* 803A9B74  7F E9 FB 78 */	mr r9, r31
/* 803A9B78  7F 6A DB 78 */	mr r10, r27
/* 803A9B7C  7D 19 E2 14 */	add r8, r25, r28
/* 803A9B80  4B FF FB 59 */	bl mFI_SetStructure11
/* 803A9B84  3B 9C 00 01 */	addi r28, r28, 1
/* 803A9B88  3B BD 00 02 */	addi r29, r29, 2
/* 803A9B8C  2C 1C 00 02 */	cmpwi r28, 2
/* 803A9B90  41 80 FF D0 */	blt lbl_803A9B60
/* 803A9B94  3B DE 00 01 */	addi r30, r30, 1
/* 803A9B98  2C 1E 00 02 */	cmpwi r30, 2
/* 803A9B9C  41 80 FF BC */	blt lbl_803A9B58
/* 803A9BA0  38 60 00 01 */	li r3, 1
lbl_803A9BA4:
/* 803A9BA4  39 61 00 40 */	addi r11, r1, 0x40
/* 803A9BA8  4B CF 13 59 */	bl func_8009AF00
/* 803A9BAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A9BB0  7C 08 03 A6 */	mtlr r0
/* 803A9BB4  38 21 00 40 */	addi r1, r1, 0x40
/* 803A9BB8  4E 80 00 20 */	blr 
