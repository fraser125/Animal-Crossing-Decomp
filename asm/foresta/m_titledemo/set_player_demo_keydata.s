lbl_803F2024:
/* 803F2024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F2028  7C 08 02 A6 */	mflr r0
/* 803F202C  54 64 0F FE */	srwi r4, r3, 0x1f
/* 803F2030  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F2034  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 803F2038  7C 63 0E 70 */	srawi r3, r3, 1
/* 803F203C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F2040  7C 00 22 78 */	xor r0, r0, r4
/* 803F2044  7C 63 01 94 */	addze r3, r3
/* 803F2048  7C 04 00 50 */	subf r0, r4, r0
/* 803F204C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F2050  7F C3 02 14 */	add r30, r3, r0
/* 803F2054  7C 03 F0 00 */	cmpw r3, r30
/* 803F2058  41 82 00 EC */	beq lbl_803F2144
/* 803F205C  2C 1E 07 08 */	cmpwi r30, 0x708
/* 803F2060  40 80 00 E4 */	bge lbl_803F2144
/* 803F2064  4B FF FF 4D */	bl get_tdemo_keydata
/* 803F2068  7C 7F 1B 78 */	mr r31, r3
/* 803F206C  7F C3 F3 78 */	mr r3, r30
/* 803F2070  4B FF FF 41 */	bl get_tdemo_keydata
/* 803F2074  57 E0 04 2C */	rlwinm r0, r31, 0, 0x10, 0x16
/* 803F2078  3C E0 43 30 */	lis r7, 0x4330
/* 803F207C  7C 04 07 34 */	extsh r4, r0
/* 803F2080  90 E1 00 08 */	stw r7, 8(r1)
/* 803F2084  7C 85 4E 70 */	srawi r5, r4, 9
/* 803F2088  54 60 04 2C */	rlwinm r0, r3, 0, 0x10, 0x16
/* 803F208C  7C C5 01 94 */	addze r6, r5
/* 803F2090  57 E4 44 2C */	rlwinm r4, r31, 8, 0x10, 0x16
/* 803F2094  7C 00 07 34 */	extsh r0, r0
/* 803F2098  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803F209C  7C 05 4E 70 */	srawi r5, r0, 9
/* 803F20A0  7C C6 07 74 */	extsb r6, r6
/* 803F20A4  54 60 44 2C */	rlwinm r0, r3, 8, 0x10, 0x16
/* 803F20A8  7C 83 07 34 */	extsh r3, r4
/* 803F20AC  7C A5 01 94 */	addze r5, r5
/* 803F20B0  6C C8 80 00 */	xoris r8, r6, 0x8000
/* 803F20B4  7C A4 07 74 */	extsb r4, r5
/* 803F20B8  91 01 00 0C */	stw r8, 0xc(r1)
/* 803F20BC  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 803F20C0  7C 63 4E 70 */	srawi r3, r3, 9
/* 803F20C4  3C 80 80 64 */	lis r4, lit_499@ha /* 0x8064325C@ha */
/* 803F20C8  7C 00 07 34 */	extsh r0, r0
/* 803F20CC  7C 63 01 94 */	addze r3, r3
/* 803F20D0  C8 84 32 5C */	lfd f4, lit_499@l(r4)  /* 0x8064325C@l */
/* 803F20D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 803F20D8  7C 00 4E 70 */	srawi r0, r0, 9
/* 803F20DC  7C 63 07 74 */	extsb r3, r3
/* 803F20E0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803F20E4  7C 00 01 94 */	addze r0, r0
/* 803F20E8  EC 40 20 28 */	fsubs f2, f0, f4
/* 803F20EC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 803F20F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803F20F4  7C 00 07 74 */	extsb r0, r0
/* 803F20F8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803F20FC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 803F2100  EC 20 20 28 */	fsubs f1, f0, f4
/* 803F2104  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803F2108  3C 80 80 64 */	lis r4, lit_497@ha /* 0x80643258@ha */
/* 803F210C  57 E0 07 FE */	clrlwi r0, r31, 0x1f
/* 803F2110  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F2114  EC 22 08 2A */	fadds f1, f2, f1
/* 803F2118  C0 64 32 58 */	lfs f3, lit_497@l(r4)  /* 0x80643258@l */
/* 803F211C  EC 40 20 28 */	fsubs f2, f0, f4
/* 803F2120  90 61 00 24 */	stw r3, 0x24(r1)
/* 803F2124  57 E4 C7 FE */	rlwinm r4, r31, 0x18, 0x1f, 0x1f
/* 803F2128  EC 21 00 F2 */	fmuls f1, f1, f3
/* 803F212C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 803F2130  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803F2134  EC 00 20 28 */	fsubs f0, f0, f4
/* 803F2138  EC 02 00 2A */	fadds f0, f2, f0
/* 803F213C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 803F2140  48 00 00 70 */	b lbl_803F21B0
lbl_803F2144:
/* 803F2144  4B FF FE 6D */	bl get_tdemo_keydata
/* 803F2148  54 60 04 2C */	rlwinm r0, r3, 0, 0x10, 0x16
/* 803F214C  3C A0 43 30 */	lis r5, 0x4330
/* 803F2150  7C 04 07 34 */	extsh r4, r0
/* 803F2154  90 A1 00 20 */	stw r5, 0x20(r1)
/* 803F2158  7C 86 4E 70 */	srawi r6, r4, 9
/* 803F215C  54 60 44 2C */	rlwinm r0, r3, 8, 0x10, 0x16
/* 803F2160  7C C6 01 94 */	addze r6, r6
/* 803F2164  3C 80 80 64 */	lis r4, lit_499@ha /* 0x8064325C@ha */
/* 803F2168  7C 00 07 34 */	extsh r0, r0
/* 803F216C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803F2170  7C 00 4E 70 */	srawi r0, r0, 9
/* 803F2174  7C C6 07 74 */	extsb r6, r6
/* 803F2178  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 803F217C  38 E4 32 5C */	addi r7, r4, lit_499@l /* 0x8064325C@l */
/* 803F2180  7C 00 01 94 */	addze r0, r0
/* 803F2184  90 C1 00 24 */	stw r6, 0x24(r1)
/* 803F2188  7C 04 07 74 */	extsb r4, r0
/* 803F218C  C8 47 00 00 */	lfd f2, 0(r7)
/* 803F2190  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803F2194  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803F2198  90 81 00 1C */	stw r4, 0x1c(r1)
/* 803F219C  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 803F21A0  EC 20 10 28 */	fsubs f1, f0, f2
/* 803F21A4  54 64 C7 FE */	rlwinm r4, r3, 0x18, 0x1f, 0x1f
/* 803F21A8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F21AC  EC 40 10 28 */	fsubs f2, f0, f2
lbl_803F21B0:
/* 803F21B0  7C 03 03 78 */	mr r3, r0
/* 803F21B4  4B FE BC 29 */	bl mPlib_SetData1_controller_data_for_title_demo
/* 803F21B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F21BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F21C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F21C4  7C 08 03 A6 */	mtlr r0
/* 803F21C8  38 21 00 30 */	addi r1, r1, 0x30
/* 803F21CC  4E 80 00 20 */	blr 
