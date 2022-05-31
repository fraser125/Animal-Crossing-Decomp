lbl_8053E0A4:
/* 8053E0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E0A8  7C 08 02 A6 */	mflr r0
/* 8053E0AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E0B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053E0B4  7C DF 33 78 */	mr r31, r6
/* 8053E0B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8053E0BC  7C 9E 23 78 */	mr r30, r4
/* 8053E0C0  88 04 07 4D */	lbz r0, 0x74d(r4)
/* 8053E0C4  28 00 00 00 */	cmplwi r0, 0
/* 8053E0C8  40 82 00 28 */	bne lbl_8053E0F0
/* 8053E0CC  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8053E0D0  38 7E 00 DC */	addi r3, r30, 0xdc
/* 8053E0D4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8053E0D8  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8053E0DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8053E0E0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8053E0E4  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8053E0E8  EC 42 00 2A */	fadds f2, f2, f0
/* 8053E0EC  4B EC EE BD */	bl Matrix_softcv3_load
lbl_8053E0F0:
/* 8053E0F0  3C 60 80 65 */	lis r3, lit_1598@ha /* 0x806493B8@ha */
/* 8053E0F4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8053E0F8  38 83 93 B8 */	addi r4, r3, lit_1598@l /* 0x806493B8@l */
/* 8053E0FC  38 60 00 01 */	li r3, 1
/* 8053E100  C0 24 00 00 */	lfs f1, 0(r4)
/* 8053E104  FC 60 08 90 */	fmr f3, f1
/* 8053E108  4B EC E2 E5 */	bl Matrix_scale
/* 8053E10C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8053E110  38 60 00 01 */	li r3, 1
/* 8053E114  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8053E118  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8053E11C  4B EC E1 E5 */	bl Matrix_translate
/* 8053E120  3C 80 80 65 */	lis r4, lit_1606@ha /* 0x806493C0@ha */
/* 8053E124  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8053E128  C0 64 93 C0 */	lfs f3, lit_1606@l(r4)  /* 0x806493C0@l */
/* 8053E12C  3C 60 80 65 */	lis r3, lit_796@ha /* 0x8064937C@ha */
/* 8053E130  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8053E134  38 83 93 7C */	addi r4, r3, lit_796@l /* 0x8064937C@l */
/* 8053E138  EC 23 00 72 */	fmuls f1, f3, f1
/* 8053E13C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8053E140  EC 63 00 32 */	fmuls f3, f3, f0
/* 8053E144  38 60 00 01 */	li r3, 1
/* 8053E148  4B EC E2 A5 */	bl Matrix_scale
/* 8053E14C  7F E3 FB 78 */	mr r3, r31
/* 8053E150  38 80 00 0C */	li r4, 0xc
/* 8053E154  4B B1 EF 15 */	bl bzero
/* 8053E158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E15C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053E160  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053E164  7C 08 03 A6 */	mtlr r0
/* 8053E168  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E16C  4E 80 00 20 */	blr 
