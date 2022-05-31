lbl_803C81B4:
/* 803C81B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C81B8  7C 08 02 A6 */	mflr r0
/* 803C81BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C81C0  39 61 00 30 */	addi r11, r1, 0x30
/* 803C81C4  4B CD 2D 01 */	bl func_8009AEC4
/* 803C81C8  7C 79 1B 79 */	or. r25, r3, r3
/* 803C81CC  7C 9A 23 78 */	mr r26, r4
/* 803C81D0  7C BB 2B 78 */	mr r27, r5
/* 803C81D4  3B C0 00 00 */	li r30, 0
/* 803C81D8  41 82 00 78 */	beq lbl_803C8250
/* 803C81DC  28 1A 00 00 */	cmplwi r26, 0
/* 803C81E0  41 82 00 70 */	beq lbl_803C8250
/* 803C81E4  28 1B 00 00 */	cmplwi r27, 0
/* 803C81E8  41 82 00 68 */	beq lbl_803C8250
/* 803C81EC  3B A0 00 00 */	li r29, 0
lbl_803C81F0:
/* 803C81F0  3B 80 00 00 */	li r28, 0
/* 803C81F4  3B E0 00 01 */	li r31, 1
lbl_803C81F8:
/* 803C81F8  A0 19 00 00 */	lhz r0, 0(r25)
/* 803C81FC  28 00 28 05 */	cmplwi r0, 0x2805
/* 803C8200  40 82 00 2C */	bne lbl_803C822C
/* 803C8204  7F 43 D3 78 */	mr r3, r26
/* 803C8208  7F 84 E3 78 */	mr r4, r28
/* 803C820C  4B FE 0B 81 */	bl mFI_GetLineDeposit
/* 803C8210  2C 03 00 00 */	cmpwi r3, 0
/* 803C8214  40 82 00 18 */	bne lbl_803C822C
/* 803C8218  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803C821C  7F E0 E0 30 */	slw r0, r31, r28
/* 803C8220  3B DE 00 01 */	addi r30, r30, 1
/* 803C8224  7C 60 03 78 */	or r0, r3, r0
/* 803C8228  B0 1B 00 00 */	sth r0, 0(r27)
lbl_803C822C:
/* 803C822C  3B 9C 00 01 */	addi r28, r28, 1
/* 803C8230  3B 39 00 02 */	addi r25, r25, 2
/* 803C8234  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803C8238  41 80 FF C0 */	blt lbl_803C81F8
/* 803C823C  3B BD 00 01 */	addi r29, r29, 1
/* 803C8240  3B 7B 00 02 */	addi r27, r27, 2
/* 803C8244  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803C8248  3B 5A 00 02 */	addi r26, r26, 2
/* 803C824C  41 80 FF A4 */	blt lbl_803C81F0
lbl_803C8250:
/* 803C8250  7F C3 F3 78 */	mr r3, r30
/* 803C8254  39 61 00 30 */	addi r11, r1, 0x30
/* 803C8258  4B CD 2C B9 */	bl func_8009AF10
/* 803C825C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C8260  7C 08 03 A6 */	mtlr r0
/* 803C8264  38 21 00 30 */	addi r1, r1, 0x30
/* 803C8268  4E 80 00 20 */	blr 
