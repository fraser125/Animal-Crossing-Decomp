lbl_805D25C8:
/* 805D25C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D25CC  7C 08 02 A6 */	mflr r0
/* 805D25D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D25D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D25D8  4B AC 88 FD */	bl func_8009AED4
/* 805D25DC  3C 80 80 6D */	lis r4, mDE_paint_mask_cat_mask@ha /* 0x806CC2B0@ha */
/* 805D25E0  7C 7D 1B 78 */	mr r29, r3
/* 805D25E4  3B E4 C2 B0 */	addi r31, r4, mDE_paint_mask_cat_mask@l /* 0x806CC2B0@l */
/* 805D25E8  3B C0 00 00 */	li r30, 0
lbl_805D25EC:
/* 805D25EC  88 1F 00 00 */	lbz r0, 0(r31)
/* 805D25F0  7F C5 2E 70 */	srawi r5, r30, 5
/* 805D25F4  57 C3 D8 08 */	slwi r3, r30, 0x1b
/* 805D25F8  57 C4 0F FE */	srwi r4, r30, 0x1f
/* 805D25FC  7C 64 18 50 */	subf r3, r4, r3
/* 805D2600  28 00 00 00 */	cmplwi r0, 0
/* 805D2604  54 60 28 3E */	rotlwi r0, r3, 5
/* 805D2608  7C A5 01 94 */	addze r5, r5
/* 805D260C  7C 80 22 14 */	add r4, r0, r4
/* 805D2610  41 82 00 10 */	beq lbl_805D2620
/* 805D2614  7F A3 EB 78 */	mr r3, r29
/* 805D2618  38 C0 00 00 */	li r6, 0
/* 805D261C  4B FF F9 05 */	bl mDE_set_pal_on_cursor
lbl_805D2620:
/* 805D2620  3B DE 00 01 */	addi r30, r30, 1
/* 805D2624  3B FF 00 01 */	addi r31, r31, 1
/* 805D2628  2C 1E 04 00 */	cmpwi r30, 0x400
/* 805D262C  41 80 FF C0 */	blt lbl_805D25EC
/* 805D2630  39 61 00 20 */	addi r11, r1, 0x20
/* 805D2634  4B AC 88 ED */	bl func_8009AF20
/* 805D2638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D263C  7C 08 03 A6 */	mtlr r0
/* 805D2640  38 21 00 20 */	addi r1, r1, 0x20
/* 805D2644  4E 80 00 20 */	blr 
