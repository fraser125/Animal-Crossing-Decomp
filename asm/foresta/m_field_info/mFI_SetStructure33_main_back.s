lbl_803A9BBC:
/* 803A9BBC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A9BC0  7C 08 02 A6 */	mflr r0
/* 803A9BC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A9BC8  39 61 00 40 */	addi r11, r1, 0x40
/* 803A9BCC  4B CF 12 E9 */	bl func_8009AEB4
/* 803A9BD0  7D 19 43 79 */	or. r25, r8, r8
/* 803A9BD4  3D 00 81 16 */	lis r8, l_set_fg_table@ha /* 0x81167CA8@ha */
/* 803A9BD8  38 08 7C A8 */	addi r0, r8, l_set_fg_table@l /* 0x81167CA8@l */
/* 803A9BDC  7C 75 1B 78 */	mr r21, r3
/* 803A9BE0  7C B6 2B 78 */	mr r22, r5
/* 803A9BE4  7C D7 33 78 */	mr r23, r6
/* 803A9BE8  7C F8 3B 78 */	mr r24, r7
/* 803A9BEC  7D 3A 4B 78 */	mr r26, r9
/* 803A9BF0  7D 5B 53 78 */	mr r27, r10
/* 803A9BF4  7C 1D 03 78 */	mr r29, r0
/* 803A9BF8  38 60 00 00 */	li r3, 0
/* 803A9BFC  40 81 00 88 */	ble lbl_803A9C84
/* 803A9C00  2C 19 00 0F */	cmpwi r25, 0xf
/* 803A9C04  40 80 00 80 */	bge lbl_803A9C84
/* 803A9C08  2C 1A 00 00 */	cmpwi r26, 0
/* 803A9C0C  40 81 00 78 */	ble lbl_803A9C84
/* 803A9C10  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803A9C14  40 80 00 70 */	bge lbl_803A9C84
/* 803A9C18  38 00 00 09 */	li r0, 9
/* 803A9C1C  38 60 00 00 */	li r3, 0
/* 803A9C20  7C 09 03 A6 */	mtctr r0
lbl_803A9C24:
/* 803A9C24  7E DD 1B 2E */	sthx r22, r29, r3
/* 803A9C28  38 63 00 02 */	addi r3, r3, 2
/* 803A9C2C  42 00 FF F8 */	bdnz lbl_803A9C24
/* 803A9C30  B0 9D 00 02 */	sth r4, 2(r29)
/* 803A9C34  3B C0 FF FF */	li r30, -1
lbl_803A9C38:
/* 803A9C38  3B 80 FF FF */	li r28, -1
/* 803A9C3C  7F FA F2 14 */	add r31, r26, r30
lbl_803A9C40:
/* 803A9C40  A0 9D 00 00 */	lhz r4, 0(r29)
/* 803A9C44  7E A3 AB 78 */	mr r3, r21
/* 803A9C48  7E C5 B3 78 */	mr r5, r22
/* 803A9C4C  7E E6 BB 78 */	mr r6, r23
/* 803A9C50  7F 07 C3 78 */	mr r7, r24
/* 803A9C54  7F E9 FB 78 */	mr r9, r31
/* 803A9C58  7F 6A DB 78 */	mr r10, r27
/* 803A9C5C  7D 19 E2 14 */	add r8, r25, r28
/* 803A9C60  4B FF FA 79 */	bl mFI_SetStructure11
/* 803A9C64  3B 9C 00 01 */	addi r28, r28, 1
/* 803A9C68  3B BD 00 02 */	addi r29, r29, 2
/* 803A9C6C  2C 1C 00 02 */	cmpwi r28, 2
/* 803A9C70  41 80 FF D0 */	blt lbl_803A9C40
/* 803A9C74  3B DE 00 01 */	addi r30, r30, 1
/* 803A9C78  2C 1E 00 02 */	cmpwi r30, 2
/* 803A9C7C  41 80 FF BC */	blt lbl_803A9C38
/* 803A9C80  38 60 00 01 */	li r3, 1
lbl_803A9C84:
/* 803A9C84  39 61 00 40 */	addi r11, r1, 0x40
/* 803A9C88  4B CF 12 79 */	bl func_8009AF00
/* 803A9C8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A9C90  7C 08 03 A6 */	mtlr r0
/* 803A9C94  38 21 00 40 */	addi r1, r1, 0x40
/* 803A9C98  4E 80 00 20 */	blr 
