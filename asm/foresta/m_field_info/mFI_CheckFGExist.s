lbl_803A8334:
/* 803A8334  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8338  7C 08 02 A6 */	mflr r0
/* 803A833C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8340  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8344  4B CF 2B 85 */	bl func_8009AEC8
/* 803A8348  7C 9A 23 78 */	mr r26, r4
/* 803A834C  7C 7F 1B 78 */	mr r31, r3
/* 803A8350  4B FF C9 41 */	bl mFI_CheckFieldData
/* 803A8354  2C 03 00 01 */	cmpwi r3, 1
/* 803A8358  40 82 00 94 */	bne lbl_803A83EC
/* 803A835C  4B FF CA 35 */	bl mFI_GetBlockXMax
/* 803A8360  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 803A8364  4B FF CA 75 */	bl mFI_GetBlockZMax
/* 803A8368  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 803A836C  3B 80 00 00 */	li r28, 0
/* 803A8370  48 00 00 74 */	b lbl_803A83E4
lbl_803A8374:
/* 803A8374  3B 60 00 00 */	li r27, 0
/* 803A8378  48 00 00 60 */	b lbl_803A83D8
lbl_803A837C:
/* 803A837C  7F 63 DB 78 */	mr r3, r27
/* 803A8380  7F 84 E3 78 */	mr r4, r28
/* 803A8384  4B FF ED D1 */	bl mFI_BkNumtoUtFGTop
/* 803A8388  7C 65 1B 79 */	or. r5, r3, r3
/* 803A838C  41 82 00 48 */	beq lbl_803A83D4
/* 803A8390  38 C0 00 00 */	li r6, 0
lbl_803A8394:
/* 803A8394  7F E3 FB 78 */	mr r3, r31
/* 803A8398  7F 49 03 A6 */	mtctr r26
/* 803A839C  2C 1A 00 00 */	cmpwi r26, 0
/* 803A83A0  40 81 00 24 */	ble lbl_803A83C4
lbl_803A83A4:
/* 803A83A4  A0 83 00 00 */	lhz r4, 0(r3)
/* 803A83A8  A0 05 00 00 */	lhz r0, 0(r5)
/* 803A83AC  7C 04 00 40 */	cmplw r4, r0
/* 803A83B0  40 82 00 0C */	bne lbl_803A83BC
/* 803A83B4  38 60 00 01 */	li r3, 1
/* 803A83B8  48 00 00 38 */	b lbl_803A83F0
lbl_803A83BC:
/* 803A83BC  38 63 00 02 */	addi r3, r3, 2
/* 803A83C0  42 00 FF E4 */	bdnz lbl_803A83A4
lbl_803A83C4:
/* 803A83C4  38 C6 00 01 */	addi r6, r6, 1
/* 803A83C8  38 A5 00 02 */	addi r5, r5, 2
/* 803A83CC  2C 06 01 00 */	cmpwi r6, 0x100
/* 803A83D0  41 80 FF C4 */	blt lbl_803A8394
lbl_803A83D4:
/* 803A83D4  3B 7B 00 01 */	addi r27, r27, 1
lbl_803A83D8:
/* 803A83D8  7C 1B F0 00 */	cmpw r27, r30
/* 803A83DC  41 80 FF A0 */	blt lbl_803A837C
/* 803A83E0  3B 9C 00 01 */	addi r28, r28, 1
lbl_803A83E4:
/* 803A83E4  7C 1C E8 00 */	cmpw r28, r29
/* 803A83E8  41 80 FF 8C */	blt lbl_803A8374
lbl_803A83EC:
/* 803A83EC  38 60 00 00 */	li r3, 0
lbl_803A83F0:
/* 803A83F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A83F4  4B CF 2B 21 */	bl func_8009AF14
/* 803A83F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A83FC  7C 08 03 A6 */	mtlr r0
/* 803A8400  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8404  4E 80 00 20 */	blr 
