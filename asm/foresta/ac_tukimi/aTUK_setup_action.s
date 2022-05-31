lbl_805C0CE4:
/* 805C0CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C0CE8  7C 08 02 A6 */	mflr r0
/* 805C0CEC  3C 80 80 65 */	lis r4, data_8064ACC4@ha /* 0x8064ACC4@ha */
/* 805C0CF0  3C C0 80 65 */	lis r6, lit_450@ha /* 0x8064ACC8@ha */
/* 805C0CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C0CF8  38 E6 AC C8 */	addi r7, r6, lit_450@l /* 0x8064ACC8@l */
/* 805C0CFC  C0 24 AC C4 */	lfs f1, data_8064ACC4@l(r4)  /* 0x8064ACC4@l */
/* 805C0D00  3C A0 80 65 */	lis r5, lit_451@ha /* 0x8064ACCC@ha */
/* 805C0D04  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805C0D08  3C 80 80 65 */	lis r4, lit_452@ha /* 0x8064ACD0@ha */
/* 805C0D0C  3D 40 80 6C */	lis r10, ani@ha /* 0x806C72E4@ha */
/* 805C0D10  39 25 AC CC */	addi r9, r5, lit_451@l /* 0x8064ACCC@l */
/* 805C0D14  39 04 AC D0 */	addi r8, r4, lit_452@l /* 0x8064ACD0@l */
/* 805C0D18  FC 60 08 90 */	fmr f3, f1
/* 805C0D1C  80 83 01 90 */	lwz r4, 0x190(r3)
/* 805C0D20  54 00 10 3A */	slwi r0, r0, 2
/* 805C0D24  38 AA 72 E4 */	addi r5, r10, ani@l /* 0x806C72E4@l */
/* 805C0D28  C0 47 00 00 */	lfs f2, 0(r7)
/* 805C0D2C  7C A5 00 2E */	lwzx r5, r5, r0
/* 805C0D30  C0 89 00 00 */	lfs f4, 0(r9)
/* 805C0D34  38 63 01 78 */	addi r3, r3, 0x178
/* 805C0D38  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805C0D3C  38 C0 00 01 */	li r6, 1
/* 805C0D40  38 E0 00 00 */	li r7, 0
/* 805C0D44  4B DA FF 91 */	bl cKF_SkeletonInfo_R_init
/* 805C0D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C0D4C  7C 08 03 A6 */	mtlr r0
/* 805C0D50  38 21 00 10 */	addi r1, r1, 0x10
/* 805C0D54  4E 80 00 20 */	blr 
