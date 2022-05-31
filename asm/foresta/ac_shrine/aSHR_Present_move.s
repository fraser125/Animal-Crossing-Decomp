lbl_805BA8AC:
/* 805BA8AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA8B0  7C 08 02 A6 */	mflr r0
/* 805BA8B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA8B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA8BC  4B AE 06 19 */	bl func_8009AED4
/* 805BA8C0  7C 7D 1B 78 */	mr r29, r3
/* 805BA8C4  7C 9E 23 78 */	mr r30, r4
/* 805BA8C8  81 83 00 14 */	lwz r12, 0x14(r3)
/* 805BA8CC  7C BF 2B 78 */	mr r31, r5
/* 805BA8D0  7D 89 03 A6 */	mtctr r12
/* 805BA8D4  4E 80 04 21 */	bctrl 
/* 805BA8D8  3C 60 80 5C */	lis r3, aSHR_Present_move_walk@ha /* 0x805BA998@ha */
/* 805BA8DC  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 805BA8E0  38 03 A9 98 */	addi r0, r3, aSHR_Present_move_walk@l /* 0x805BA998@l */
/* 805BA8E4  7C 04 00 40 */	cmplw r4, r0
/* 805BA8E8  40 82 00 84 */	bne lbl_805BA96C
/* 805BA8EC  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 805BA8F0  2C 00 00 00 */	cmpwi r0, 0
/* 805BA8F4  40 82 00 78 */	bne lbl_805BA96C
/* 805BA8F8  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 805BA8FC  38 80 00 40 */	li r4, 0x40
/* 805BA900  38 A0 00 05 */	li r5, 5
/* 805BA904  4B DB B3 DD */	bl Actor_info_name_search
/* 805BA908  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BA90C  41 82 00 60 */	beq lbl_805BA96C
/* 805BA910  4B E5 18 C5 */	bl Matrix_push
/* 805BA914  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805BA918  38 60 00 00 */	li r3, 0
/* 805BA91C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805BA920  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 805BA924  C0 5D 00 04 */	lfs f2, 4(r29)
/* 805BA928  EC 21 00 2A */	fadds f1, f1, f0
/* 805BA92C  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 805BA930  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805BA934  EC 44 10 2A */	fadds f2, f4, f2
/* 805BA938  EC 63 00 2A */	fadds f3, f3, f0
/* 805BA93C  4B E5 19 C5 */	bl Matrix_translate
/* 805BA940  3C 80 80 65 */	lis r4, lit_578@ha /* 0x8064AB00@ha */
/* 805BA944  38 60 00 01 */	li r3, 1
/* 805BA948  C0 24 AB 00 */	lfs f1, lit_578@l(r4)  /* 0x8064AB00@l */
/* 805BA94C  FC 40 08 90 */	fmr f2, f1
/* 805BA950  FC 60 08 90 */	fmr f3, f1
/* 805BA954  4B E5 1A 99 */	bl Matrix_scale
/* 805BA958  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BA95C  4B E5 18 D1 */	bl Matrix_get
/* 805BA960  4B E5 18 B5 */	bl Matrix_pull
/* 805BA964  38 00 00 01 */	li r0, 1
/* 805BA968  90 1F 01 B8 */	stw r0, 0x1b8(r31)
lbl_805BA96C:
/* 805BA96C  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA970  4B AE 05 B1 */	bl func_8009AF20
/* 805BA974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA978  7C 08 03 A6 */	mtlr r0
/* 805BA97C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA980  4E 80 00 20 */	blr 
