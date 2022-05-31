lbl_804BC844:
/* 804BC844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BC848  7C 08 02 A6 */	mflr r0
/* 804BC84C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BC850  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC854  4B BD E6 79 */	bl func_8009AECC
/* 804BC858  7C 7B 1B 78 */	mr r27, r3
/* 804BC85C  4B EE 85 35 */	bl mFI_GetBlockXMax
/* 804BC860  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 804BC864  4B EE 85 75 */	bl mFI_GetBlockZMax
/* 804BC868  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 804BC86C  3B E0 00 00 */	li r31, 0
/* 804BC870  48 00 00 2C */	b lbl_804BC89C
lbl_804BC874:
/* 804BC874  3B C0 00 00 */	li r30, 0
/* 804BC878  48 00 00 18 */	b lbl_804BC890
lbl_804BC87C:
/* 804BC87C  7F 63 DB 78 */	mr r3, r27
/* 804BC880  7F C4 F3 78 */	mr r4, r30
/* 804BC884  7F E5 FB 78 */	mr r5, r31
/* 804BC888  4B FF FE 41 */	bl bg_item_common_chg_BGDataR_b
/* 804BC88C  3B DE 00 01 */	addi r30, r30, 1
lbl_804BC890:
/* 804BC890  7C 1E E8 00 */	cmpw r30, r29
/* 804BC894  41 80 FF E8 */	blt lbl_804BC87C
/* 804BC898  3B FF 00 01 */	addi r31, r31, 1
lbl_804BC89C:
/* 804BC89C  7C 1F E0 00 */	cmpw r31, r28
/* 804BC8A0  41 80 FF D4 */	blt lbl_804BC874
/* 804BC8A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC8A8  4B BD E6 71 */	bl func_8009AF18
/* 804BC8AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BC8B0  7C 08 03 A6 */	mtlr r0
/* 804BC8B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804BC8B8  4E 80 00 20 */	blr 
