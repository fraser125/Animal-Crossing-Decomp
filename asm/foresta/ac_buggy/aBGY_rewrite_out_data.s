lbl_805AA058:
/* 805AA058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AA05C  7C 08 02 A6 */	mflr r0
/* 805AA060  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AA064  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805AA068  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AA06C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AA070  28 00 00 00 */	cmplwi r0, 0
/* 805AA074  3C E4 00 03 */	addis r7, r4, 3
/* 805AA078  40 82 00 80 */	bne lbl_805AA0F8
/* 805AA07C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805AA080  3C 80 80 65 */	lis r4, data_8064A5E4@ha /* 0x8064A5E4@ha */
/* 805AA084  C0 44 A5 E4 */	lfs f2, data_8064A5E4@l(r4)  /* 0x8064A5E4@l */
/* 805AA088  38 C0 00 00 */	li r6, 0
/* 805AA08C  90 07 85 44 */	stw r0, -0x7abc(r7)
/* 805AA090  38 A0 00 03 */	li r5, 3
/* 805AA094  38 80 58 27 */	li r4, 0x5827
/* 805AA098  38 00 00 01 */	li r0, 1
/* 805AA09C  98 C7 85 48 */	stb r6, -0x7ab8(r7)
/* 805AA0A0  98 C7 85 49 */	stb r6, -0x7ab7(r7)
/* 805AA0A4  B0 A7 85 4A */	sth r5, -0x7ab6(r7)
/* 805AA0A8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805AA0AC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805AA0B0  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 805AA0B4  FC 00 00 1E */	fctiwz f0, f0
/* 805AA0B8  EC 42 08 2A */	fadds f2, f2, f1
/* 805AA0BC  38 60 21 68 */	li r3, 0x2168
/* 805AA0C0  FC 20 18 1E */	fctiwz f1, f3
/* 805AA0C4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AA0C8  FC 00 10 1E */	fctiwz f0, f2
/* 805AA0CC  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805AA0D0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805AA0D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805AA0D8  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805AA0DC  B0 A7 85 4C */	sth r5, -0x7ab4(r7)
/* 805AA0E0  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805AA0E4  B0 C7 85 4E */	sth r6, -0x7ab2(r7)
/* 805AA0E8  B0 A7 85 50 */	sth r5, -0x7ab0(r7)
/* 805AA0EC  B0 87 85 52 */	sth r4, -0x7aae(r7)
/* 805AA0F0  98 07 85 54 */	stb r0, -0x7aac(r7)
/* 805AA0F4  4B DD 1A 19 */	bl mBGMPsComp_make_ps_wipe
lbl_805AA0F8:
/* 805AA0F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AA0FC  7C 08 03 A6 */	mtlr r0
/* 805AA100  38 21 00 20 */	addi r1, r1, 0x20
/* 805AA104  4E 80 00 20 */	blr 
