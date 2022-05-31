lbl_8053D890:
/* 8053D890  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053D894  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 8053D898  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053D89C  4C 41 13 82 */	cror 2, 1, 2
/* 8053D8A0  40 82 00 0C */	bne lbl_8053D8AC
/* 8053D8A4  FC 00 08 90 */	fmr f0, f1
/* 8053D8A8  48 00 00 08 */	b lbl_8053D8B0
lbl_8053D8AC:
/* 8053D8AC  FC 00 08 50 */	fneg f0, f1
lbl_8053D8B0:
/* 8053D8B0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8053D8B4  4C 41 13 82 */	cror 2, 1, 2
/* 8053D8B8  4C 82 00 20 */	bnelr 
/* 8053D8BC  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053D8C0  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 8053D8C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053D8C8  40 80 00 0C */	bge lbl_8053D8D4
/* 8053D8CC  FC 20 10 50 */	fneg f1, f2
/* 8053D8D0  4E 80 00 20 */	blr 
lbl_8053D8D4:
/* 8053D8D4  FC 20 10 90 */	fmr f1, f2
/* 8053D8D8  4E 80 00 20 */	blr 
