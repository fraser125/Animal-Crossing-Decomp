lbl_805B50D0:
/* 805B50D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B50D4  7C 08 02 A6 */	mflr r0
/* 805B50D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B50DC  39 61 00 50 */	addi r11, r1, 0x50
/* 805B50E0  4B AE 5D F5 */	bl func_8009AED4
/* 805B50E4  88 03 20 D3 */	lbz r0, 0x20d3(r3)
/* 805B50E8  7C 9E 23 78 */	mr r30, r4
/* 805B50EC  80 64 02 B4 */	lwz r3, 0x2b4(r4)
/* 805B50F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B50F4  28 00 00 00 */	cmplwi r0, 0
/* 805B50F8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B50FC  54 69 07 FE */	clrlwi r9, r3, 0x1f
/* 805B5100  3F E4 00 03 */	addis r31, r4, 3
/* 805B5104  40 82 00 F4 */	bne lbl_805B51F8
/* 805B5108  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805B510C  3C 80 80 6C */	lis r4, out_drt@ha /* 0x806C5EA0@ha */
/* 805B5110  3C C0 80 6C */	lis r6, restartX@ha /* 0x806C5EA4@ha */
/* 805B5114  3C 60 80 65 */	lis r3, lit_516@ha /* 0x8064A974@ha */
/* 805B5118  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805B511C  38 84 5E A0 */	addi r4, r4, out_drt@l /* 0x806C5EA0@l */
/* 805B5120  38 A3 A9 74 */	addi r5, r3, lit_516@l /* 0x8064A974@l */
/* 805B5124  3C 60 80 65 */	lis r3, lit_457@ha /* 0x8064A970@ha */
/* 805B5128  7C E4 48 AE */	lbzx r7, r4, r9
/* 805B512C  38 83 A9 70 */	addi r4, r3, lit_457@l /* 0x8064A970@l */
/* 805B5130  38 00 00 00 */	li r0, 0
/* 805B5134  39 00 00 02 */	li r8, 2
/* 805B5138  98 FF 85 48 */	stb r7, -0x7ab8(r31)
/* 805B513C  55 27 10 3A */	slwi r7, r9, 2
/* 805B5140  38 C6 5E A4 */	addi r6, r6, restartX@l /* 0x806C5EA4@l */
/* 805B5144  C0 45 00 00 */	lfs f2, 0(r5)
/* 805B5148  98 1F 85 49 */	stb r0, -0x7ab7(r31)
/* 805B514C  3B BF 85 4C */	addi r29, r31, -31412
/* 805B5150  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805B5154  38 61 00 08 */	addi r3, r1, 8
/* 805B5158  B1 1F 85 4A */	sth r8, -0x7ab6(r31)
/* 805B515C  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B5160  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B5164  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 805B5168  7C 66 3C 2E */	lfsx f3, r6, r7
/* 805B516C  EC 02 00 2A */	fadds f0, f2, f0
/* 805B5170  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B5174  EC 44 18 2A */	fadds f2, f4, f3
/* 805B5178  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B517C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805B5180  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B5184  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B5188  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B518C  90 81 00 08 */	stw r4, 8(r1)
/* 805B5190  4B DD A8 09 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805B5194  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805B5198  FC 40 08 18 */	frsp f2, f1
/* 805B519C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B51A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B51A4  FC 60 18 1E */	fctiwz f3, f3
/* 805B51A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B51AC  FC 40 10 1E */	fctiwz f2, f2
/* 805B51B0  FC 00 00 1E */	fctiwz f0, f0
/* 805B51B4  38 00 00 01 */	li r0, 1
/* 805B51B8  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B51BC  3C 63 00 02 */	addis r3, r3, 2
/* 805B51C0  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805B51C4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805B51C8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B51CC  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 805B51D0  B0 9D 00 00 */	sth r4, 0(r29)
/* 805B51D4  80 81 00 34 */	lwz r4, 0x34(r1)
/* 805B51D8  B0 BD 00 02 */	sth r5, 2(r29)
/* 805B51DC  B0 9D 00 04 */	sth r4, 4(r29)
/* 805B51E0  A0 9E 00 06 */	lhz r4, 6(r30)
/* 805B51E4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B51E8  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805B51EC  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805B51F0  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805B51F4  B0 03 65 1C */	sth r0, 0x651c(r3)
lbl_805B51F8:
/* 805B51F8  39 61 00 50 */	addi r11, r1, 0x50
/* 805B51FC  4B AE 5D 25 */	bl func_8009AF20
/* 805B5200  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B5204  7C 08 03 A6 */	mtlr r0
/* 805B5208  38 21 00 50 */	addi r1, r1, 0x50
/* 805B520C  4E 80 00 20 */	blr 
