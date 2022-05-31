lbl_805FEE54:
/* 805FEE54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805FEE58  7C 08 02 A6 */	mflr r0
/* 805FEE5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805FEE60  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805FEE64  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805FEE68  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805FEE6C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805FEE70  39 61 00 20 */	addi r11, r1, 0x20
/* 805FEE74  4B A9 C0 61 */	bl func_8009AED4
/* 805FEE78  7C BF 2B 78 */	mr r31, r5
/* 805FEE7C  80 A4 02 D0 */	lwz r5, 0x2d0(r4)
/* 805FEE80  3C 00 DE 00 */	lis r0, 0xde00
/* 805FEE84  7C 9E 23 78 */	mr r30, r4
/* 805FEE88  3C 80 80 AA */	lis r4, inv_item_shadow_mode@ha /* 0x80AA5938@ha */
/* 805FEE8C  90 05 00 00 */	stw r0, 0(r5)
/* 805FEE90  38 04 59 38 */	addi r0, r4, inv_item_shadow_mode@l /* 0x80AA5938@l */
/* 805FEE94  7C 7D 1B 78 */	mr r29, r3
/* 805FEE98  90 05 00 04 */	stw r0, 4(r5)
/* 805FEE9C  38 A5 00 08 */	addi r5, r5, 8
/* 805FEEA0  3C 60 80 65 */	lis r3, lit_5468@ha /* 0x8064B910@ha */
/* 805FEEA4  FF C0 08 90 */	fmr f30, f1
/* 805FEEA8  90 BE 02 D0 */	stw r5, 0x2d0(r30)
/* 805FEEAC  38 83 B9 10 */	addi r4, r3, lit_5468@l /* 0x8064B910@l */
/* 805FEEB0  C0 04 00 00 */	lfs f0, 0(r4)
/* 805FEEB4  FF E0 10 90 */	fmr f31, f2
/* 805FEEB8  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805FEEBC  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FEEC0  EC 20 F0 2A */	fadds f1, f0, f30
/* 805FEEC4  81 85 09 60 */	lwz r12, 0x960(r5)
/* 805FEEC8  38 C3 B8 38 */	addi r6, r3, lit_630@l /* 0x8064B838@l */
/* 805FEECC  EC 5F 00 28 */	fsubs f2, f31, f0
/* 805FEED0  C0 66 00 00 */	lfs f3, 0(r6)
/* 805FEED4  7F C3 F3 78 */	mr r3, r30
/* 805FEED8  7F E4 FB 78 */	mr r4, r31
/* 805FEEDC  38 A0 00 01 */	li r5, 1
/* 805FEEE0  38 C0 00 01 */	li r6, 1
/* 805FEEE4  38 E0 00 00 */	li r7, 0
/* 805FEEE8  7D 89 03 A6 */	mtctr r12
/* 805FEEEC  4E 80 04 21 */	bctrl 
/* 805FEEF0  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805FEEF4  3C 80 80 AA */	lis r4, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805FEEF8  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FEEFC  3C A0 DE 00 */	lis r5, 0xDE00 /* 0xDE000000@ha */
/* 805FEF00  7C C7 33 78 */	mr r7, r6
/* 805FEF04  38 04 59 10 */	addi r0, r4, inv_item_mode@l /* 0x80AA5910@l */
/* 805FEF08  90 A6 00 00 */	stw r5, 0(r6)
/* 805FEF0C  38 A3 B8 38 */	addi r5, r3, lit_630@l /* 0x8064B838@l */
/* 805FEF10  38 C6 00 08 */	addi r6, r6, 8
/* 805FEF14  FC 20 F0 90 */	fmr f1, f30
/* 805FEF18  90 07 00 04 */	stw r0, 4(r7)
/* 805FEF1C  FC 40 F8 90 */	fmr f2, f31
/* 805FEF20  7F C3 F3 78 */	mr r3, r30
/* 805FEF24  7F E4 FB 78 */	mr r4, r31
/* 805FEF28  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805FEF2C  C0 65 00 00 */	lfs f3, 0x0000(r5)  /* 0xDE000000@l */
/* 805FEF30  38 A0 00 01 */	li r5, 1
/* 805FEF34  81 1D 00 2C */	lwz r8, 0x2c(r29)
/* 805FEF38  38 C0 00 00 */	li r6, 0
/* 805FEF3C  38 E0 00 00 */	li r7, 0
/* 805FEF40  81 88 09 60 */	lwz r12, 0x960(r8)
/* 805FEF44  7D 89 03 A6 */	mtctr r12
/* 805FEF48  4E 80 04 21 */	bctrl 
/* 805FEF4C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805FEF50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805FEF54  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805FEF58  39 61 00 20 */	addi r11, r1, 0x20
/* 805FEF5C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805FEF60  4B A9 BF C1 */	bl func_8009AF20
/* 805FEF64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805FEF68  7C 08 03 A6 */	mtlr r0
/* 805FEF6C  38 21 00 40 */	addi r1, r1, 0x40
/* 805FEF70  4E 80 00 20 */	blr 
