lbl_805D9B54:
/* 805D9B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D9B58  7C 08 02 A6 */	mflr r0
/* 805D9B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D9B60  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D9B64  80 C5 09 8C */	lwz r6, 0x98c(r5)
/* 805D9B68  88 06 00 11 */	lbz r0, 0x11(r6)
/* 805D9B6C  28 00 00 08 */	cmplwi r0, 8
/* 805D9B70  41 81 00 78 */	bgt lbl_805D9BE8
/* 805D9B74  3C A0 80 6D */	lis r5, lit_1054@ha /* 0x806CCCEC@ha */
/* 805D9B78  54 00 10 3A */	slwi r0, r0, 2
/* 805D9B7C  38 A5 CC EC */	addi r5, r5, lit_1054@l /* 0x806CCCEC@l */
/* 805D9B80  7C 05 00 2E */	lwzx r0, r5, r0
/* 805D9B84  7C 09 03 A6 */	mtctr r0
/* 805D9B88  4E 80 04 20 */	bctr 
lbl_805D9B8C:
/* 805D9B8C  7C C3 33 78 */	mr r3, r6
/* 805D9B90  4B FF FB 01 */	bl mED_move_cursol_left
/* 805D9B94  48 00 00 54 */	b lbl_805D9BE8
lbl_805D9B98:
/* 805D9B98  7C C4 33 78 */	mr r4, r6
/* 805D9B9C  4B FF FB 5D */	bl mED_move_cursol_lower
/* 805D9BA0  48 00 00 48 */	b lbl_805D9BE8
lbl_805D9BA4:
/* 805D9BA4  7C C3 33 78 */	mr r3, r6
/* 805D9BA8  4B FF FB 09 */	bl mED_move_cursol_upper
/* 805D9BAC  48 00 00 3C */	b lbl_805D9BE8
lbl_805D9BB0:
/* 805D9BB0  7C C4 33 78 */	mr r4, r6
/* 805D9BB4  38 A0 00 01 */	li r5, 1
/* 805D9BB8  4B FF FA 1D */	bl mED_move_cursol_right
/* 805D9BBC  48 00 00 2C */	b lbl_805D9BE8
lbl_805D9BC0:
/* 805D9BC0  4B FF FB ED */	bl mED_end_edit_func
/* 805D9BC4  48 00 00 24 */	b lbl_805D9BE8
lbl_805D9BC8:
/* 805D9BC8  7C C3 33 78 */	mr r3, r6
/* 805D9BCC  4B FF FC 31 */	bl mED_backspace_func
/* 805D9BD0  48 00 00 18 */	b lbl_805D9BE8
lbl_805D9BD4:
/* 805D9BD4  7C C3 33 78 */	mr r3, r6
/* 805D9BD8  4B FF FD 7D */	bl mED_exchange_code_func
/* 805D9BDC  48 00 00 0C */	b lbl_805D9BE8
lbl_805D9BE0:
/* 805D9BE0  7C C4 33 78 */	mr r4, r6
/* 805D9BE4  4B FF F8 3D */	bl mED_input_multi_line
lbl_805D9BE8:
/* 805D9BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D9BEC  7C 08 03 A6 */	mtlr r0
/* 805D9BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 805D9BF4  4E 80 00 20 */	blr 
