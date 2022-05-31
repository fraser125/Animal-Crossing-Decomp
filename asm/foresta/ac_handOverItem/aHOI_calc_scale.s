lbl_80426DDC:
/* 80426DDC  88 A3 01 E5 */	lbz r5, 0x1e5(r3)
/* 80426DE0  3C 80 80 68 */	lis r4, table_569@ha /* 0x80683B80@ha */
/* 80426DE4  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 80426DE8  38 84 3B 80 */	addi r4, r4, table_569@l /* 0x80683B80@l */
/* 80426DEC  54 A5 10 3A */	slwi r5, r5, 2
/* 80426DF0  C0 63 01 D0 */	lfs f3, 0x1d0(r3)
/* 80426DF4  7C 84 28 2E */	lwzx r4, r4, r5
/* 80426DF8  54 00 18 38 */	slwi r0, r0, 3
/* 80426DFC  7C 84 02 14 */	add r4, r4, r0
/* 80426E00  80 A4 00 00 */	lwz r5, 0(r4)
/* 80426E04  80 E4 00 04 */	lwz r7, 4(r4)
/* 80426E08  7C A6 2B 78 */	mr r6, r5
/* 80426E0C  54 A4 18 38 */	slwi r4, r5, 3
/* 80426E10  7C A9 03 A6 */	mtctr r5
/* 80426E14  2C 05 00 00 */	cmpwi r5, 0
/* 80426E18  41 82 00 1C */	beq lbl_80426E34
lbl_80426E1C:
/* 80426E1C  7C 07 24 2E */	lfsx f0, r7, r4
/* 80426E20  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80426E24  41 81 00 10 */	bgt lbl_80426E34
/* 80426E28  38 C6 FF FF */	addi r6, r6, -1
/* 80426E2C  38 84 FF F8 */	addi r4, r4, -8
/* 80426E30  42 00 FF EC */	bdnz lbl_80426E1C
lbl_80426E34:
/* 80426E34  7C 06 28 00 */	cmpw r6, r5
/* 80426E38  41 80 00 10 */	blt lbl_80426E48
/* 80426E3C  54 A0 18 38 */	slwi r0, r5, 3
/* 80426E40  38 C5 FF FF */	addi r6, r5, -1
/* 80426E44  7C 67 04 2E */	lfsx f3, r7, r0
lbl_80426E48:
/* 80426E48  54 C0 18 38 */	slwi r0, r6, 3
/* 80426E4C  7C 87 02 14 */	add r4, r7, r0
/* 80426E50  7C 47 04 2E */	lfsx f2, r7, r0
/* 80426E54  C0 84 00 04 */	lfs f4, 4(r4)
/* 80426E58  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80426E5C  EC 63 10 28 */	fsubs f3, f3, f2
/* 80426E60  C0 04 00 08 */	lfs f0, 8(r4)
/* 80426E64  EC 21 20 28 */	fsubs f1, f1, f4
/* 80426E68  EC 00 10 28 */	fsubs f0, f0, f2
/* 80426E6C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80426E70  EC 01 00 24 */	fdivs f0, f1, f0
/* 80426E74  EC 04 00 2A */	fadds f0, f4, f0
/* 80426E78  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 80426E7C  4E 80 00 20 */	blr 
