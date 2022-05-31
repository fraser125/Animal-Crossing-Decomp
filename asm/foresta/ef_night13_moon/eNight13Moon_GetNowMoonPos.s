lbl_80618EB4:
/* 80618EB4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80618EB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80618EBC  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 80618EC0  3C E0 80 65 */	lis r7, lit_398@ha /* 0x8064C8CC@ha */
/* 80618EC4  3C C6 00 02 */	addis r6, r6, 2
/* 80618EC8  3C A0 80 65 */	lis r5, lit_387@ha /* 0x8064C8C0@ha */
/* 80618ECC  80 06 61 20 */	lwz r0, 0x6120(r6)
/* 80618ED0  39 27 C8 CC */	addi r9, r7, lit_398@l /* 0x8064C8CC@l */
/* 80618ED4  38 E5 C8 C0 */	addi r7, r5, lit_387@l /* 0x8064C8C0@l */
/* 80618ED8  81 06 61 24 */	lwz r8, 0x6124(r6)
/* 80618EDC  90 01 00 08 */	stw r0, 8(r1)
/* 80618EE0  80 C7 00 00 */	lwz r6, 0(r7)
/* 80618EE4  89 41 00 0A */	lbz r10, 0xa(r1)
/* 80618EE8  80 A7 00 04 */	lwz r5, 4(r7)
/* 80618EEC  80 07 00 08 */	lwz r0, 8(r7)
/* 80618EF0  28 0A 00 12 */	cmplwi r10, 0x12
/* 80618EF4  C0 09 00 00 */	lfs f0, 0(r9)
/* 80618EF8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80618EFC  91 01 00 0C */	stw r8, 0xc(r1)
/* 80618F00  EC A0 08 2A */	fadds f5, f0, f1
/* 80618F04  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80618F08  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80618F0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80618F10  41 80 00 A0 */	blt lbl_80618FB0
/* 80618F14  28 0A 00 15 */	cmplwi r10, 0x15
/* 80618F18  40 80 00 98 */	bge lbl_80618FB0
/* 80618F1C  88 01 00 09 */	lbz r0, 9(r1)
/* 80618F20  3C E0 43 30 */	lis r7, 0x4330
/* 80618F24  3C A0 80 65 */	lis r5, lit_406@ha /* 0x8064C8E4@ha */
/* 80618F28  38 CA FF EE */	addi r6, r10, -18
/* 80618F2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80618F30  6C C8 80 00 */	xoris r8, r6, 0x8000
/* 80618F34  88 01 00 08 */	lbz r0, 8(r1)
/* 80618F38  3D 20 80 65 */	lis r9, lit_404@ha /* 0x8064C8DC@ha */
/* 80618F3C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80618F40  3C C0 80 65 */	lis r6, lit_401@ha /* 0x8064C8D8@ha */
/* 80618F44  C8 45 C8 E4 */	lfd f2, lit_406@l(r5)  /* 0x8064C8E4@l */
/* 80618F48  38 A6 C8 D8 */	addi r5, r6, lit_401@l /* 0x8064C8D8@l */
/* 80618F4C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80618F50  3C C0 80 65 */	lis r6, lit_399@ha /* 0x8064C8D0@ha */
/* 80618F54  C0 25 00 00 */	lfs f1, 0(r5)
/* 80618F58  3C A0 80 65 */	lis r5, lit_400@ha /* 0x8064C8D4@ha */
/* 80618F5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80618F60  91 01 00 24 */	stw r8, 0x24(r1)
/* 80618F64  C8 89 C8 DC */	lfd f4, lit_404@l(r9)  /* 0x8064C8DC@l */
/* 80618F68  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80618F6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80618F70  C8 61 00 20 */	lfd f3, 0x20(r1)
/* 80618F74  90 01 00 34 */	stw r0, 0x34(r1)
/* 80618F78  EC 63 20 28 */	fsubs f3, f3, f4
/* 80618F7C  C0 86 C8 D0 */	lfs f4, lit_399@l(r6)  /* 0x8064C8D0@l */
/* 80618F80  90 E1 00 30 */	stw r7, 0x30(r1)
/* 80618F84  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80618F88  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80618F8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80618F90  C0 45 C8 D4 */	lfs f2, lit_400@l(r5)  /* 0x8064C8D4@l */
/* 80618F94  EC 01 00 2A */	fadds f0, f1, f0
/* 80618F98  EC 25 18 28 */	fsubs f1, f5, f3
/* 80618F9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80618FA0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80618FA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80618FA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80618FAC  48 00 00 24 */	b lbl_80618FD0
lbl_80618FB0:
/* 80618FB0  28 0A 00 12 */	cmplwi r10, 0x12
/* 80618FB4  40 80 00 0C */	bge lbl_80618FC0
/* 80618FB8  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80618FBC  48 00 00 14 */	b lbl_80618FD0
lbl_80618FC0:
/* 80618FC0  3C A0 80 65 */	lis r5, lit_398@ha /* 0x8064C8CC@ha */
/* 80618FC4  C0 05 C8 CC */	lfs f0, lit_398@l(r5)  /* 0x8064C8CC@l */
/* 80618FC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80618FCC  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80618FD0:
/* 80618FD0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80618FD4  C0 24 00 08 */	lfs f1, 8(r4)
/* 80618FD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80618FDC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80618FE0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80618FE4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80618FE8  90 03 00 00 */	stw r0, 0(r3)
/* 80618FEC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80618FF0  90 83 00 04 */	stw r4, 4(r3)
/* 80618FF4  90 03 00 08 */	stw r0, 8(r3)
/* 80618FF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80618FFC  4E 80 00 20 */	blr 
