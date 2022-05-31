lbl_8038A5D0:
/* 8038A5D0  FC 00 0A 10 */	fabs f0, f1
/* 8038A5D4  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 8038A5D8  C0 83 19 A8 */	lfs f4, lit_448@l(r3)  /* 0x806419A8@l */
/* 8038A5DC  FC 00 00 18 */	frsp f0, f0
/* 8038A5E0  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8038A5E4  40 80 00 1C */	bge lbl_8038A600
/* 8038A5E8  FC 00 1A 10 */	fabs f0, f3
/* 8038A5EC  FC 00 00 18 */	frsp f0, f0
/* 8038A5F0  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8038A5F4  40 80 00 0C */	bge lbl_8038A600
/* 8038A5F8  38 60 00 01 */	li r3, 1
/* 8038A5FC  4E 80 00 20 */	blr 
lbl_8038A600:
/* 8038A600  FC 00 0A 10 */	fabs f0, f1
/* 8038A604  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 8038A608  C0 23 19 A8 */	lfs f1, lit_448@l(r3)  /* 0x806419A8@l */
/* 8038A60C  FC 00 00 18 */	frsp f0, f0
/* 8038A610  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A614  40 80 00 1C */	bge lbl_8038A630
/* 8038A618  FC 00 12 10 */	fabs f0, f2
/* 8038A61C  FC 00 00 18 */	frsp f0, f0
/* 8038A620  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A624  40 80 00 0C */	bge lbl_8038A630
/* 8038A628  38 60 00 00 */	li r3, 0
/* 8038A62C  4E 80 00 20 */	blr 
lbl_8038A630:
/* 8038A630  FC 00 12 10 */	fabs f0, f2
/* 8038A634  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 8038A638  C0 23 19 A8 */	lfs f1, lit_448@l(r3)  /* 0x806419A8@l */
/* 8038A63C  FC 00 00 18 */	frsp f0, f0
/* 8038A640  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A644  40 80 00 1C */	bge lbl_8038A660
/* 8038A648  FC 00 1A 10 */	fabs f0, f3
/* 8038A64C  FC 00 00 18 */	frsp f0, f0
/* 8038A650  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A654  40 80 00 0C */	bge lbl_8038A660
/* 8038A658  38 60 00 02 */	li r3, 2
/* 8038A65C  4E 80 00 20 */	blr 
lbl_8038A660:
/* 8038A660  38 60 00 03 */	li r3, 3
/* 8038A664  4E 80 00 20 */	blr 
