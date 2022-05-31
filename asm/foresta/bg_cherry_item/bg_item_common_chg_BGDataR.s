lbl_804B54C0:
/* 804B54C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B54C4  7C 08 02 A6 */	mflr r0
/* 804B54C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B54CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804B54D0  4B BE 59 FD */	bl func_8009AECC
/* 804B54D4  7C 7B 1B 78 */	mr r27, r3
/* 804B54D8  4B EE F8 B9 */	bl mFI_GetBlockXMax
/* 804B54DC  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 804B54E0  4B EE F8 F9 */	bl mFI_GetBlockZMax
/* 804B54E4  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 804B54E8  3B E0 00 00 */	li r31, 0
/* 804B54EC  48 00 00 2C */	b lbl_804B5518
lbl_804B54F0:
/* 804B54F0  3B C0 00 00 */	li r30, 0
/* 804B54F4  48 00 00 18 */	b lbl_804B550C
lbl_804B54F8:
/* 804B54F8  7F 63 DB 78 */	mr r3, r27
/* 804B54FC  7F C4 F3 78 */	mr r4, r30
/* 804B5500  7F E5 FB 78 */	mr r5, r31
/* 804B5504  4B FF FE 41 */	bl bg_item_common_chg_BGDataR_b
/* 804B5508  3B DE 00 01 */	addi r30, r30, 1
lbl_804B550C:
/* 804B550C  7C 1E E8 00 */	cmpw r30, r29
/* 804B5510  41 80 FF E8 */	blt lbl_804B54F8
/* 804B5514  3B FF 00 01 */	addi r31, r31, 1
lbl_804B5518:
/* 804B5518  7C 1F E0 00 */	cmpw r31, r28
/* 804B551C  41 80 FF D4 */	blt lbl_804B54F0
/* 804B5520  39 61 00 20 */	addi r11, r1, 0x20
/* 804B5524  4B BE 59 F5 */	bl func_8009AF18
/* 804B5528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B552C  7C 08 03 A6 */	mtlr r0
/* 804B5530  38 21 00 20 */	addi r1, r1, 0x20
/* 804B5534  4E 80 00 20 */	blr 
