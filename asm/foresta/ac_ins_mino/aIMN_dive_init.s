lbl_8059EDE8:
/* 8059EDE8  3C 80 80 65 */	lis r4, lit_667@ha /* 0x8064A1E0@ha */
/* 8059EDEC  3C A0 80 65 */	lis r5, lit_668@ha /* 0x8064A1E4@ha */
/* 8059EDF0  38 C4 A1 E0 */	addi r6, r4, lit_667@l /* 0x8064A1E0@l */
/* 8059EDF4  C0 25 A1 E4 */	lfs f1, lit_668@l(r5)  /* 0x8064A1E4@l */
/* 8059EDF8  C0 06 00 00 */	lfs f0, 0(r6)
/* 8059EDFC  3C 80 80 65 */	lis r4, lit_579@ha /* 0x8064A1B4@ha */
/* 8059EE00  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 8059EE04  C0 04 A1 B4 */	lfs f0, lit_579@l(r4)  /* 0x8064A1B4@l */
/* 8059EE08  D0 23 01 E8 */	stfs f1, 0x1e8(r3)
/* 8059EE0C  C0 23 01 EC */	lfs f1, 0x1ec(r3)
/* 8059EE10  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 8059EE14  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 8059EE18  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 8059EE1C  2C 00 00 24 */	cmpwi r0, 0x24
/* 8059EE20  41 82 00 3C */	beq lbl_8059EE5C
/* 8059EE24  40 80 00 10 */	bge lbl_8059EE34
/* 8059EE28  2C 00 00 23 */	cmpwi r0, 0x23
/* 8059EE2C  40 80 00 14 */	bge lbl_8059EE40
/* 8059EE30  48 00 00 2C */	b lbl_8059EE5C
lbl_8059EE34:
/* 8059EE34  2C 00 00 26 */	cmpwi r0, 0x26
/* 8059EE38  40 80 00 24 */	bge lbl_8059EE5C
/* 8059EE3C  48 00 00 14 */	b lbl_8059EE50
lbl_8059EE40:
/* 8059EE40  3C 80 80 65 */	lis r4, lit_581@ha /* 0x8064A1BC@ha */
/* 8059EE44  C0 04 A1 BC */	lfs f0, lit_581@l(r4)  /* 0x8064A1BC@l */
/* 8059EE48  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 8059EE4C  48 00 00 10 */	b lbl_8059EE5C
lbl_8059EE50:
/* 8059EE50  3C 80 80 65 */	lis r4, lit_576@ha /* 0x8064A1A8@ha */
/* 8059EE54  C0 04 A1 A8 */	lfs f0, lit_576@l(r4)  /* 0x8064A1A8@l */
/* 8059EE58  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
lbl_8059EE5C:
/* 8059EE5C  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 8059EE60  38 80 00 01 */	li r4, 1
/* 8059EE64  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8059EE68  98 03 02 1E */	stb r0, 0x21e(r3)
/* 8059EE6C  4E 80 00 20 */	blr 
