lbl_803A983C:
/* 803A983C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A9840  7C 08 02 A6 */	mflr r0
/* 803A9844  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A9848  39 61 00 40 */	addi r11, r1, 0x40
/* 803A984C  4B CF 16 69 */	bl func_8009AEB4
/* 803A9850  7D 19 43 79 */	or. r25, r8, r8
/* 803A9854  3D 00 81 16 */	lis r8, l_set_fg_table@ha /* 0x81167CA8@ha */
/* 803A9858  38 08 7C A8 */	addi r0, r8, l_set_fg_table@l /* 0x81167CA8@l */
/* 803A985C  7C 75 1B 78 */	mr r21, r3
/* 803A9860  7C B6 2B 78 */	mr r22, r5
/* 803A9864  7C D7 33 78 */	mr r23, r6
/* 803A9868  7C F8 3B 78 */	mr r24, r7
/* 803A986C  7D 3A 4B 78 */	mr r26, r9
/* 803A9870  7D 5B 53 78 */	mr r27, r10
/* 803A9874  7C 1D 03 78 */	mr r29, r0
/* 803A9878  38 60 00 00 */	li r3, 0
/* 803A987C  41 80 00 88 */	blt lbl_803A9904
/* 803A9880  2C 19 00 0F */	cmpwi r25, 0xf
/* 803A9884  40 80 00 80 */	bge lbl_803A9904
/* 803A9888  2C 1A 00 00 */	cmpwi r26, 0
/* 803A988C  41 80 00 78 */	blt lbl_803A9904
/* 803A9890  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803A9894  40 80 00 70 */	bge lbl_803A9904
/* 803A9898  38 00 00 04 */	li r0, 4
/* 803A989C  38 60 00 00 */	li r3, 0
/* 803A98A0  7C 09 03 A6 */	mtctr r0
lbl_803A98A4:
/* 803A98A4  7E DD 1B 2E */	sthx r22, r29, r3
/* 803A98A8  38 63 00 02 */	addi r3, r3, 2
/* 803A98AC  42 00 FF F8 */	bdnz lbl_803A98A4
/* 803A98B0  B0 9D 00 00 */	sth r4, 0(r29)
/* 803A98B4  3B C0 00 00 */	li r30, 0
lbl_803A98B8:
/* 803A98B8  3B 80 00 00 */	li r28, 0
/* 803A98BC  7F FA F2 14 */	add r31, r26, r30
lbl_803A98C0:
/* 803A98C0  A0 9D 00 00 */	lhz r4, 0(r29)
/* 803A98C4  7E A3 AB 78 */	mr r3, r21
/* 803A98C8  7E C5 B3 78 */	mr r5, r22
/* 803A98CC  7E E6 BB 78 */	mr r6, r23
/* 803A98D0  7F 07 C3 78 */	mr r7, r24
/* 803A98D4  7F E9 FB 78 */	mr r9, r31
/* 803A98D8  7F 6A DB 78 */	mr r10, r27
/* 803A98DC  7D 19 E2 14 */	add r8, r25, r28
/* 803A98E0  4B FF FD F9 */	bl mFI_SetStructure11
/* 803A98E4  3B 9C 00 01 */	addi r28, r28, 1
/* 803A98E8  3B BD 00 02 */	addi r29, r29, 2
/* 803A98EC  2C 1C 00 02 */	cmpwi r28, 2
/* 803A98F0  41 80 FF D0 */	blt lbl_803A98C0
/* 803A98F4  3B DE 00 01 */	addi r30, r30, 1
/* 803A98F8  2C 1E 00 02 */	cmpwi r30, 2
/* 803A98FC  41 80 FF BC */	blt lbl_803A98B8
/* 803A9900  38 60 00 01 */	li r3, 1
lbl_803A9904:
/* 803A9904  39 61 00 40 */	addi r11, r1, 0x40
/* 803A9908  4B CF 15 F9 */	bl func_8009AF00
/* 803A990C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A9910  7C 08 03 A6 */	mtlr r0
/* 803A9914  38 21 00 40 */	addi r1, r1, 0x40
/* 803A9918  4E 80 00 20 */	blr 
