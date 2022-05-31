lbl_805DA464:
/* 805DA464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DA468  7C 08 02 A6 */	mflr r0
/* 805DA46C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DA470  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA474  4B AC 0A 61 */	bl func_8009AED4
/* 805DA478  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DA47C  83 A5 09 8C */	lwz r29, 0x98c(r5)
/* 805DA480  83 E5 09 E8 */	lwz r31, 0x9e8(r5)
/* 805DA484  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 805DA488  8B DF 00 04 */	lbz r30, 4(r31)
/* 805DA48C  28 00 00 08 */	cmplwi r0, 8
/* 805DA490  41 81 00 78 */	bgt lbl_805DA508
/* 805DA494  3C A0 80 6D */	lis r5, lit_1267@ha /* 0x806CCD80@ha */
/* 805DA498  54 00 10 3A */	slwi r0, r0, 2
/* 805DA49C  38 A5 CD 80 */	addi r5, r5, lit_1267@l /* 0x806CCD80@l */
/* 805DA4A0  7C 05 00 2E */	lwzx r0, r5, r0
/* 805DA4A4  7C 09 03 A6 */	mtctr r0
/* 805DA4A8  4E 80 04 20 */	bctr 
lbl_805DA4AC:
/* 805DA4AC  7F A3 EB 78 */	mr r3, r29
/* 805DA4B0  4B FF F1 E1 */	bl mED_move_cursol_left
/* 805DA4B4  48 00 00 54 */	b lbl_805DA508
lbl_805DA4B8:
/* 805DA4B8  7F A4 EB 78 */	mr r4, r29
/* 805DA4BC  4B FF F2 3D */	bl mED_move_cursol_lower
/* 805DA4C0  48 00 00 48 */	b lbl_805DA508
lbl_805DA4C4:
/* 805DA4C4  7F A3 EB 78 */	mr r3, r29
/* 805DA4C8  4B FF F1 E9 */	bl mED_move_cursol_upper
/* 805DA4CC  48 00 00 3C */	b lbl_805DA508
lbl_805DA4D0:
/* 805DA4D0  7F A4 EB 78 */	mr r4, r29
/* 805DA4D4  38 A0 00 01 */	li r5, 1
/* 805DA4D8  4B FF F0 FD */	bl mED_move_cursol_right
/* 805DA4DC  48 00 00 2C */	b lbl_805DA508
lbl_805DA4E0:
/* 805DA4E0  4B FF F2 CD */	bl mED_end_edit_func
/* 805DA4E4  48 00 00 24 */	b lbl_805DA508
lbl_805DA4E8:
/* 805DA4E8  7F A3 EB 78 */	mr r3, r29
/* 805DA4EC  4B FF F3 11 */	bl mED_backspace_func
/* 805DA4F0  48 00 00 18 */	b lbl_805DA508
lbl_805DA4F4:
/* 805DA4F4  7F A3 EB 78 */	mr r3, r29
/* 805DA4F8  4B FF F4 5D */	bl mED_exchange_code_func
/* 805DA4FC  48 00 00 0C */	b lbl_805DA508
lbl_805DA500:
/* 805DA500  7F A4 EB 78 */	mr r4, r29
/* 805DA504  4B FF EF 1D */	bl mED_input_multi_line
lbl_805DA508:
/* 805DA508  57 C0 08 3C */	slwi r0, r30, 1
/* 805DA50C  A8 9D 00 1E */	lha r4, 0x1e(r29)
/* 805DA510  7C 7F 02 14 */	add r3, r31, r0
/* 805DA514  B0 83 00 06 */	sth r4, 6(r3)
/* 805DA518  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA51C  4B AC 0A 05 */	bl func_8009AF20
/* 805DA520  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DA524  7C 08 03 A6 */	mtlr r0
/* 805DA528  38 21 00 20 */	addi r1, r1, 0x20
/* 805DA52C  4E 80 00 20 */	blr 
