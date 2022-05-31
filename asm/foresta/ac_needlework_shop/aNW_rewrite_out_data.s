lbl_805B6744:
/* 805B6744  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B6748  7C 08 02 A6 */	mflr r0
/* 805B674C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B6750  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B6754  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805B6758  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B675C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B6760  28 00 00 00 */	cmplwi r0, 0
/* 805B6764  3F E4 00 03 */	addis r31, r4, 3
/* 805B6768  40 82 00 C0 */	bne lbl_805B6828
/* 805B676C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805B6770  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064A9D0@ha */
/* 805B6774  38 A4 A9 D0 */	addi r5, r4, lit_481@l /* 0x8064A9D0@l */
/* 805B6778  38 C0 00 07 */	li r6, 7
/* 805B677C  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805B6780  3C 80 80 65 */	lis r4, lit_442@ha /* 0x8064A9C8@ha */
/* 805B6784  38 00 00 00 */	li r0, 0
/* 805B6788  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B678C  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805B6790  38 C0 00 02 */	li r6, 2
/* 805B6794  C0 24 A9 C8 */	lfs f1, lit_442@l(r4)  /* 0x8064A9C8@l */
/* 805B6798  98 1F 85 49 */	stb r0, -0x7ab7(r31)
/* 805B679C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805B67A0  B0 DF 85 4A */	sth r6, -0x7ab6(r31)
/* 805B67A4  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 805B67A8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805B67AC  38 61 00 08 */	addi r3, r1, 8
/* 805B67B0  EC 42 18 28 */	fsubs f2, f2, f3
/* 805B67B4  EC 03 00 2A */	fadds f0, f3, f0
/* 805B67B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B67BC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805B67C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B67C4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B67C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B67CC  90 81 00 08 */	stw r4, 8(r1)
/* 805B67D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B67D4  4B DD 91 C5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805B67D8  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805B67DC  FC 40 08 18 */	frsp f2, f1
/* 805B67E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B67E4  38 60 58 4D */	li r3, 0x584d
/* 805B67E8  FC 60 18 1E */	fctiwz f3, f3
/* 805B67EC  38 00 00 01 */	li r0, 1
/* 805B67F0  FC 40 10 1E */	fctiwz f2, f2
/* 805B67F4  FC 00 00 1E */	fctiwz f0, f0
/* 805B67F8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B67FC  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B6800  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805B6804  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805B6808  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B680C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 805B6810  B0 9F 85 4C */	sth r4, -0x7ab4(r31)
/* 805B6814  80 81 00 34 */	lwz r4, 0x34(r1)
/* 805B6818  B0 BF 85 4E */	sth r5, -0x7ab2(r31)
/* 805B681C  B0 9F 85 50 */	sth r4, -0x7ab0(r31)
/* 805B6820  B0 7F 85 52 */	sth r3, -0x7aae(r31)
/* 805B6824  98 1F 85 54 */	stb r0, -0x7aac(r31)
lbl_805B6828:
/* 805B6828  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B682C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805B6830  7C 08 03 A6 */	mtlr r0
/* 805B6834  38 21 00 40 */	addi r1, r1, 0x40
/* 805B6838  4E 80 00 20 */	blr 
