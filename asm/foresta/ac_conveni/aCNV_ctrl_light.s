lbl_805AAF54:
/* 805AAF54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AAF58  7C 08 02 A6 */	mflr r0
/* 805AAF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AAF60  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805AAF64  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805AAF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AAF6C  93 C1 00 08 */	stw r30, 8(r1)
/* 805AAF70  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064A630@ha */
/* 805AAF74  7C 7E 1B 78 */	mr r30, r3
/* 805AAF78  C3 E4 A6 30 */	lfs f31, lit_488@l(r4)  /* 0x8064A630@l */
/* 805AAF7C  3B E0 00 00 */	li r31, 0
/* 805AAF80  4B E3 F7 91 */	bl mSP_ShopOpen
/* 805AAF84  2C 03 00 02 */	cmpwi r3, 2
/* 805AAF88  41 82 00 10 */	beq lbl_805AAF98
/* 805AAF8C  4B E3 F7 85 */	bl mSP_ShopOpen
/* 805AAF90  2C 03 00 06 */	cmpwi r3, 6
/* 805AAF94  40 82 00 08 */	bne lbl_805AAF9C
lbl_805AAF98:
/* 805AAF98  3B E0 00 01 */	li r31, 1
lbl_805AAF9C:
/* 805AAF9C  2C 1F 00 01 */	cmpwi r31, 1
/* 805AAFA0  40 82 00 10 */	bne lbl_805AAFB0
/* 805AAFA4  3C 60 80 65 */	lis r3, lit_550@ha /* 0x8064A644@ha */
/* 805AAFA8  C3 E3 A6 44 */	lfs f31, lit_550@l(r3)  /* 0x8064A644@l */
/* 805AAFAC  48 00 00 18 */	b lbl_805AAFC4
lbl_805AAFB0:
/* 805AAFB0  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805AAFB4  2C 00 00 04 */	cmpwi r0, 4
/* 805AAFB8  40 82 00 0C */	bne lbl_805AAFC4
/* 805AAFBC  3C 60 80 65 */	lis r3, lit_550@ha /* 0x8064A644@ha */
/* 805AAFC0  C3 E3 A6 44 */	lfs f31, lit_550@l(r3)  /* 0x8064A644@l */
lbl_805AAFC4:
/* 805AAFC4  FC 20 F8 90 */	fmr f1, f31
/* 805AAFC8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805AAFCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AAFD0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805AAFD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AAFD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AAFDC  7C 08 03 A6 */	mtlr r0
/* 805AAFE0  38 21 00 20 */	addi r1, r1, 0x20
/* 805AAFE4  4E 80 00 20 */	blr 
