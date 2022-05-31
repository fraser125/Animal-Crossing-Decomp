lbl_8038CAAC:
/* 8038CAAC  C0 63 00 00 */	lfs f3, 0(r3)
/* 8038CAB0  3C A0 80 64 */	lis r5, data_806419A4@ha /* 0x806419A4@ha */
/* 8038CAB4  C0 44 00 00 */	lfs f2, 0(r4)
/* 8038CAB8  C0 05 19 A4 */	lfs f0, data_806419A4@l(r5)  /* 0x806419A4@l */
/* 8038CABC  EC 83 10 28 */	fsubs f4, f3, f2
/* 8038CAC0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8038CAC4  4C 41 13 82 */	cror 2, 1, 2
/* 8038CAC8  40 82 00 08 */	bne lbl_8038CAD0
/* 8038CACC  48 00 00 08 */	b lbl_8038CAD4
lbl_8038CAD0:
/* 8038CAD0  FC 80 20 50 */	fneg f4, f4
lbl_8038CAD4:
/* 8038CAD4  C0 63 00 04 */	lfs f3, 4(r3)
/* 8038CAD8  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038CADC  C0 44 00 04 */	lfs f2, 4(r4)
/* 8038CAE0  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038CAE4  EC 43 10 28 */	fsubs f2, f3, f2
/* 8038CAE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8038CAEC  4C 41 13 82 */	cror 2, 1, 2
/* 8038CAF0  40 82 00 08 */	bne lbl_8038CAF8
/* 8038CAF4  48 00 00 08 */	b lbl_8038CAFC
lbl_8038CAF8:
/* 8038CAF8  FC 40 10 50 */	fneg f2, f2
lbl_8038CAFC:
/* 8038CAFC  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 8038CB00  40 80 00 14 */	bge lbl_8038CB14
/* 8038CB04  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8038CB08  40 80 00 0C */	bge lbl_8038CB14
/* 8038CB0C  38 60 00 01 */	li r3, 1
/* 8038CB10  4E 80 00 20 */	blr 
lbl_8038CB14:
/* 8038CB14  38 60 00 00 */	li r3, 0
/* 8038CB18  4E 80 00 20 */	blr 
