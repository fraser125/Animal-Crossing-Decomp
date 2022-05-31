lbl_803DFF1C:
/* 803DFF1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DFF20  7C 08 02 A6 */	mflr r0
/* 803DFF24  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DFF28  39 61 00 20 */	addi r11, r1, 0x20
/* 803DFF2C  4B CB AF A9 */	bl func_8009AED4
/* 803DFF30  7C 7D 1B 78 */	mr r29, r3
/* 803DFF34  7C 9E 23 78 */	mr r30, r4
/* 803DFF38  3B E0 00 00 */	li r31, 0
/* 803DFF3C  4B FF FF A5 */	bl mPr_NullCheckPlayerName
/* 803DFF40  2C 03 00 00 */	cmpwi r3, 0
/* 803DFF44  40 82 00 28 */	bne lbl_803DFF6C
/* 803DFF48  7F C3 F3 78 */	mr r3, r30
/* 803DFF4C  4B FF FF 95 */	bl mPr_NullCheckPlayerName
/* 803DFF50  2C 03 00 00 */	cmpwi r3, 0
/* 803DFF54  40 82 00 18 */	bne lbl_803DFF6C
/* 803DFF58  7F A3 EB 78 */	mr r3, r29
/* 803DFF5C  7F C4 F3 78 */	mr r4, r30
/* 803DFF60  38 A0 00 08 */	li r5, 8
/* 803DFF64  4B FD AB 01 */	bl mem_cmp
/* 803DFF68  7C 7F 1B 78 */	mr r31, r3
lbl_803DFF6C:
/* 803DFF6C  7F E3 FB 78 */	mr r3, r31
/* 803DFF70  39 61 00 20 */	addi r11, r1, 0x20
/* 803DFF74  4B CB AF AD */	bl func_8009AF20
/* 803DFF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DFF7C  7C 08 03 A6 */	mtlr r0
/* 803DFF80  38 21 00 20 */	addi r1, r1, 0x20
/* 803DFF84  4E 80 00 20 */	blr 
