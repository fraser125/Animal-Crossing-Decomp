lbl_805BDA70:
/* 805BDA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BDA74  2C 05 00 01 */	cmpwi r5, 1
/* 805BDA78  80 E3 00 00 */	lwz r7, 0(r3)
/* 805BDA7C  40 82 00 58 */	bne lbl_805BDAD4
/* 805BDA80  3C 60 80 65 */	lis r3, lit_687@ha /* 0x8064AB88@ha */
/* 805BDA84  C0 08 02 C8 */	lfs f0, 0x2c8(r8)
/* 805BDA88  C0 23 AB 88 */	lfs f1, lit_687@l(r3)  /* 0x8064AB88@l */
/* 805BDA8C  3C 80 80 65 */	lis r4, lit_686@ha /* 0x8064AB84@ha */
/* 805BDA90  38 64 AB 84 */	addi r3, r4, lit_686@l /* 0x8064AB84@l */
/* 805BDA94  80 A7 02 D0 */	lwz r5, 0x2d0(r7)
/* 805BDA98  EC 01 00 32 */	fmuls f0, f1, f0
/* 805BDA9C  C0 43 00 00 */	lfs f2, 0(r3)
/* 805BDAA0  7C A4 2B 78 */	mr r4, r5
/* 805BDAA4  38 00 DC 00 */	li r0, -9216
/* 805BDAA8  38 A5 00 08 */	addi r5, r5, 8
/* 805BDAAC  EC 02 00 2A */	fadds f0, f2, f0
/* 805BDAB0  FC 00 00 1E */	fctiwz f0, f0
/* 805BDAB4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BDAB8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805BDABC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805BDAC0  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805BDAC4  90 64 00 00 */	stw r3, 0(r4)
/* 805BDAC8  90 04 00 04 */	stw r0, 4(r4)
/* 805BDACC  90 A7 02 D0 */	stw r5, 0x2d0(r7)
/* 805BDAD0  48 00 00 14 */	b lbl_805BDAE4
lbl_805BDAD4:
/* 805BDAD4  2C 05 00 07 */	cmpwi r5, 7
/* 805BDAD8  40 82 00 0C */	bne lbl_805BDAE4
/* 805BDADC  38 00 00 00 */	li r0, 0
/* 805BDAE0  90 06 00 00 */	stw r0, 0(r6)
lbl_805BDAE4:
/* 805BDAE4  38 60 00 01 */	li r3, 1
/* 805BDAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BDAEC  4E 80 00 20 */	blr 
