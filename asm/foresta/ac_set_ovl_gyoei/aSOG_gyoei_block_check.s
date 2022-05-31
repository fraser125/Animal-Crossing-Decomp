lbl_80499F4C:
/* 80499F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80499F50  7C 08 02 A6 */	mflr r0
/* 80499F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80499F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80499F5C  4B C0 0F 79 */	bl func_8009AED4
/* 80499F60  7C 7D 1B 78 */	mr r29, r3
/* 80499F64  7C BE 2B 78 */	mr r30, r5
/* 80499F68  3B E0 00 00 */	li r31, 0
/* 80499F6C  4B FF FF 8D */	bl aSOG_gyo_chk_live_gyoei
/* 80499F70  2C 03 00 00 */	cmpwi r3, 0
/* 80499F74  40 82 00 34 */	bne lbl_80499FA8
/* 80499F78  57 C0 05 28 */	rlwinm r0, r30, 0, 0x14, 0x14
/* 80499F7C  28 00 08 00 */	cmplwi r0, 0x800
/* 80499F80  41 82 00 2C */	beq lbl_80499FAC
/* 80499F84  57 C0 06 30 */	rlwinm r0, r30, 0, 0x18, 0x18
/* 80499F88  28 00 00 80 */	cmplwi r0, 0x80
/* 80499F8C  41 82 00 20 */	beq lbl_80499FAC
/* 80499F90  7F A3 EB 78 */	mr r3, r29
/* 80499F94  4B FF FE DD */	bl aSOG_gyoei_check_water_unit_in_block
/* 80499F98  2C 03 00 00 */	cmpwi r3, 0
/* 80499F9C  40 82 00 10 */	bne lbl_80499FAC
/* 80499FA0  3B E0 00 01 */	li r31, 1
/* 80499FA4  48 00 00 08 */	b lbl_80499FAC
lbl_80499FA8:
/* 80499FA8  3B E0 00 01 */	li r31, 1
lbl_80499FAC:
/* 80499FAC  7F E3 FB 78 */	mr r3, r31
/* 80499FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80499FB4  4B C0 0F 6D */	bl func_8009AF20
/* 80499FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80499FBC  7C 08 03 A6 */	mtlr r0
/* 80499FC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80499FC4  4E 80 00 20 */	blr 
