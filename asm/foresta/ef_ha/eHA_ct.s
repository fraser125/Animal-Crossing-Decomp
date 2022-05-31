lbl_8060D01C:
/* 8060D01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060D020  7C 08 02 A6 */	mflr r0
/* 8060D024  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060D028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060D02C  7C 7F 1B 78 */	mr r31, r3
/* 8060D030  7C 83 23 78 */	mr r3, r4
/* 8060D034  93 C1 00 08 */	stw r30, 8(r1)
/* 8060D038  7C BE 2B 78 */	mr r30, r5
/* 8060D03C  4B D7 1A 75 */	bl getCamera2AngleY
/* 8060D040  3C 80 80 65 */	lis r4, data_8064C0AC@ha /* 0x8064C0AC@ha */
/* 8060D044  7C 66 07 34 */	extsh r6, r3
/* 8060D048  A8 BE 00 00 */	lha r5, 0(r30)
/* 8060D04C  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064C0B0@ha */
/* 8060D050  C0 24 C0 AC */	lfs f1, data_8064C0AC@l(r4)  /* 0x8064C0AC@l */
/* 8060D054  3C C6 00 01 */	addis r6, r6, 1
/* 8060D058  38 86 80 00 */	addi r4, r6, -32768
/* 8060D05C  38 00 00 38 */	li r0, 0x38
/* 8060D060  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060D064  7C 84 07 34 */	extsh r4, r4
/* 8060D068  C0 03 C0 B0 */	lfs f0, lit_386@l(r3)  /* 0x8064C0B0@l */
/* 8060D06C  7C 84 28 50 */	subf r4, r4, r5
/* 8060D070  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8060D074  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8060D078  28 03 80 00 */	cmplwi r3, 0x8000
/* 8060D07C  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8060D080  B0 1F 00 00 */	sth r0, 0(r31)
/* 8060D084  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8060D088  EC 01 00 2A */	fadds f0, f1, f0
/* 8060D08C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8060D090  41 80 00 24 */	blt lbl_8060D0B4
/* 8060D094  38 00 00 00 */	li r0, 0
/* 8060D098  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C0B4@ha */
/* 8060D09C  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060D0A0  C0 03 C0 B4 */	lfs f0, lit_387@l(r3)  /* 0x8064C0B4@l */
/* 8060D0A4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8060D0A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8060D0AC  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8060D0B0  48 00 00 20 */	b lbl_8060D0D0
lbl_8060D0B4:
/* 8060D0B4  38 00 00 01 */	li r0, 1
/* 8060D0B8  3C 60 80 65 */	lis r3, lit_388@ha /* 0x8064C0B8@ha */
/* 8060D0BC  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060D0C0  C0 03 C0 B8 */	lfs f0, lit_388@l(r3)  /* 0x8064C0B8@l */
/* 8060D0C4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8060D0C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8060D0CC  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_8060D0D0:
/* 8060D0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060D0D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060D0D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8060D0DC  7C 08 03 A6 */	mtlr r0
/* 8060D0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8060D0E4  4E 80 00 20 */	blr 
