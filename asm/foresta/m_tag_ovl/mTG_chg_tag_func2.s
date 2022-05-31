lbl_805F21CC:
/* 805F21CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F21D0  7C 08 02 A6 */	mflr r0
/* 805F21D4  3C E0 80 65 */	lis r7, lit_523@ha /* 0x8064B824@ha */
/* 805F21D8  7C AB 2B 78 */	mr r11, r5
/* 805F21DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F21E0  3C 00 43 30 */	lis r0, 0x4330
/* 805F21E4  39 07 B8 24 */	addi r8, r7, lit_523@l /* 0x8064B824@l */
/* 805F21E8  3D 20 80 65 */	lis r9, lit_707@ha /* 0x8064B864@ha */
/* 805F21EC  80 A5 00 40 */	lwz r5, 0x40(r5)
/* 805F21F0  C8 28 00 00 */	lfd f1, 0(r8)
/* 805F21F4  3D 00 80 65 */	lis r8, lit_1118@ha /* 0x8064B8BC@ha */
/* 805F21F8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 805F21FC  90 01 00 08 */	stw r0, 8(r1)
/* 805F2200  39 48 B8 BC */	addi r10, r8, lit_1118@l /* 0x8064B8BC@l */
/* 805F2204  C0 6B 00 28 */	lfs f3, 0x28(r11)
/* 805F2208  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805F220C  3C A0 80 65 */	lis r5, lit_876@ha /* 0x8064B870@ha */
/* 805F2210  C0 4B 00 30 */	lfs f2, 0x30(r11)
/* 805F2214  38 E5 B8 70 */	addi r7, r5, lit_876@l /* 0x8064B870@l */
/* 805F2218  C8 01 00 08 */	lfd f0, 8(r1)
/* 805F221C  3C A0 80 65 */	lis r5, lit_874@ha /* 0x8064B868@ha */
/* 805F2220  EC 43 10 2A */	fadds f2, f3, f2
/* 805F2224  39 05 B8 68 */	addi r8, r5, lit_874@l /* 0x8064B868@l */
/* 805F2228  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F222C  C0 29 B8 64 */	lfs f1, lit_707@l(r9)  /* 0x8064B864@l */
/* 805F2230  7C C5 33 78 */	mr r5, r6
/* 805F2234  C0 8B 00 24 */	lfs f4, 0x24(r11)
/* 805F2238  EC 21 00 32 */	fmuls f1, f1, f0
/* 805F223C  C0 6B 00 2C */	lfs f3, 0x2c(r11)
/* 805F2240  C0 07 00 00 */	lfs f0, 0(r7)
/* 805F2244  38 C0 00 00 */	li r6, 0
/* 805F2248  EC 84 18 2A */	fadds f4, f4, f3
/* 805F224C  C0 AA 00 00 */	lfs f5, 0(r10)
/* 805F2250  EC 22 08 28 */	fsubs f1, f2, f1
/* 805F2254  C0 CB 00 0C */	lfs f6, 0xc(r11)
/* 805F2258  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 805F225C  EC 85 20 2A */	fadds f4, f5, f4
/* 805F2260  C0 6B 00 10 */	lfs f3, 0x10(r11)
/* 805F2264  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F2268  C0 28 00 00 */	lfs f1, 0(r8)
/* 805F226C  EC C6 10 2A */	fadds f6, f6, f2
/* 805F2270  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 805F2274  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F2278  80 8B 00 38 */	lwz r4, 0x38(r11)
/* 805F227C  EC 43 10 2A */	fadds f2, f3, f2
/* 805F2280  EC 26 20 2A */	fadds f1, f6, f4
/* 805F2284  EC 42 00 2A */	fadds f2, f2, f0
/* 805F2288  4B FF FE E5 */	bl mTG_chg_tag_func
/* 805F228C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F2290  7C 08 03 A6 */	mtlr r0
/* 805F2294  38 21 00 10 */	addi r1, r1, 0x10
/* 805F2298  4E 80 00 20 */	blr 
