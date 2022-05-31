lbl_804CB754:
/* 804CB754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CB758  7C 08 02 A6 */	mflr r0
/* 804CB75C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CB760  39 61 00 20 */	addi r11, r1, 0x20
/* 804CB764  4B BC F7 69 */	bl func_8009AECC
/* 804CB768  7C 7B 1B 78 */	mr r27, r3
/* 804CB76C  4B ED 96 25 */	bl mFI_GetBlockXMax
/* 804CB770  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 804CB774  4B ED 96 65 */	bl mFI_GetBlockZMax
/* 804CB778  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 804CB77C  3B E0 00 00 */	li r31, 0
/* 804CB780  48 00 00 2C */	b lbl_804CB7AC
lbl_804CB784:
/* 804CB784  3B C0 00 00 */	li r30, 0
/* 804CB788  48 00 00 18 */	b lbl_804CB7A0
lbl_804CB78C:
/* 804CB78C  7F 63 DB 78 */	mr r3, r27
/* 804CB790  7F C4 F3 78 */	mr r4, r30
/* 804CB794  7F E5 FB 78 */	mr r5, r31
/* 804CB798  4B FF FE 41 */	bl bg_item_common_chg_BGDataR_b
/* 804CB79C  3B DE 00 01 */	addi r30, r30, 1
lbl_804CB7A0:
/* 804CB7A0  7C 1E E8 00 */	cmpw r30, r29
/* 804CB7A4  41 80 FF E8 */	blt lbl_804CB78C
/* 804CB7A8  3B FF 00 01 */	addi r31, r31, 1
lbl_804CB7AC:
/* 804CB7AC  7C 1F E0 00 */	cmpw r31, r28
/* 804CB7B0  41 80 FF D4 */	blt lbl_804CB784
/* 804CB7B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804CB7B8  4B BC F7 61 */	bl func_8009AF18
/* 804CB7BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CB7C0  7C 08 03 A6 */	mtlr r0
/* 804CB7C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804CB7C8  4E 80 00 20 */	blr 
