lbl_803C83E8:
/* 803C83E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C83EC  7C 08 02 A6 */	mflr r0
/* 803C83F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C83F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803C83F8  4B CD 2A D5 */	bl func_8009AECC
/* 803C83FC  7C 7B 1B 78 */	mr r27, r3
/* 803C8400  7C 9C 23 78 */	mr r28, r4
/* 803C8404  3B C0 00 00 */	li r30, 0
/* 803C8408  3B E0 00 00 */	li r31, 0
lbl_803C840C:
/* 803C840C  3B A0 00 00 */	li r29, 0
lbl_803C8410:
/* 803C8410  A0 1C 00 00 */	lhz r0, 0(r28)
/* 803C8414  7C 00 EE 30 */	sraw r0, r0, r29
/* 803C8418  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803C841C  2C 00 00 01 */	cmpwi r0, 1
/* 803C8420  40 82 00 0C */	bne lbl_803C842C
/* 803C8424  B3 FB 00 00 */	sth r31, 0(r27)
/* 803C8428  4B FD FA 0D */	bl mFI_SetFGUpData
lbl_803C842C:
/* 803C842C  3B BD 00 01 */	addi r29, r29, 1
/* 803C8430  3B 7B 00 02 */	addi r27, r27, 2
/* 803C8434  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803C8438  41 80 FF D8 */	blt lbl_803C8410
/* 803C843C  3B DE 00 01 */	addi r30, r30, 1
/* 803C8440  3B 9C 00 02 */	addi r28, r28, 2
/* 803C8444  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803C8448  41 80 FF C4 */	blt lbl_803C840C
/* 803C844C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C8450  4B CD 2A C9 */	bl func_8009AF18
/* 803C8454  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C8458  7C 08 03 A6 */	mtlr r0
/* 803C845C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C8460  4E 80 00 20 */	blr 
