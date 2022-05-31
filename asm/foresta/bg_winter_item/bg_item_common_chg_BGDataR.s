lbl_804C433C:
/* 804C433C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C4340  7C 08 02 A6 */	mflr r0
/* 804C4344  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C4348  39 61 00 20 */	addi r11, r1, 0x20
/* 804C434C  4B BD 6B 81 */	bl func_8009AECC
/* 804C4350  7C 7B 1B 78 */	mr r27, r3
/* 804C4354  4B EE 0A 3D */	bl mFI_GetBlockXMax
/* 804C4358  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 804C435C  4B EE 0A 7D */	bl mFI_GetBlockZMax
/* 804C4360  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 804C4364  3B E0 00 00 */	li r31, 0
/* 804C4368  48 00 00 2C */	b lbl_804C4394
lbl_804C436C:
/* 804C436C  3B C0 00 00 */	li r30, 0
/* 804C4370  48 00 00 18 */	b lbl_804C4388
lbl_804C4374:
/* 804C4374  7F 63 DB 78 */	mr r3, r27
/* 804C4378  7F C4 F3 78 */	mr r4, r30
/* 804C437C  7F E5 FB 78 */	mr r5, r31
/* 804C4380  4B FF FE 41 */	bl bg_item_common_chg_BGDataR_b
/* 804C4384  3B DE 00 01 */	addi r30, r30, 1
lbl_804C4388:
/* 804C4388  7C 1E E8 00 */	cmpw r30, r29
/* 804C438C  41 80 FF E8 */	blt lbl_804C4374
/* 804C4390  3B FF 00 01 */	addi r31, r31, 1
lbl_804C4394:
/* 804C4394  7C 1F E0 00 */	cmpw r31, r28
/* 804C4398  41 80 FF D4 */	blt lbl_804C436C
/* 804C439C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C43A0  4B BD 6B 79 */	bl func_8009AF18
/* 804C43A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C43A8  7C 08 03 A6 */	mtlr r0
/* 804C43AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804C43B0  4E 80 00 20 */	blr 
