lbl_805B7C68:
/* 805B7C68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B7C6C  7C 08 02 A6 */	mflr r0
/* 805B7C70  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B7C74  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B7C78  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805B7C7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B7C80  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B7C84  28 00 00 00 */	cmplwi r0, 0
/* 805B7C88  3F E4 00 03 */	addis r31, r4, 3
/* 805B7C8C  40 82 00 C0 */	bne lbl_805B7D4C
/* 805B7C90  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805B7C94  3C 80 80 65 */	lis r4, lit_478@ha /* 0x8064AA3C@ha */
/* 805B7C98  38 A4 AA 3C */	addi r5, r4, lit_478@l /* 0x8064AA3C@l */
/* 805B7C9C  38 C0 00 07 */	li r6, 7
/* 805B7CA0  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805B7CA4  3C 80 80 65 */	lis r4, lit_440@ha /* 0x8064AA38@ha */
/* 805B7CA8  38 00 00 00 */	li r0, 0
/* 805B7CAC  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B7CB0  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805B7CB4  38 C0 00 02 */	li r6, 2
/* 805B7CB8  C0 24 AA 38 */	lfs f1, lit_440@l(r4)  /* 0x8064AA38@l */
/* 805B7CBC  98 1F 85 49 */	stb r0, -0x7ab7(r31)
/* 805B7CC0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805B7CC4  B0 DF 85 4A */	sth r6, -0x7ab6(r31)
/* 805B7CC8  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 805B7CCC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805B7CD0  38 61 00 08 */	addi r3, r1, 8
/* 805B7CD4  EC 42 18 28 */	fsubs f2, f2, f3
/* 805B7CD8  EC 03 00 2A */	fadds f0, f3, f0
/* 805B7CDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B7CE0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805B7CE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B7CE8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B7CEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B7CF0  90 81 00 08 */	stw r4, 8(r1)
/* 805B7CF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B7CF8  4B DD 7C A1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805B7CFC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805B7D00  FC 40 08 18 */	frsp f2, f1
/* 805B7D04  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B7D08  38 60 58 08 */	li r3, 0x5808
/* 805B7D0C  FC 60 18 1E */	fctiwz f3, f3
/* 805B7D10  38 00 00 01 */	li r0, 1
/* 805B7D14  FC 40 10 1E */	fctiwz f2, f2
/* 805B7D18  FC 00 00 1E */	fctiwz f0, f0
/* 805B7D1C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B7D20  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B7D24  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805B7D28  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805B7D2C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B7D30  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 805B7D34  B0 9F 85 4C */	sth r4, -0x7ab4(r31)
/* 805B7D38  80 81 00 34 */	lwz r4, 0x34(r1)
/* 805B7D3C  B0 BF 85 4E */	sth r5, -0x7ab2(r31)
/* 805B7D40  B0 9F 85 50 */	sth r4, -0x7ab0(r31)
/* 805B7D44  B0 7F 85 52 */	sth r3, -0x7aae(r31)
/* 805B7D48  98 1F 85 54 */	stb r0, -0x7aac(r31)
lbl_805B7D4C:
/* 805B7D4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B7D50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805B7D54  7C 08 03 A6 */	mtlr r0
/* 805B7D58  38 21 00 40 */	addi r1, r1, 0x40
/* 805B7D5C  4E 80 00 20 */	blr 
