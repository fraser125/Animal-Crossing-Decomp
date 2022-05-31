lbl_805DA030:
/* 805DA030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DA034  7C 08 02 A6 */	mflr r0
/* 805DA038  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DA03C  88 05 00 13 */	lbz r0, 0x13(r5)
/* 805DA040  2C 00 00 CD */	cmpwi r0, 0xcd
/* 805DA044  41 82 00 2C */	beq lbl_805DA070
/* 805DA048  40 80 00 24 */	bge lbl_805DA06C
/* 805DA04C  2C 00 00 20 */	cmpwi r0, 0x20
/* 805DA050  41 82 00 08 */	beq lbl_805DA058
/* 805DA054  48 00 00 18 */	b lbl_805DA06C
lbl_805DA058:
/* 805DA058  A8 05 00 16 */	lha r0, 0x16(r5)
/* 805DA05C  2C 00 00 00 */	cmpwi r0, 0
/* 805DA060  41 82 00 10 */	beq lbl_805DA070
/* 805DA064  4B FF FE 89 */	bl mED_input_footer_line_sub
/* 805DA068  48 00 00 08 */	b lbl_805DA070
lbl_805DA06C:
/* 805DA06C  4B FF FE 81 */	bl mED_input_footer_line_sub
lbl_805DA070:
/* 805DA070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DA074  7C 08 03 A6 */	mtlr r0
/* 805DA078  38 21 00 10 */	addi r1, r1, 0x10
/* 805DA07C  4E 80 00 20 */	blr 
