lbl_803868B4:
/* 803868B4  3C 80 80 64 */	lis r4, lit_2058@ha /* 0x80641A78@ha */
/* 803868B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 803868BC  C0 44 1A 78 */	lfs f2, lit_2058@l(r4)  /* 0x80641A78@l */
/* 803868C0  EC 22 08 2A */	fadds f1, f2, f1
/* 803868C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803868C8  4C 40 13 82 */	cror 2, 0, 2
/* 803868CC  41 82 00 14 */	beq lbl_803868E0
/* 803868D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 803868D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803868D8  4C 40 13 82 */	cror 2, 0, 2
/* 803868DC  40 82 00 0C */	bne lbl_803868E8
lbl_803868E0:
/* 803868E0  38 60 00 01 */	li r3, 1
/* 803868E4  4E 80 00 20 */	blr 
lbl_803868E8:
/* 803868E8  38 60 00 00 */	li r3, 0
/* 803868EC  4E 80 00 20 */	blr 
