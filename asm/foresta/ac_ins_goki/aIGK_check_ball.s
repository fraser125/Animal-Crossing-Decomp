lbl_80599C70:
/* 80599C70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80599C74  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80599C78  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80599C7C  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80599C80  3C A5 00 03 */	addis r5, r5, 3
/* 80599C84  3C 80 80 65 */	lis r4, lit_447@ha /* 0x80649F58@ha */
/* 80599C88  C0 65 88 6C */	lfs f3, -0x7794(r5)
/* 80599C8C  38 00 00 00 */	li r0, 0
/* 80599C90  C0 45 88 74 */	lfs f2, -0x778c(r5)
/* 80599C94  EC 63 00 28 */	fsubs f3, f3, f0
/* 80599C98  C0 04 9F 58 */	lfs f0, lit_447@l(r4)  /* 0x80649F58@l */
/* 80599C9C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80599CA0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80599CA4  EC 21 00 72 */	fmuls f1, f1, f1
/* 80599CA8  EC 22 08 2A */	fadds f1, f2, f1
/* 80599CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80599CB0  40 80 00 08 */	bge lbl_80599CB8
/* 80599CB4  38 00 00 01 */	li r0, 1
lbl_80599CB8:
/* 80599CB8  7C 03 03 78 */	mr r3, r0
/* 80599CBC  4E 80 00 20 */	blr 
