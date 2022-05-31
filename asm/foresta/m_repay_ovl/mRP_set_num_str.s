lbl_805EC988:
/* 805EC988  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805EC98C  7C 08 02 A6 */	mflr r0
/* 805EC990  90 01 00 64 */	stw r0, 0x64(r1)
/* 805EC994  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805EC998  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805EC99C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805EC9A0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805EC9A4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 805EC9A8  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 805EC9AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805EC9B0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805EC9B4  FF A0 08 90 */	fmr f29, f1
/* 805EC9B8  7C 7E 1B 78 */	mr r30, r3
/* 805EC9BC  FF C0 10 90 */	fmr f30, f2
/* 805EC9C0  7C BF 2B 78 */	mr r31, r5
/* 805EC9C4  7C 85 23 78 */	mr r5, r4
/* 805EC9C8  FF E0 18 90 */	fmr f31, f3
/* 805EC9CC  38 61 00 10 */	addi r3, r1, 0x10
/* 805EC9D0  38 80 00 07 */	li r4, 7
/* 805EC9D4  38 C0 00 06 */	li r6, 6
/* 805EC9D8  38 E0 00 00 */	li r7, 0
/* 805EC9DC  39 00 00 00 */	li r8, 0
/* 805EC9E0  39 20 00 01 */	li r9, 1
/* 805EC9E4  4B DC 2A 95 */	bl mFont_UnintToString
/* 805EC9E8  38 61 00 10 */	addi r3, r1, 0x10
/* 805EC9EC  38 80 00 07 */	li r4, 7
/* 805EC9F0  38 A0 00 01 */	li r5, 1
/* 805EC9F4  4B DC 2C DD */	bl mFont_GetStringWidth
/* 805EC9F8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC9FC  3C 00 43 30 */	lis r0, 0x4330
/* 805ECA00  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805ECA04  3C 80 80 65 */	lis r4, lit_533@ha /* 0x8064B754@ha */
/* 805ECA08  C8 24 B7 54 */	lfd f1, lit_533@l(r4)  /* 0x8064B754@l */
/* 805ECA0C  38 60 00 01 */	li r3, 1
/* 805ECA10  90 01 00 18 */	stw r0, 0x18(r1)
/* 805ECA14  38 00 00 00 */	li r0, 0
/* 805ECA18  FC 40 F0 90 */	fmr f2, f30
/* 805ECA1C  38 81 00 10 */	addi r4, r1, 0x10
/* 805ECA20  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805ECA24  FC 60 F8 90 */	fmr f3, f31
/* 805ECA28  90 61 00 08 */	stw r3, 8(r1)
/* 805ECA2C  FC 80 F8 90 */	fmr f4, f31
/* 805ECA30  EC 00 08 28 */	fsubs f0, f0, f1
/* 805ECA34  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ECA38  7F C3 F3 78 */	mr r3, r30
/* 805ECA3C  38 A0 00 07 */	li r5, 7
/* 805ECA40  88 DF 00 00 */	lbz r6, 0(r31)
/* 805ECA44  39 20 00 FF */	li r9, 0xff
/* 805ECA48  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805ECA4C  88 FF 00 01 */	lbz r7, 1(r31)
/* 805ECA50  89 1F 00 02 */	lbz r8, 2(r31)
/* 805ECA54  39 40 00 00 */	li r10, 0
/* 805ECA58  EF BD 00 28 */	fsubs f29, f29, f0
/* 805ECA5C  FC 20 E8 90 */	fmr f1, f29
/* 805ECA60  4B DC 36 49 */	bl mFont_SetLineStrings
/* 805ECA64  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805ECA68  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805ECA6C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805ECA70  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805ECA74  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 805ECA78  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 805ECA7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805ECA80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805ECA84  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805ECA88  7C 08 03 A6 */	mtlr r0
/* 805ECA8C  38 21 00 60 */	addi r1, r1, 0x60
/* 805ECA90  4E 80 00 20 */	blr 
