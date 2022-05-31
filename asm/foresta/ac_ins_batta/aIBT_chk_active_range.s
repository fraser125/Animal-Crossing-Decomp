lbl_80596A94:
/* 80596A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80596A98  7C 08 02 A6 */	mflr r0
/* 80596A9C  3C A0 80 65 */	lis r5, lit_557@ha /* 0x80649E20@ha */
/* 80596AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80596AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80596AA8  7C 7F 1B 78 */	mr r31, r3
/* 80596AAC  38 60 00 01 */	li r3, 1
/* 80596AB0  C0 44 02 4C */	lfs f2, 0x24c(r4)
/* 80596AB4  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80596AB8  C0 64 02 50 */	lfs f3, 0x250(r4)
/* 80596ABC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80596AC0  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 80596AC4  C0 05 9E 20 */	lfs f0, lit_557@l(r5)  /* 0x80649E20@l */
/* 80596AC8  EC 23 08 28 */	fsubs f1, f3, f1
/* 80596ACC  EC 82 00 B2 */	fmuls f4, f2, f2
/* 80596AD0  EC 61 00 72 */	fmuls f3, f1, f1
/* 80596AD4  EC 64 18 2A */	fadds f3, f4, f3
/* 80596AD8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80596ADC  4C 41 13 82 */	cror 2, 1, 2
/* 80596AE0  40 82 00 18 */	bne lbl_80596AF8
/* 80596AE4  28 1F 00 00 */	cmplwi r31, 0
/* 80596AE8  41 82 00 0C */	beq lbl_80596AF4
/* 80596AEC  4B E7 55 15 */	bl atans_table
/* 80596AF0  B0 7F 00 00 */	sth r3, 0(r31)
lbl_80596AF4:
/* 80596AF4  38 60 00 00 */	li r3, 0
lbl_80596AF8:
/* 80596AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80596AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80596B00  7C 08 03 A6 */	mtlr r0
/* 80596B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80596B08  4E 80 00 20 */	blr 
