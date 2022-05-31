lbl_8063D3FC:
/* 8063D3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D400  7C 08 02 A6 */	mflr r0
/* 8063D404  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063D40C  7C 7F 1B 78 */	mr r31, r3
/* 8063D410  93 C1 00 08 */	stw r30, 8(r1)
/* 8063D414  3B DF 01 34 */	addi r30, r31, 0x134
/* 8063D418  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8063D41C  38 7F 08 34 */	addi r3, r31, 0x834
/* 8063D420  28 00 00 01 */	cmplwi r0, 1
/* 8063D424  40 82 00 10 */	bne lbl_8063D434
/* 8063D428  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D42C  C0 24 D2 74 */	lfs f1, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063D430  48 00 00 0C */	b lbl_8063D43C
lbl_8063D434:
/* 8063D434  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063D438  C0 24 D2 78 */	lfs f1, lit_368@l(r4)  /* 0x8064D278@l */
lbl_8063D43C:
/* 8063D43C  3C A0 80 65 */	lis r5, lit_921@ha /* 0x8064D2B8@ha */
/* 8063D440  3C 80 80 65 */	lis r4, lit_923@ha /* 0x8064D2C0@ha */
/* 8063D444  C0 45 D2 B8 */	lfs f2, lit_921@l(r5)  /* 0x8064D2B8@l */
/* 8063D448  C0 84 D2 C0 */	lfs f4, lit_923@l(r4)  /* 0x8064D2C0@l */
/* 8063D44C  FC 60 10 90 */	fmr f3, f2
/* 8063D450  4B D7 DD 61 */	bl add_calc
/* 8063D454  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063D458  3C 80 80 65 */	lis r4, lit_693@ha /* 0x8064D294@ha */
/* 8063D45C  C0 23 D2 8C */	lfs f1, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063D460  7F C3 F3 78 */	mr r3, r30
/* 8063D464  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8063D468  C0 44 D2 94 */	lfs f2, lit_693@l(r4)  /* 0x8064D294@l */
/* 8063D46C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063D470  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063D474  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8063D478  4B D3 3B 9D */	bl cKF_SkeletonInfo_R_play
/* 8063D47C  3C 80 80 65 */	lis r4, lit_6391@ha /* 0x8064D3C4@ha */
/* 8063D480  3C 60 80 65 */	lis r3, lit_6392@ha /* 0x8064D3C8@ha */
/* 8063D484  C0 5F 08 38 */	lfs f2, 0x838(r31)
/* 8063D488  C0 24 D3 C4 */	lfs f1, lit_6391@l(r4)  /* 0x8064D3C4@l */
/* 8063D48C  C0 03 D3 C8 */	lfs f0, lit_6392@l(r3)  /* 0x8064D3C8@l */
/* 8063D490  EC 22 08 2A */	fadds f1, f2, f1
/* 8063D494  D0 3F 08 38 */	stfs f1, 0x838(r31)
/* 8063D498  C0 3F 08 38 */	lfs f1, 0x838(r31)
/* 8063D49C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063D4A0  4C 41 13 82 */	cror 2, 1, 2
/* 8063D4A4  40 82 00 10 */	bne lbl_8063D4B4
/* 8063D4A8  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063D4AC  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063D4B0  D0 1F 08 38 */	stfs f0, 0x838(r31)
lbl_8063D4B4:
/* 8063D4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D4B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063D4BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063D4C0  7C 08 03 A6 */	mtlr r0
/* 8063D4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D4C8  4E 80 00 20 */	blr 
