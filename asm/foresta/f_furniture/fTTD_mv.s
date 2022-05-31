lbl_8063D7C0:
/* 8063D7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D7C4  7C 08 02 A6 */	mflr r0
/* 8063D7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063D7D0  93 C1 00 08 */	stw r30, 8(r1)
/* 8063D7D4  7C 7E 1B 78 */	mr r30, r3
/* 8063D7D8  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063D7DC  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8063D7E0  38 7E 08 34 */	addi r3, r30, 0x834
/* 8063D7E4  28 00 00 01 */	cmplwi r0, 1
/* 8063D7E8  40 82 00 10 */	bne lbl_8063D7F8
/* 8063D7EC  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D7F0  C0 24 D2 74 */	lfs f1, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063D7F4  48 00 00 0C */	b lbl_8063D800
lbl_8063D7F8:
/* 8063D7F8  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063D7FC  C0 24 D2 78 */	lfs f1, lit_368@l(r4)  /* 0x8064D278@l */
lbl_8063D800:
/* 8063D800  3C A0 80 65 */	lis r5, lit_921@ha /* 0x8064D2B8@ha */
/* 8063D804  3C 80 80 65 */	lis r4, lit_923@ha /* 0x8064D2C0@ha */
/* 8063D808  C0 45 D2 B8 */	lfs f2, lit_921@l(r5)  /* 0x8064D2B8@l */
/* 8063D80C  C0 84 D2 C0 */	lfs f4, lit_923@l(r4)  /* 0x8064D2C0@l */
/* 8063D810  FC 60 10 90 */	fmr f3, f2
/* 8063D814  4B D7 D9 9D */	bl add_calc
/* 8063D818  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063D81C  3C 80 80 65 */	lis r4, lit_693@ha /* 0x8064D294@ha */
/* 8063D820  C0 23 D2 8C */	lfs f1, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063D824  7F E3 FB 78 */	mr r3, r31
/* 8063D828  C0 1E 08 34 */	lfs f0, 0x834(r30)
/* 8063D82C  C0 44 D2 94 */	lfs f2, lit_693@l(r4)  /* 0x8064D294@l */
/* 8063D830  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063D834  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063D838  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D83C  4B D3 37 D9 */	bl cKF_SkeletonInfo_R_play
/* 8063D840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063D848  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063D84C  7C 08 03 A6 */	mtlr r0
/* 8063D850  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D854  4E 80 00 20 */	blr 
