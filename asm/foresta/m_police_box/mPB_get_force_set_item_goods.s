lbl_803DEA74:
/* 803DEA74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DEA78  7C 08 02 A6 */	mflr r0
/* 803DEA7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DEA80  38 00 00 00 */	li r0, 0
/* 803DEA84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803DEA88  3B E0 00 05 */	li r31, 5
/* 803DEA8C  B0 01 00 08 */	sth r0, 8(r1)
/* 803DEA90  4B C7 E2 65 */	bl fqrand
/* 803DEA94  3C 80 80 64 */	lis r4, lit_467@ha /* 0x806430E0@ha */
/* 803DEA98  3C 60 80 66 */	lis r3, prob_table_458@ha /* 0x8065BDAC@ha */
/* 803DEA9C  C0 04 30 E0 */	lfs f0, lit_467@l(r4)  /* 0x806430E0@l */
/* 803DEAA0  38 83 BD AC */	addi r4, r3, prob_table_458@l /* 0x8065BDAC@l */
/* 803DEAA4  38 00 00 05 */	li r0, 5
/* 803DEAA8  38 C0 00 00 */	li r6, 0
/* 803DEAAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DEAB0  38 60 00 00 */	li r3, 0
/* 803DEAB4  FC 00 00 1E */	fctiwz f0, f0
/* 803DEAB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803DEABC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803DEAC0  7C 09 03 A6 */	mtctr r0
lbl_803DEAC4:
/* 803DEAC4  7C 04 18 2E */	lwzx r0, r4, r3
/* 803DEAC8  7C 05 00 00 */	cmpw r5, r0
/* 803DEACC  41 81 00 0C */	bgt lbl_803DEAD8
/* 803DEAD0  7C DF 33 78 */	mr r31, r6
/* 803DEAD4  48 00 00 10 */	b lbl_803DEAE4
lbl_803DEAD8:
/* 803DEAD8  38 C6 00 01 */	addi r6, r6, 1
/* 803DEADC  38 63 00 04 */	addi r3, r3, 4
/* 803DEAE0  42 00 FF E4 */	bdnz lbl_803DEAC4
lbl_803DEAE4:
/* 803DEAE4  3C 60 80 66 */	lis r3, data_8065BD98@ha /* 0x8065BD98@ha */
/* 803DEAE8  57 E0 10 3A */	slwi r0, r31, 2
/* 803DEAEC  38 63 BD 98 */	addi r3, r3, data_8065BD98@l /* 0x8065BD98@l */
/* 803DEAF0  38 81 00 08 */	addi r4, r1, 8
/* 803DEAF4  7D 03 00 2E */	lwzx r8, r3, r0
/* 803DEAF8  38 60 00 00 */	li r3, 0
/* 803DEAFC  38 A0 00 01 */	li r5, 1
/* 803DEB00  38 C0 00 00 */	li r6, 0
/* 803DEB04  38 E0 00 00 */	li r7, 0
/* 803DEB08  39 20 00 00 */	li r9, 0
/* 803DEB0C  39 40 00 00 */	li r10, 0
/* 803DEB10  48 00 98 CD */	bl mSP_SelectRandomItem_New
/* 803DEB14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DEB18  A0 61 00 08 */	lhz r3, 8(r1)
/* 803DEB1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803DEB20  7C 08 03 A6 */	mtlr r0
/* 803DEB24  38 21 00 20 */	addi r1, r1, 0x20
/* 803DEB28  4E 80 00 20 */	blr 
