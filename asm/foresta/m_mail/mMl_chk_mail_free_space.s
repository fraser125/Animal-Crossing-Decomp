lbl_803BC8A4:
/* 803BC8A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BC8A8  7C 08 02 A6 */	mflr r0
/* 803BC8AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BC8B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803BC8B4  4B CD E6 21 */	bl func_8009AED4
/* 803BC8B8  7C 7D 1B 78 */	mr r29, r3
/* 803BC8BC  7C 9E 23 78 */	mr r30, r4
/* 803BC8C0  3B E0 00 00 */	li r31, 0
/* 803BC8C4  48 00 00 24 */	b lbl_803BC8E8
lbl_803BC8C8:
/* 803BC8C8  7F A3 EB 78 */	mr r3, r29
/* 803BC8CC  4B FF FE D5 */	bl mMl_check_not_used_mail
/* 803BC8D0  2C 03 00 01 */	cmpwi r3, 1
/* 803BC8D4  40 82 00 0C */	bne lbl_803BC8E0
/* 803BC8D8  7F E3 FB 78 */	mr r3, r31
/* 803BC8DC  48 00 00 18 */	b lbl_803BC8F4
lbl_803BC8E0:
/* 803BC8E0  3B BD 01 2A */	addi r29, r29, 0x12a
/* 803BC8E4  3B FF 00 01 */	addi r31, r31, 1
lbl_803BC8E8:
/* 803BC8E8  7C 1F F0 00 */	cmpw r31, r30
/* 803BC8EC  41 80 FF DC */	blt lbl_803BC8C8
/* 803BC8F0  38 60 FF FF */	li r3, -1
lbl_803BC8F4:
/* 803BC8F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803BC8F8  4B CD E6 29 */	bl func_8009AF20
/* 803BC8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BC900  7C 08 03 A6 */	mtlr r0
/* 803BC904  38 21 00 20 */	addi r1, r1, 0x20
/* 803BC908  4E 80 00 20 */	blr 
