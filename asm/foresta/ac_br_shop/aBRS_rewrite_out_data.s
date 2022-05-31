lbl_805A89A8:
/* 805A89A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A89AC  7C 08 02 A6 */	mflr r0
/* 805A89B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A89B4  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805A89B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A89BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A89C0  28 00 00 00 */	cmplwi r0, 0
/* 805A89C4  3C E4 00 03 */	addis r7, r4, 3
/* 805A89C8  40 82 00 80 */	bne lbl_805A8A48
/* 805A89CC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805A89D0  3C 80 80 65 */	lis r4, lit_470@ha /* 0x8064A548@ha */
/* 805A89D4  C0 44 A5 48 */	lfs f2, lit_470@l(r4)  /* 0x8064A548@l */
/* 805A89D8  38 C0 00 00 */	li r6, 0
/* 805A89DC  90 07 85 44 */	stw r0, -0x7abc(r7)
/* 805A89E0  38 A0 00 03 */	li r5, 3
/* 805A89E4  38 80 58 26 */	li r4, 0x5826
/* 805A89E8  38 00 00 01 */	li r0, 1
/* 805A89EC  98 C7 85 48 */	stb r6, -0x7ab8(r7)
/* 805A89F0  98 C7 85 49 */	stb r6, -0x7ab7(r7)
/* 805A89F4  B0 A7 85 4A */	sth r5, -0x7ab6(r7)
/* 805A89F8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805A89FC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805A8A00  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 805A8A04  FC 00 00 1E */	fctiwz f0, f0
/* 805A8A08  EC 42 08 2A */	fadds f2, f2, f1
/* 805A8A0C  38 60 21 68 */	li r3, 0x2168
/* 805A8A10  FC 20 18 1E */	fctiwz f1, f3
/* 805A8A14  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A8A18  FC 00 10 1E */	fctiwz f0, f2
/* 805A8A1C  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805A8A20  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805A8A24  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A8A28  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805A8A2C  B0 A7 85 4C */	sth r5, -0x7ab4(r7)
/* 805A8A30  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805A8A34  B0 C7 85 4E */	sth r6, -0x7ab2(r7)
/* 805A8A38  B0 A7 85 50 */	sth r5, -0x7ab0(r7)
/* 805A8A3C  B0 87 85 52 */	sth r4, -0x7aae(r7)
/* 805A8A40  98 07 85 54 */	stb r0, -0x7aac(r7)
/* 805A8A44  4B DD 30 C9 */	bl mBGMPsComp_make_ps_wipe
lbl_805A8A48:
/* 805A8A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A8A4C  7C 08 03 A6 */	mtlr r0
/* 805A8A50  38 21 00 20 */	addi r1, r1, 0x20
/* 805A8A54  4E 80 00 20 */	blr 
