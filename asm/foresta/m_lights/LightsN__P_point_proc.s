lbl_803BBDB8:
/* 803BBDB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BBDBC  7C 08 02 A6 */	mflr r0
/* 803BBDC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BBDC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BBDC8  7C 9F 23 78 */	mr r31, r4
/* 803BBDCC  A8 04 00 0A */	lha r0, 0xa(r4)
/* 803BBDD0  2C 00 00 00 */	cmpwi r0, 0
/* 803BBDD4  40 81 00 D8 */	ble lbl_803BBEAC
/* 803BBDD8  4B FF FC FD */	bl LightsN_new_diffuse
/* 803BBDDC  28 03 00 00 */	cmplwi r3, 0
/* 803BBDE0  41 82 00 CC */	beq lbl_803BBEAC
/* 803BBDE4  A8 9F 00 0A */	lha r4, 0xa(r31)
/* 803BBDE8  3C 00 43 30 */	lis r0, 0x4330
/* 803BBDEC  3C E0 80 64 */	lis r7, lit_463@ha /* 0x806425B4@ha */
/* 803BBDF0  3C A0 80 64 */	lis r5, lit_486@ha /* 0x806425C4@ha */
/* 803BBDF4  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 803BBDF8  90 01 00 08 */	stw r0, 8(r1)
/* 803BBDFC  C8 27 25 B4 */	lfd f1, lit_463@l(r7)  /* 0x806425B4@l */
/* 803BBE00  3C 80 80 64 */	lis r4, lit_487@ha /* 0x806425C8@ha */
/* 803BBE04  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803BBE08  C0 45 25 C4 */	lfs f2, lit_486@l(r5)  /* 0x806425C4@l */
/* 803BBE0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BBE10  EC 20 08 28 */	fsubs f1, f0, f1
/* 803BBE14  C0 04 25 C8 */	lfs f0, lit_487@l(r4)  /* 0x806425C8@l */
/* 803BBE18  EC 21 00 72 */	fmuls f1, f1, f1
/* 803BBE1C  EC 22 08 24 */	fdivs f1, f2, f1
/* 803BBE20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BBE24  40 81 00 0C */	ble lbl_803BBE30
/* 803BBE28  FC 20 00 90 */	fmr f1, f0
/* 803BBE2C  48 00 00 18 */	b lbl_803BBE44
lbl_803BBE30:
/* 803BBE30  3C 80 80 64 */	lis r4, lit_488@ha /* 0x806425CC@ha */
/* 803BBE34  C0 04 25 CC */	lfs f0, lit_488@l(r4)  /* 0x806425CC@l */
/* 803BBE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BBE3C  40 80 00 08 */	bge lbl_803BBE44
/* 803BBE40  FC 20 00 90 */	fmr f1, f0
lbl_803BBE44:
/* 803BBE44  88 1F 00 06 */	lbz r0, 6(r31)
/* 803BBE48  FC 00 08 1E */	fctiwz f0, f1
/* 803BBE4C  38 A0 00 08 */	li r5, 8
/* 803BBE50  38 80 00 FF */	li r4, 0xff
/* 803BBE54  98 03 00 00 */	stb r0, 0(r3)
/* 803BBE58  88 03 00 00 */	lbz r0, 0(r3)
/* 803BBE5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803BBE60  98 03 00 04 */	stb r0, 4(r3)
/* 803BBE64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803BBE68  88 DF 00 07 */	lbz r6, 7(r31)
/* 803BBE6C  98 C3 00 01 */	stb r6, 1(r3)
/* 803BBE70  88 C3 00 01 */	lbz r6, 1(r3)
/* 803BBE74  98 C3 00 05 */	stb r6, 5(r3)
/* 803BBE78  88 DF 00 08 */	lbz r6, 8(r31)
/* 803BBE7C  98 C3 00 02 */	stb r6, 2(r3)
/* 803BBE80  88 C3 00 02 */	lbz r6, 2(r3)
/* 803BBE84  98 C3 00 06 */	stb r6, 6(r3)
/* 803BBE88  A8 DF 00 00 */	lha r6, 0(r31)
/* 803BBE8C  B0 C3 00 08 */	sth r6, 8(r3)
/* 803BBE90  A8 DF 00 02 */	lha r6, 2(r31)
/* 803BBE94  B0 C3 00 0A */	sth r6, 0xa(r3)
/* 803BBE98  A8 DF 00 04 */	lha r6, 4(r31)
/* 803BBE9C  B0 C3 00 0C */	sth r6, 0xc(r3)
/* 803BBEA0  98 A3 00 03 */	stb r5, 3(r3)
/* 803BBEA4  98 83 00 07 */	stb r4, 7(r3)
/* 803BBEA8  98 03 00 0E */	stb r0, 0xe(r3)
lbl_803BBEAC:
/* 803BBEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BBEB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BBEB4  7C 08 03 A6 */	mtlr r0
/* 803BBEB8  38 21 00 20 */	addi r1, r1, 0x20
/* 803BBEBC  4E 80 00 20 */	blr 
