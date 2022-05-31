lbl_8048DA30:
/* 8048DA30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048DA34  7C 08 02 A6 */	mflr r0
/* 8048DA38  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048DA3C  39 61 00 30 */	addi r11, r1, 0x30
/* 8048DA40  4B C0 D4 85 */	bl func_8009AEC4
/* 8048DA44  7C 79 1B 79 */	or. r25, r3, r3
/* 8048DA48  7C BA 2B 78 */	mr r26, r5
/* 8048DA4C  3B A0 00 00 */	li r29, 0
/* 8048DA50  41 82 00 68 */	beq lbl_8048DAB8
/* 8048DA54  3B 99 00 68 */	addi r28, r25, 0x68
/* 8048DA58  54 9E 04 3E */	clrlwi r30, r4, 0x10
/* 8048DA5C  3B 60 00 00 */	li r27, 0
/* 8048DA60  3B E0 00 00 */	li r31, 0
lbl_8048DA64:
/* 8048DA64  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8048DA68  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048DA6C  7C 00 F0 00 */	cmpw r0, r30
/* 8048DA70  40 82 00 34 */	bne lbl_8048DAA4
/* 8048DA74  80 19 00 88 */	lwz r0, 0x88(r25)
/* 8048DA78  7C 00 FC 30 */	srw r0, r0, r31
/* 8048DA7C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8048DA80  7C 1A 00 40 */	cmplw r26, r0
/* 8048DA84  40 82 00 20 */	bne lbl_8048DAA4
/* 8048DA88  38 80 00 00 */	li r4, 0
/* 8048DA8C  38 A0 00 0F */	li r5, 0xf
/* 8048DA90  38 C0 00 00 */	li r6, 0
/* 8048DA94  4B F5 AE 2D */	bl mSP_SearchItemCategoryPriority
/* 8048DA98  2C 03 00 00 */	cmpwi r3, 0
/* 8048DA9C  40 82 00 08 */	bne lbl_8048DAA4
/* 8048DAA0  3B BD 00 01 */	addi r29, r29, 1
lbl_8048DAA4:
/* 8048DAA4  3B 7B 00 01 */	addi r27, r27, 1
/* 8048DAA8  3B FF 00 02 */	addi r31, r31, 2
/* 8048DAAC  2C 1B 00 0F */	cmpwi r27, 0xf
/* 8048DAB0  3B 9C 00 02 */	addi r28, r28, 2
/* 8048DAB4  41 80 FF B0 */	blt lbl_8048DA64
lbl_8048DAB8:
/* 8048DAB8  7F A3 EB 78 */	mr r3, r29
/* 8048DABC  39 61 00 30 */	addi r11, r1, 0x30
/* 8048DAC0  4B C0 D4 51 */	bl func_8009AF10
/* 8048DAC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048DAC8  7C 08 03 A6 */	mtlr r0
/* 8048DACC  38 21 00 30 */	addi r1, r1, 0x30
/* 8048DAD0  4E 80 00 20 */	blr 
