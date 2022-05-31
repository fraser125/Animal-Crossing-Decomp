lbl_8040C300:
/* 8040C300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040C304  7C 08 02 A6 */	mflr r0
/* 8040C308  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040C30C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8040C310  3C 60 81 1C */	lis r3, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C314  38 63 77 A4 */	addi r3, r3, Matrix_now@l /* 0x811C77A4@l */
/* 8040C318  28 00 00 01 */	cmplwi r0, 1
/* 8040C31C  80 63 00 00 */	lwz r3, 0(r3)
/* 8040C320  40 82 00 B8 */	bne lbl_8040C3D8
/* 8040C324  C0 03 00 00 */	lfs f0, 0(r3)
/* 8040C328  C0 C3 00 10 */	lfs f6, 0x10(r3)
/* 8040C32C  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040C330  C0 A3 00 20 */	lfs f5, 0x20(r3)
/* 8040C334  EC 06 00 B2 */	fmuls f0, f6, f2
/* 8040C338  C0 C3 00 30 */	lfs f6, 0x30(r3)
/* 8040C33C  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8040C340  EC 04 00 2A */	fadds f0, f4, f0
/* 8040C344  EC 05 00 2A */	fadds f0, f5, f0
/* 8040C348  EC 06 00 2A */	fadds f0, f6, f0
/* 8040C34C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8040C350  C0 03 00 04 */	lfs f0, 4(r3)
/* 8040C354  C0 C3 00 14 */	lfs f6, 0x14(r3)
/* 8040C358  C0 A3 00 24 */	lfs f5, 0x24(r3)
/* 8040C35C  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040C360  EC 06 00 B2 */	fmuls f0, f6, f2
/* 8040C364  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 8040C368  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8040C36C  EC 04 00 2A */	fadds f0, f4, f0
/* 8040C370  EC 05 00 2A */	fadds f0, f5, f0
/* 8040C374  EC 06 00 2A */	fadds f0, f6, f0
/* 8040C378  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8040C37C  C0 83 00 08 */	lfs f4, 8(r3)
/* 8040C380  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8040C384  C0 A3 00 28 */	lfs f5, 0x28(r3)
/* 8040C388  EC 84 00 72 */	fmuls f4, f4, f1
/* 8040C38C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040C390  C0 C3 00 38 */	lfs f6, 0x38(r3)
/* 8040C394  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8040C398  EC 04 00 2A */	fadds f0, f4, f0
/* 8040C39C  EC 05 00 2A */	fadds f0, f5, f0
/* 8040C3A0  EC 06 00 2A */	fadds f0, f6, f0
/* 8040C3A4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8040C3A8  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 8040C3AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8040C3B0  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 8040C3B4  EC 24 00 72 */	fmuls f1, f4, f1
/* 8040C3B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040C3BC  C0 83 00 3C */	lfs f4, 0x3c(r3)
/* 8040C3C0  EC 45 00 F2 */	fmuls f2, f5, f3
/* 8040C3C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8040C3C8  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C3CC  EC 04 00 2A */	fadds f0, f4, f0
/* 8040C3D0  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8040C3D4  48 00 00 08 */	b lbl_8040C3DC
lbl_8040C3D8:
/* 8040C3D8  4B FE 56 A1 */	bl Skin_Matrix_SetTranslate
lbl_8040C3DC:
/* 8040C3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040C3E0  7C 08 03 A6 */	mtlr r0
/* 8040C3E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8040C3E8  4E 80 00 20 */	blr 
