lbl_803817B0:
/* 803817B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803817B4  7C 08 02 A6 */	mflr r0
/* 803817B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803817BC  39 61 00 30 */	addi r11, r1, 0x30
/* 803817C0  4B D1 97 15 */	bl func_8009AED4
/* 803817C4  7C 9E 23 78 */	mr r30, r4
/* 803817C8  7C BF 2B 78 */	mr r31, r5
/* 803817CC  7C 7D 1B 78 */	mr r29, r3
/* 803817D0  38 81 00 0C */	addi r4, r1, 0xc
/* 803817D4  38 A1 00 08 */	addi r5, r1, 8
/* 803817D8  48 00 03 69 */	bl Camera2_main_Simple_AngleDistStd
/* 803817DC  3C 60 80 64 */	lis r3, lit_1556@ha /* 0x8064152C@ha */
/* 803817E0  3C 80 80 64 */	lis r4, lit_1557@ha /* 0x80641530@ha */
/* 803817E4  38 C3 15 2C */	addi r6, r3, lit_1556@l /* 0x8064152C@l */
/* 803817E8  3C 60 80 64 */	lis r3, lit_1269@ha /* 0x806414F4@ha */
/* 803817EC  38 A4 15 30 */	addi r5, r4, lit_1557@l /* 0x80641530@l */
/* 803817F0  C0 26 00 00 */	lfs f1, 0(r6)
/* 803817F4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 803817F8  38 83 14 F4 */	addi r4, r3, lit_1269@l /* 0x806414F4@l */
/* 803817FC  A8 E1 00 0C */	lha r7, 0xc(r1)
/* 80381800  7F A3 EB 78 */	mr r3, r29
/* 80381804  EC 81 00 2A */	fadds f4, f1, f0
/* 80381808  A8 C1 00 0E */	lha r6, 0xe(r1)
/* 8038180C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80381810  38 E7 FC 18 */	addi r7, r7, -1000
/* 80381814  38 06 07 D0 */	addi r0, r6, 0x7d0
/* 80381818  C0 45 00 00 */	lfs f2, 0(r5)
/* 8038181C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80381820  7F E8 FB 78 */	mr r8, r31
/* 80381824  C0 24 00 00 */	lfs f1, 0(r4)
/* 80381828  38 81 00 14 */	addi r4, r1, 0x14
/* 8038182C  EC 42 00 2A */	fadds f2, f2, f0
/* 80381830  C0 01 00 08 */	lfs f0, 8(r1)
/* 80381834  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 80381838  38 A1 00 0C */	addi r5, r1, 0xc
/* 8038183C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80381840  38 C0 00 14 */	li r6, 0x14
/* 80381844  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80381848  38 E0 00 01 */	li r7, 1
/* 8038184C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80381850  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80381854  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80381858  4B FF FE A9 */	bl Camera2_request_main_simple2
/* 8038185C  39 61 00 30 */	addi r11, r1, 0x30
/* 80381860  4B D1 96 C1 */	bl func_8009AF20
/* 80381864  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80381868  7C 08 03 A6 */	mtlr r0
/* 8038186C  38 21 00 30 */	addi r1, r1, 0x30
/* 80381870  4E 80 00 20 */	blr 
