lbl_803A5368:
/* 803A5368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A536C  7C 08 02 A6 */	mflr r0
/* 803A5370  3C C0 80 64 */	lis r6, lit_621@ha /* 0x80641F40@ha */
/* 803A5374  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A5378  C0 46 1F 40 */	lfs f2, lit_621@l(r6)  /* 0x80641F40@l */
/* 803A537C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A5380  7C BF 2B 78 */	mr r31, r5
/* 803A5384  3C A0 80 64 */	lis r5, lit_637@ha /* 0x80641F44@ha */
/* 803A5388  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803A538C  C0 05 1F 44 */	lfs f0, lit_637@l(r5)  /* 0x80641F44@l */
/* 803A5390  EC 21 10 24 */	fdivs f1, f1, f2
/* 803A5394  FC 20 08 1E */	fctiwz f1, f1
/* 803A5398  D8 21 00 08 */	stfd f1, 8(r1)
/* 803A539C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803A53A0  90 03 00 00 */	stw r0, 0(r3)
/* 803A53A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 803A53A8  EC 21 10 24 */	fdivs f1, f1, f2
/* 803A53AC  FC 20 08 1E */	fctiwz f1, f1
/* 803A53B0  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 803A53B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A53B8  90 04 00 00 */	stw r0, 0(r4)
/* 803A53BC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803A53C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A53C4  41 80 00 98 */	blt lbl_803A545C
/* 803A53C8  4B FF F9 C9 */	bl mFI_GetBlockXMax
/* 803A53CC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803A53D0  3C 00 43 30 */	lis r0, 0x4330
/* 803A53D4  3C 60 80 64 */	lis r3, lit_641@ha /* 0x80641F4C@ha */
/* 803A53D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 803A53DC  38 83 1F 4C */	addi r4, r3, lit_641@l /* 0x80641F4C@l */
/* 803A53E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A53E4  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A53E8  C8 44 00 00 */	lfd f2, 0(r4)
/* 803A53EC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A53F0  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A53F4  EC 40 10 28 */	fsubs f2, f0, f2
/* 803A53F8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 803A53FC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803A5400  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803A5404  41 81 00 58 */	bgt lbl_803A545C
/* 803A5408  3C 60 80 64 */	lis r3, lit_637@ha /* 0x80641F44@ha */
/* 803A540C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 803A5410  C0 03 1F 44 */	lfs f0, lit_637@l(r3)  /* 0x80641F44@l */
/* 803A5414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A5418  41 80 00 44 */	blt lbl_803A545C
/* 803A541C  4B FF F9 BD */	bl mFI_GetBlockZMax
/* 803A5420  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803A5424  3C 00 43 30 */	lis r0, 0x4330
/* 803A5428  3C 60 80 64 */	lis r3, lit_641@ha /* 0x80641F4C@ha */
/* 803A542C  90 81 00 14 */	stw r4, 0x14(r1)
/* 803A5430  38 83 1F 4C */	addi r4, r3, lit_641@l /* 0x80641F4C@l */
/* 803A5434  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A5438  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A543C  C8 44 00 00 */	lfd f2, 0(r4)
/* 803A5440  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A5444  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A5448  EC 40 10 28 */	fsubs f2, f0, f2
/* 803A544C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803A5450  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803A5454  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803A5458  40 81 00 0C */	ble lbl_803A5464
lbl_803A545C:
/* 803A545C  38 60 00 00 */	li r3, 0
/* 803A5460  48 00 00 08 */	b lbl_803A5468
lbl_803A5464:
/* 803A5464  38 60 00 01 */	li r3, 1
lbl_803A5468:
/* 803A5468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A546C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A5470  7C 08 03 A6 */	mtlr r0
/* 803A5474  38 21 00 20 */	addi r1, r1, 0x20
/* 803A5478  4E 80 00 20 */	blr 
