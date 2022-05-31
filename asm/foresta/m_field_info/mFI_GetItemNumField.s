lbl_803A81D0:
/* 803A81D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A81D4  7C 08 02 A6 */	mflr r0
/* 803A81D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A81DC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A81E0  4B CF 2C E5 */	bl func_8009AEC4
/* 803A81E4  3C A0 80 3A */	lis r5, mFI_CheckFieldData@ha /* 0x803A4C90@ha */
/* 803A81E8  7C 79 1B 78 */	mr r25, r3
/* 803A81EC  34 05 4C 90 */	addic. r0, r5, mFI_CheckFieldData@l /* 0x803A4C90@l */
/* 803A81F0  7C 9A 23 78 */	mr r26, r4
/* 803A81F4  3B E0 00 00 */	li r31, 0
/* 803A81F8  41 82 00 54 */	beq lbl_803A824C
/* 803A81FC  4B FF CB 95 */	bl mFI_GetBlockXMax
/* 803A8200  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 803A8204  4B FF CB D5 */	bl mFI_GetBlockZMax
/* 803A8208  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 803A820C  3B 80 00 00 */	li r28, 0
/* 803A8210  48 00 00 34 */	b lbl_803A8244
lbl_803A8214:
/* 803A8214  3B 60 00 00 */	li r27, 0
/* 803A8218  48 00 00 20 */	b lbl_803A8238
lbl_803A821C:
/* 803A821C  7F 63 DB 78 */	mr r3, r27
/* 803A8220  7F 84 E3 78 */	mr r4, r28
/* 803A8224  7F 25 CB 78 */	mr r5, r25
/* 803A8228  7F 46 D3 78 */	mr r6, r26
/* 803A822C  4B FF FE 2D */	bl mFI_GetItemNumOnBlock
/* 803A8230  7F FF 1A 14 */	add r31, r31, r3
/* 803A8234  3B 7B 00 01 */	addi r27, r27, 1
lbl_803A8238:
/* 803A8238  7C 1B F0 00 */	cmpw r27, r30
/* 803A823C  41 80 FF E0 */	blt lbl_803A821C
/* 803A8240  3B 9C 00 01 */	addi r28, r28, 1
lbl_803A8244:
/* 803A8244  7C 1C E8 00 */	cmpw r28, r29
/* 803A8248  41 80 FF CC */	blt lbl_803A8214
lbl_803A824C:
/* 803A824C  7F E3 FB 78 */	mr r3, r31
/* 803A8250  39 61 00 30 */	addi r11, r1, 0x30
/* 803A8254  4B CF 2C BD */	bl func_8009AF10
/* 803A8258  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A825C  7C 08 03 A6 */	mtlr r0
/* 803A8260  38 21 00 30 */	addi r1, r1, 0x30
/* 803A8264  4E 80 00 20 */	blr 
