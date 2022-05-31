lbl_8053F850:
/* 8053F850  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053F854  7C 08 02 A6 */	mflr r0
/* 8053F858  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053F85C  38 00 00 00 */	li r0, 0
/* 8053F860  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053F864  7C 7F 1B 78 */	mr r31, r3
/* 8053F868  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8053F86C  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 8053F870  28 00 00 01 */	cmplwi r0, 1
/* 8053F874  40 82 00 48 */	bne lbl_8053F8BC
/* 8053F878  A8 BF 08 00 */	lha r5, 0x800(r31)
/* 8053F87C  3C 80 43 30 */	lis r4, 0x4330
/* 8053F880  A8 1F 08 02 */	lha r0, 0x802(r31)
/* 8053F884  3C C0 80 65 */	lis r6, lit_811@ha /* 0x80649384@ha */
/* 8053F888  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8053F88C  90 81 00 08 */	stw r4, 8(r1)
/* 8053F890  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053F894  C8 46 93 84 */	lfd f2, lit_811@l(r6)  /* 0x80649384@l */
/* 8053F898  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8053F89C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053F8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F8A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8053F8A8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8053F8AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8053F8B0  EC 40 10 28 */	fsubs f2, f0, f2
/* 8053F8B4  4B FF E2 4D */	bl aNPC_set_avoid_pos
/* 8053F8B8  48 00 00 44 */	b lbl_8053F8FC
lbl_8053F8BC:
/* 8053F8BC  A8 BF 08 00 */	lha r5, 0x800(r31)
/* 8053F8C0  3C 80 43 30 */	lis r4, 0x4330
/* 8053F8C4  A8 1F 08 02 */	lha r0, 0x802(r31)
/* 8053F8C8  3C C0 80 65 */	lis r6, lit_811@ha /* 0x80649384@ha */
/* 8053F8CC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8053F8D0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8053F8D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053F8D8  C8 46 93 84 */	lfd f2, lit_811@l(r6)  /* 0x80649384@l */
/* 8053F8DC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8053F8E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8053F8E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8053F8E8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8053F8EC  90 81 00 08 */	stw r4, 8(r1)
/* 8053F8F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053F8F4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8053F8F8  4B FF E2 31 */	bl aNPC_set_dst_pos
lbl_8053F8FC:
/* 8053F8FC  88 9F 07 F5 */	lbz r4, 0x7f5(r31)
/* 8053F900  7F E3 FB 78 */	mr r3, r31
/* 8053F904  38 04 FF FD */	addi r0, r4, -3
/* 8053F908  30 00 FF FF */	addic r0, r0, -1
/* 8053F90C  7C 80 01 10 */	subfe r4, r0, r0
/* 8053F910  38 84 00 0E */	addi r4, r4, 0xe
/* 8053F914  4B FF E4 3D */	bl aNPC_setupAction
/* 8053F918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053F91C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053F920  7C 08 03 A6 */	mtlr r0
/* 8053F924  38 21 00 20 */	addi r1, r1, 0x20
/* 8053F928  4E 80 00 20 */	blr 
