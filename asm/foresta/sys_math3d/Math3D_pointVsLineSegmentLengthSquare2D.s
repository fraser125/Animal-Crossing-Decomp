lbl_80409DD8:
/* 80409DD8  EC E5 18 28 */	fsubs f7, f5, f3
/* 80409DDC  3C 80 80 64 */	lis r4, data_806436E4@ha /* 0x806436E4@ha */
/* 80409DE0  ED 06 20 28 */	fsubs f8, f6, f4
/* 80409DE4  C0 04 36 E4 */	lfs f0, data_806436E4@l(r4)  /* 0x806436E4@l */
/* 80409DE8  38 00 00 00 */	li r0, 0
/* 80409DEC  EC C7 01 F2 */	fmuls f6, f7, f7
/* 80409DF0  EC A8 02 32 */	fmuls f5, f8, f8
/* 80409DF4  ED 26 28 2A */	fadds f9, f6, f5
/* 80409DF8  FC A0 4A 10 */	fabs f5, f9
/* 80409DFC  FC A0 28 18 */	frsp f5, f5
/* 80409E00  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80409E04  40 80 00 18 */	bge lbl_80409E1C
/* 80409E08  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 80409E0C  C0 04 36 E8 */	lfs f0, lit_275@l(r4)  /* 0x806436E8@l */
/* 80409E10  D0 03 00 00 */	stfs f0, 0(r3)
/* 80409E14  38 60 00 00 */	li r3, 0
/* 80409E18  4E 80 00 20 */	blr 
lbl_80409E1C:
/* 80409E1C  EC C1 18 28 */	fsubs f6, f1, f3
/* 80409E20  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 80409E24  EC A2 20 28 */	fsubs f5, f2, f4
/* 80409E28  C0 04 36 E8 */	lfs f0, lit_275@l(r4)  /* 0x806436E8@l */
/* 80409E2C  EC C7 01 B2 */	fmuls f6, f7, f6
/* 80409E30  EC A8 01 72 */	fmuls f5, f8, f5
/* 80409E34  EC A6 28 2A */	fadds f5, f6, f5
/* 80409E38  EC C5 48 24 */	fdivs f6, f5, f9
/* 80409E3C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80409E40  4C 41 13 82 */	cror 2, 1, 2
/* 80409E44  40 82 00 1C */	bne lbl_80409E60
/* 80409E48  3C 80 80 64 */	lis r4, lit_276@ha /* 0x806436EC@ha */
/* 80409E4C  C0 04 36 EC */	lfs f0, lit_276@l(r4)  /* 0x806436EC@l */
/* 80409E50  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80409E54  4C 40 13 82 */	cror 2, 0, 2
/* 80409E58  40 82 00 08 */	bne lbl_80409E60
/* 80409E5C  38 00 00 01 */	li r0, 1
lbl_80409E60:
/* 80409E60  EC A7 01 B2 */	fmuls f5, f7, f6
/* 80409E64  3C 80 81 1C */	lis r4, h_1190@ha /* 0x811C76BC@ha */
/* 80409E68  EC 08 01 B2 */	fmuls f0, f8, f6
/* 80409E6C  EC 63 28 2A */	fadds f3, f3, f5
/* 80409E70  EC 04 00 2A */	fadds f0, f4, f0
/* 80409E74  EC 23 08 28 */	fsubs f1, f3, f1
/* 80409E78  D4 64 76 BC */	stfsu f3, h_1190@l(r4)  /* 0x811C76BC@l */
/* 80409E7C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80409E80  D0 04 00 04 */	stfs f0, 4(r4)
/* 80409E84  EC 21 00 72 */	fmuls f1, f1, f1
/* 80409E88  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80409E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80409E90  D0 03 00 00 */	stfs f0, 0(r3)
/* 80409E94  7C 03 03 78 */	mr r3, r0
/* 80409E98  4E 80 00 20 */	blr 
