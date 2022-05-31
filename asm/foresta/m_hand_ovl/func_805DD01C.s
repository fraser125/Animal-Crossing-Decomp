lbl_805DD01C:
/* 805DD01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DD020  7C 08 02 A6 */	mflr r0
/* 805DD024  3C E0 80 6D */	lis r7, data_806CCFA0@ha /* 0x806CCFA0@ha */
/* 805DD028  3C C0 80 6D */	lis r6, mHD_animeSpdTable@ha /* 0x806CD048@ha */
/* 805DD02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DD030  39 07 CF A0 */	addi r8, r7, data_806CCFA0@l /* 0x806CCFA0@l */
/* 805DD034  38 C6 D0 48 */	addi r6, r6, mHD_animeSpdTable@l /* 0x806CD048@l */
/* 805DD038  38 E0 00 00 */	li r7, 0
/* 805DD03C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DD040  7C 83 23 78 */	mr r3, r4
/* 805DD044  3C 80 80 65 */	lis r4, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DD048  81 25 09 80 */	lwz r9, 0x980(r5)
/* 805DD04C  38 A4 B2 9C */	addi r5, r4, data_8064B29C@l /* 0x8064B29C@l */
/* 805DD050  80 83 00 18 */	lwz r4, 0x18(r3)
/* 805DD054  A8 09 02 30 */	lha r0, 0x230(r9)
/* 805DD058  C0 A5 00 00 */	lfs f5, 0(r5)
/* 805DD05C  1D 20 00 18 */	mulli r9, r0, 0x18
/* 805DD060  54 00 10 3A */	slwi r0, r0, 2
/* 805DD064  7C 86 04 2E */	lfsx f4, r6, r0
/* 805DD068  7C C8 4A 14 */	add r6, r8, r9
/* 805DD06C  C0 26 00 08 */	lfs f1, 8(r6)
/* 805DD070  80 A6 00 00 */	lwz r5, 0(r6)
/* 805DD074  FC 60 08 90 */	fmr f3, f1
/* 805DD078  C0 46 00 0C */	lfs f2, 0xc(r6)
/* 805DD07C  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 805DD080  4B D9 3C 55 */	bl cKF_SkeletonInfo_R_init
/* 805DD084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DD088  7C 08 03 A6 */	mtlr r0
/* 805DD08C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DD090  4E 80 00 20 */	blr 
