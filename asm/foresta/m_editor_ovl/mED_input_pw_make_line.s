lbl_805D9444:
/* 805D9444  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D9448  7C 08 02 A6 */	mflr r0
/* 805D944C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D9450  39 61 00 20 */	addi r11, r1, 0x20
/* 805D9454  4B AC 1A 81 */	bl func_8009AED4
/* 805D9458  7C 9E 23 78 */	mr r30, r4
/* 805D945C  7C 7D 1B 78 */	mr r29, r3
/* 805D9460  88 04 00 13 */	lbz r0, 0x13(r4)
/* 805D9464  28 00 00 CD */	cmplwi r0, 0xcd
/* 805D9468  41 82 00 5C */	beq lbl_805D94C4
/* 805D946C  7F C3 F3 78 */	mr r3, r30
/* 805D9470  4B FF FD 51 */	bl mED_get_single_line_width
/* 805D9474  7C 7F 1B 78 */	mr r31, r3
/* 805D9478  88 7E 00 13 */	lbz r3, 0x13(r30)
/* 805D947C  38 80 00 01 */	li r4, 1
/* 805D9480  4B DD 62 1D */	bl mFont_GetCodeWidth
/* 805D9484  A8 9E 00 1E */	lha r4, 0x1e(r30)
/* 805D9488  7C 7F 1A 14 */	add r3, r31, r3
/* 805D948C  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 805D9490  7C 04 00 00 */	cmpw r4, r0
/* 805D9494  40 80 00 1C */	bge lbl_805D94B0
/* 805D9498  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 805D949C  7C 03 00 00 */	cmpw r3, r0
/* 805D94A0  41 81 00 10 */	bgt lbl_805D94B0
/* 805D94A4  7F C3 F3 78 */	mr r3, r30
/* 805D94A8  4B FF FC C1 */	bl mED_output_code
/* 805D94AC  48 00 00 18 */	b lbl_805D94C4
lbl_805D94B0:
/* 805D94B0  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805D94B4  7F A3 EB 78 */	mr r3, r29
/* 805D94B8  38 A0 00 19 */	li r5, 0x19
/* 805D94BC  38 84 03 24 */	addi r4, r4, 0x324
/* 805D94C0  4B FF EE F1 */	bl func_805D83B0
lbl_805D94C4:
/* 805D94C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D94C8  4B AC 1A 59 */	bl func_8009AF20
/* 805D94CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D94D0  7C 08 03 A6 */	mtlr r0
/* 805D94D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805D94D8  4E 80 00 20 */	blr 
