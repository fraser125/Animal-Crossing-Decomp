lbl_803C8980:
/* 803C8980  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C8984  7C 08 02 A6 */	mflr r0
/* 803C8988  3C 80 80 66 */	lis r4, area_table_618@ha /* 0x8065A318@ha */
/* 803C898C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C8990  38 00 00 05 */	li r0, 5
/* 803C8994  38 84 A3 18 */	addi r4, r4, area_table_618@l /* 0x8065A318@l */
/* 803C8998  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C899C  7C 7F 1B 78 */	mr r31, r3
/* 803C89A0  38 60 00 00 */	li r3, 0
/* 803C89A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C89A8  3B C0 00 00 */	li r30, 0
/* 803C89AC  7C 09 03 A6 */	mtctr r0
lbl_803C89B0:
/* 803C89B0  7C 04 18 2E */	lwzx r0, r4, r3
/* 803C89B4  54 00 08 3C */	slwi r0, r0, 1
/* 803C89B8  7C 1F 02 2E */	lhzx r0, r31, r0
/* 803C89BC  28 00 00 00 */	cmplwi r0, 0
/* 803C89C0  40 82 00 08 */	bne lbl_803C89C8
/* 803C89C4  3B DE 00 01 */	addi r30, r30, 1
lbl_803C89C8:
/* 803C89C8  38 63 00 04 */	addi r3, r3, 4
/* 803C89CC  42 00 FF E4 */	bdnz lbl_803C89B0
/* 803C89D0  2C 1E 00 00 */	cmpwi r30, 0
/* 803C89D4  40 81 00 80 */	ble lbl_803C8A54
/* 803C89D8  4B C9 43 1D */	bl fqrand
/* 803C89DC  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 803C89E0  3C 00 43 30 */	lis r0, 0x4330
/* 803C89E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803C89E8  3C 80 80 64 */	lis r4, data_80642864@ha /* 0x80642864@ha */
/* 803C89EC  3C 60 80 66 */	lis r3, area_table_618@ha /* 0x8065A318@ha */
/* 803C89F0  C8 44 28 64 */	lfd f2, data_80642864@l(r4)  /* 0x80642864@l */
/* 803C89F4  90 01 00 08 */	stw r0, 8(r1)
/* 803C89F8  38 A3 A3 18 */	addi r5, r3, area_table_618@l /* 0x8065A318@l */
/* 803C89FC  38 00 00 05 */	li r0, 5
/* 803C8A00  38 60 00 00 */	li r3, 0
/* 803C8A04  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C8A08  EC 00 10 28 */	fsubs f0, f0, f2
/* 803C8A0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C8A10  FC 00 00 1E */	fctiwz f0, f0
/* 803C8A14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C8A18  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 803C8A1C  7C 09 03 A6 */	mtctr r0
lbl_803C8A20:
/* 803C8A20  7C 05 18 2E */	lwzx r0, r5, r3
/* 803C8A24  54 04 08 3C */	slwi r4, r0, 1
/* 803C8A28  7C 1F 22 2E */	lhzx r0, r31, r4
/* 803C8A2C  28 00 00 00 */	cmplwi r0, 0
/* 803C8A30  40 82 00 1C */	bne lbl_803C8A4C
/* 803C8A34  2C 06 00 00 */	cmpwi r6, 0
/* 803C8A38  41 81 00 10 */	bgt lbl_803C8A48
/* 803C8A3C  38 00 28 05 */	li r0, 0x2805
/* 803C8A40  7C 1F 23 2E */	sthx r0, r31, r4
/* 803C8A44  48 00 00 10 */	b lbl_803C8A54
lbl_803C8A48:
/* 803C8A48  38 C6 FF FF */	addi r6, r6, -1
lbl_803C8A4C:
/* 803C8A4C  38 63 00 04 */	addi r3, r3, 4
/* 803C8A50  42 00 FF D0 */	bdnz lbl_803C8A20
lbl_803C8A54:
/* 803C8A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C8A58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C8A5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C8A60  7C 08 03 A6 */	mtlr r0
/* 803C8A64  38 21 00 20 */	addi r1, r1, 0x20
/* 803C8A68  4E 80 00 20 */	blr 
