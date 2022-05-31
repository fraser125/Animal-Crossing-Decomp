lbl_803AE8B4:
/* 803AE8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE8B8  7C 08 02 A6 */	mflr r0
/* 803AE8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE8C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AE8C4  3B E3 23 B8 */	addi r31, r3, 0x23b8
/* 803AE8C8  7F E3 FB 78 */	mr r3, r31
/* 803AE8CC  4B FF FD 2D */	bl func_803AE5F8
/* 803AE8D0  2C 03 00 00 */	cmpwi r3, 0
/* 803AE8D4  41 82 00 34 */	beq lbl_803AE908
/* 803AE8D8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 803AE8DC  28 00 00 00 */	cmplwi r0, 0
/* 803AE8E0  41 82 00 28 */	beq lbl_803AE908
/* 803AE8E4  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE8E8  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE8EC  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE8F0  38 80 00 CC */	li r4, 0xcc
/* 803AE8F4  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE8F8  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE8FC  4B FF DE CD */	bl mFRm_set_errInfo
/* 803AE900  38 60 00 01 */	li r3, 1
/* 803AE904  48 00 00 08 */	b lbl_803AE90C
lbl_803AE908:
/* 803AE908  38 60 00 00 */	li r3, 0
lbl_803AE90C:
/* 803AE90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AE914  7C 08 03 A6 */	mtlr r0
/* 803AE918  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE91C  4E 80 00 20 */	blr 
