lbl_803A9770:
/* 803A9770  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A9774  7C 08 02 A6 */	mflr r0
/* 803A9778  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A977C  39 61 00 30 */	addi r11, r1, 0x30
/* 803A9780  4B CF 17 3D */	bl func_8009AEBC
/* 803A9784  7D 1B 43 79 */	or. r27, r8, r8
/* 803A9788  3D 00 81 16 */	lis r8, l_set_fg_table@ha /* 0x81167CA8@ha */
/* 803A978C  38 08 7C A8 */	addi r0, r8, l_set_fg_table@l /* 0x81167CA8@l */
/* 803A9790  7C 77 1B 78 */	mr r23, r3
/* 803A9794  7C B8 2B 78 */	mr r24, r5
/* 803A9798  7C D9 33 78 */	mr r25, r6
/* 803A979C  7C FA 3B 78 */	mr r26, r7
/* 803A97A0  7D 3C 4B 78 */	mr r28, r9
/* 803A97A4  7D 5D 53 78 */	mr r29, r10
/* 803A97A8  7C 1E 03 78 */	mr r30, r0
/* 803A97AC  38 60 00 00 */	li r3, 0
/* 803A97B0  41 80 00 74 */	blt lbl_803A9824
/* 803A97B4  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803A97B8  40 80 00 6C */	bge lbl_803A9824
/* 803A97BC  2C 1C 00 00 */	cmpwi r28, 0
/* 803A97C0  41 80 00 64 */	blt lbl_803A9824
/* 803A97C4  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803A97C8  40 80 00 5C */	bge lbl_803A9824
/* 803A97CC  38 00 00 02 */	li r0, 2
/* 803A97D0  38 60 00 00 */	li r3, 0
/* 803A97D4  7C 09 03 A6 */	mtctr r0
lbl_803A97D8:
/* 803A97D8  7F 1E 1B 2E */	sthx r24, r30, r3
/* 803A97DC  38 63 00 02 */	addi r3, r3, 2
/* 803A97E0  42 00 FF F8 */	bdnz lbl_803A97D8
/* 803A97E4  B0 9E 00 00 */	sth r4, 0(r30)
/* 803A97E8  3B E0 00 00 */	li r31, 0
lbl_803A97EC:
/* 803A97EC  A0 9E 00 00 */	lhz r4, 0(r30)
/* 803A97F0  7E E3 BB 78 */	mr r3, r23
/* 803A97F4  7F 05 C3 78 */	mr r5, r24
/* 803A97F8  7F 26 CB 78 */	mr r6, r25
/* 803A97FC  7F 47 D3 78 */	mr r7, r26
/* 803A9800  7F 89 E3 78 */	mr r9, r28
/* 803A9804  7F AA EB 78 */	mr r10, r29
/* 803A9808  7D 1B FA 14 */	add r8, r27, r31
/* 803A980C  4B FF FE CD */	bl mFI_SetStructure11
/* 803A9810  3B FF 00 01 */	addi r31, r31, 1
/* 803A9814  3B DE 00 02 */	addi r30, r30, 2
/* 803A9818  2C 1F 00 02 */	cmpwi r31, 2
/* 803A981C  41 80 FF D0 */	blt lbl_803A97EC
/* 803A9820  38 60 00 01 */	li r3, 1
lbl_803A9824:
/* 803A9824  39 61 00 30 */	addi r11, r1, 0x30
/* 803A9828  4B CF 16 E1 */	bl func_8009AF08
/* 803A982C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A9830  7C 08 03 A6 */	mtlr r0
/* 803A9834  38 21 00 30 */	addi r1, r1, 0x30
/* 803A9838  4E 80 00 20 */	blr 
