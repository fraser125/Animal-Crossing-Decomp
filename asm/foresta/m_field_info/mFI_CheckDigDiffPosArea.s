lbl_803A93A8:
/* 803A93A8  3C A0 80 64 */	lis r5, lit_646@ha /* 0x80641F54@ha */
/* 803A93AC  C0 44 00 00 */	lfs f2, 0(r4)
/* 803A93B0  C0 25 1F 54 */	lfs f1, lit_646@l(r5)  /* 0x80641F54@l */
/* 803A93B4  38 00 00 00 */	li r0, 0
/* 803A93B8  C0 63 00 00 */	lfs f3, 0(r3)
/* 803A93BC  EC 01 10 2A */	fadds f0, f1, f2
/* 803A93C0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803A93C4  41 81 00 30 */	bgt lbl_803A93F4
/* 803A93C8  EC 02 08 28 */	fsubs f0, f2, f1
/* 803A93CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803A93D0  41 80 00 24 */	blt lbl_803A93F4
/* 803A93D4  C0 44 00 08 */	lfs f2, 8(r4)
/* 803A93D8  C0 63 00 08 */	lfs f3, 8(r3)
/* 803A93DC  EC 01 10 2A */	fadds f0, f1, f2
/* 803A93E0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803A93E4  41 81 00 10 */	bgt lbl_803A93F4
/* 803A93E8  EC 02 08 28 */	fsubs f0, f2, f1
/* 803A93EC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803A93F0  40 80 00 08 */	bge lbl_803A93F8
lbl_803A93F4:
/* 803A93F4  38 00 00 01 */	li r0, 1
lbl_803A93F8:
/* 803A93F8  7C 03 03 78 */	mr r3, r0
/* 803A93FC  4E 80 00 20 */	blr 
