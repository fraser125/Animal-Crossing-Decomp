lbl_805ACD30:
/* 805ACD30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ACD34  7C 08 02 A6 */	mflr r0
/* 805ACD38  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ACD3C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805ACD40  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805ACD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ACD48  93 C1 00 08 */	stw r30, 8(r1)
/* 805ACD4C  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064A6A8@ha */
/* 805ACD50  7C 7E 1B 78 */	mr r30, r3
/* 805ACD54  C3 E4 A6 A8 */	lfs f31, lit_488@l(r4)  /* 0x8064A6A8@l */
/* 805ACD58  3B E0 00 00 */	li r31, 0
/* 805ACD5C  4B E3 D9 B5 */	bl mSP_ShopOpen
/* 805ACD60  2C 03 00 02 */	cmpwi r3, 2
/* 805ACD64  41 82 00 10 */	beq lbl_805ACD74
/* 805ACD68  4B E3 D9 A9 */	bl mSP_ShopOpen
/* 805ACD6C  2C 03 00 06 */	cmpwi r3, 6
/* 805ACD70  40 82 00 08 */	bne lbl_805ACD78
lbl_805ACD74:
/* 805ACD74  3B E0 00 01 */	li r31, 1
lbl_805ACD78:
/* 805ACD78  2C 1F 00 01 */	cmpwi r31, 1
/* 805ACD7C  40 82 00 10 */	bne lbl_805ACD8C
/* 805ACD80  3C 60 80 65 */	lis r3, lit_550@ha /* 0x8064A6BC@ha */
/* 805ACD84  C3 E3 A6 BC */	lfs f31, lit_550@l(r3)  /* 0x8064A6BC@l */
/* 805ACD88  48 00 00 18 */	b lbl_805ACDA0
lbl_805ACD8C:
/* 805ACD8C  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805ACD90  2C 00 00 04 */	cmpwi r0, 4
/* 805ACD94  40 82 00 0C */	bne lbl_805ACDA0
/* 805ACD98  3C 60 80 65 */	lis r3, lit_550@ha /* 0x8064A6BC@ha */
/* 805ACD9C  C3 E3 A6 BC */	lfs f31, lit_550@l(r3)  /* 0x8064A6BC@l */
lbl_805ACDA0:
/* 805ACDA0  FC 20 F8 90 */	fmr f1, f31
/* 805ACDA4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805ACDA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ACDAC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805ACDB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805ACDB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805ACDB8  7C 08 03 A6 */	mtlr r0
/* 805ACDBC  38 21 00 20 */	addi r1, r1, 0x20
/* 805ACDC0  4E 80 00 20 */	blr 
