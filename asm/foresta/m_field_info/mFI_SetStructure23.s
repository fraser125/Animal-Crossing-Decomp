lbl_803A991C:
/* 803A991C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A9920  7C 08 02 A6 */	mflr r0
/* 803A9924  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A9928  39 61 00 40 */	addi r11, r1, 0x40
/* 803A992C  4B CF 15 89 */	bl func_8009AEB4
/* 803A9930  7D 19 43 79 */	or. r25, r8, r8
/* 803A9934  3D 00 81 16 */	lis r8, l_set_fg_table@ha /* 0x81167CA8@ha */
/* 803A9938  38 08 7C A8 */	addi r0, r8, l_set_fg_table@l /* 0x81167CA8@l */
/* 803A993C  7C 75 1B 78 */	mr r21, r3
/* 803A9940  7C B6 2B 78 */	mr r22, r5
/* 803A9944  7C D7 33 78 */	mr r23, r6
/* 803A9948  7C F8 3B 78 */	mr r24, r7
/* 803A994C  7D 3A 4B 78 */	mr r26, r9
/* 803A9950  7D 5B 53 78 */	mr r27, r10
/* 803A9954  7C 1D 03 78 */	mr r29, r0
/* 803A9958  38 60 00 00 */	li r3, 0
/* 803A995C  41 80 00 88 */	blt lbl_803A99E4
/* 803A9960  2C 19 00 0F */	cmpwi r25, 0xf
/* 803A9964  40 80 00 80 */	bge lbl_803A99E4
/* 803A9968  2C 1A 00 00 */	cmpwi r26, 0
/* 803A996C  40 81 00 78 */	ble lbl_803A99E4
/* 803A9970  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803A9974  40 80 00 70 */	bge lbl_803A99E4
/* 803A9978  38 00 00 06 */	li r0, 6
/* 803A997C  38 60 00 00 */	li r3, 0
/* 803A9980  7C 09 03 A6 */	mtctr r0
lbl_803A9984:
/* 803A9984  7E DD 1B 2E */	sthx r22, r29, r3
/* 803A9988  38 63 00 02 */	addi r3, r3, 2
/* 803A998C  42 00 FF F8 */	bdnz lbl_803A9984
/* 803A9990  B0 9D 00 04 */	sth r4, 4(r29)
/* 803A9994  3B C0 FF FF */	li r30, -1
lbl_803A9998:
/* 803A9998  3B 80 00 00 */	li r28, 0
/* 803A999C  7F FA F2 14 */	add r31, r26, r30
lbl_803A99A0:
/* 803A99A0  A0 9D 00 00 */	lhz r4, 0(r29)
/* 803A99A4  7E A3 AB 78 */	mr r3, r21
/* 803A99A8  7E C5 B3 78 */	mr r5, r22
/* 803A99AC  7E E6 BB 78 */	mr r6, r23
/* 803A99B0  7F 07 C3 78 */	mr r7, r24
/* 803A99B4  7F E9 FB 78 */	mr r9, r31
/* 803A99B8  7F 6A DB 78 */	mr r10, r27
/* 803A99BC  7D 19 E2 14 */	add r8, r25, r28
/* 803A99C0  4B FF FD 19 */	bl mFI_SetStructure11
/* 803A99C4  3B 9C 00 01 */	addi r28, r28, 1
/* 803A99C8  3B BD 00 02 */	addi r29, r29, 2
/* 803A99CC  2C 1C 00 02 */	cmpwi r28, 2
/* 803A99D0  41 80 FF D0 */	blt lbl_803A99A0
/* 803A99D4  3B DE 00 01 */	addi r30, r30, 1
/* 803A99D8  2C 1E 00 02 */	cmpwi r30, 2
/* 803A99DC  41 80 FF BC */	blt lbl_803A9998
/* 803A99E0  38 60 00 01 */	li r3, 1
lbl_803A99E4:
/* 803A99E4  39 61 00 40 */	addi r11, r1, 0x40
/* 803A99E8  4B CF 15 19 */	bl func_8009AF00
/* 803A99EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A99F0  7C 08 03 A6 */	mtlr r0
/* 803A99F4  38 21 00 40 */	addi r1, r1, 0x40
/* 803A99F8  4E 80 00 20 */	blr 
