lbl_805D8A54:
/* 805D8A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D8A58  7C 08 02 A6 */	mflr r0
/* 805D8A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D8A60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D8A64  3B E0 00 00 */	li r31, 0
/* 805D8A68  93 C1 00 08 */	stw r30, 8(r1)
/* 805D8A6C  7C 7E 1B 78 */	mr r30, r3
/* 805D8A70  4B FF FE 11 */	bl mED_check_shift
/* 805D8A74  2C 03 00 01 */	cmpwi r3, 1
/* 805D8A78  40 82 00 1C */	bne lbl_805D8A94
/* 805D8A7C  88 1E 00 05 */	lbz r0, 5(r30)
/* 805D8A80  28 00 00 00 */	cmplwi r0, 0
/* 805D8A84  40 82 00 5C */	bne lbl_805D8AE0
/* 805D8A88  38 60 00 37 */	li r3, 0x37
/* 805D8A8C  48 05 52 79 */	bl sAdo_SysTrgStart
/* 805D8A90  48 00 00 50 */	b lbl_805D8AE0
lbl_805D8A94:
/* 805D8A94  7F C3 F3 78 */	mr r3, r30
/* 805D8A98  4B FF FE 55 */	bl mED_check_arrange
/* 805D8A9C  2C 03 00 01 */	cmpwi r3, 1
/* 805D8AA0  40 82 00 10 */	bne lbl_805D8AB0
/* 805D8AA4  38 60 00 37 */	li r3, 0x37
/* 805D8AA8  48 05 52 5D */	bl sAdo_SysTrgStart
/* 805D8AAC  48 00 00 34 */	b lbl_805D8AE0
lbl_805D8AB0:
/* 805D8AB0  7F C3 F3 78 */	mr r3, r30
/* 805D8AB4  4B FF FE A5 */	bl mED_check_input_mode
/* 805D8AB8  2C 03 00 01 */	cmpwi r3, 1
/* 805D8ABC  40 82 00 10 */	bne lbl_805D8ACC
/* 805D8AC0  38 60 00 37 */	li r3, 0x37
/* 805D8AC4  48 05 52 41 */	bl sAdo_SysTrgStart
/* 805D8AC8  48 00 00 18 */	b lbl_805D8AE0
lbl_805D8ACC:
/* 805D8ACC  7F C3 F3 78 */	mr r3, r30
/* 805D8AD0  4B FF FE F9 */	bl mED_check_now_code
/* 805D8AD4  2C 03 00 01 */	cmpwi r3, 1
/* 805D8AD8  40 82 00 08 */	bne lbl_805D8AE0
/* 805D8ADC  3B E0 00 08 */	li r31, 8
lbl_805D8AE0:
/* 805D8AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D8AE4  7F E3 FB 78 */	mr r3, r31
/* 805D8AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D8AEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D8AF0  7C 08 03 A6 */	mtlr r0
/* 805D8AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805D8AF8  4E 80 00 20 */	blr 
