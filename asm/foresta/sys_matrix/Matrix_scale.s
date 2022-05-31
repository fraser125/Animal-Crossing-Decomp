lbl_8040C3EC:
/* 8040C3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040C3F0  7C 08 02 A6 */	mflr r0
/* 8040C3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040C3F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8040C3FC  3C 60 81 1C */	lis r3, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C400  38 63 77 A4 */	addi r3, r3, Matrix_now@l /* 0x811C77A4@l */
/* 8040C404  28 00 00 01 */	cmplwi r0, 1
/* 8040C408  80 63 00 00 */	lwz r3, 0(r3)
/* 8040C40C  40 82 00 98 */	bne lbl_8040C4A4
/* 8040C410  C0 03 00 00 */	lfs f0, 0(r3)
/* 8040C414  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040C418  D0 03 00 00 */	stfs f0, 0(r3)
/* 8040C41C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8040C420  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040C424  D0 03 00 04 */	stfs f0, 4(r3)
/* 8040C428  C0 03 00 08 */	lfs f0, 8(r3)
/* 8040C42C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040C430  D0 03 00 08 */	stfs f0, 8(r3)
/* 8040C434  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8040C438  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040C43C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8040C440  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8040C444  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040C448  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8040C44C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8040C450  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040C454  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8040C458  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8040C45C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8040C460  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8040C464  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8040C468  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8040C46C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8040C470  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8040C474  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8040C478  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8040C47C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8040C480  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040C484  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8040C488  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8040C48C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040C490  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8040C494  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8040C498  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8040C49C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8040C4A0  48 00 00 08 */	b lbl_8040C4A8
lbl_8040C4A4:
/* 8040C4A4  4B FE 53 C5 */	bl Skin_Matrix_SetScale
lbl_8040C4A8:
/* 8040C4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040C4AC  7C 08 03 A6 */	mtlr r0
/* 8040C4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8040C4B4  4E 80 00 20 */	blr 
