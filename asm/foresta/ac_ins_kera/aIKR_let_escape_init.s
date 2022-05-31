lbl_8059DA68:
/* 8059DA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059DA6C  7C 08 02 A6 */	mflr r0
/* 8059DA70  3C A0 80 65 */	lis r5, lit_597@ha /* 0x8064A170@ha */
/* 8059DA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059DA78  38 C5 A1 70 */	addi r6, r5, lit_597@l /* 0x8064A170@l */
/* 8059DA7C  3C A0 80 65 */	lis r5, lit_598@ha /* 0x8064A174@ha */
/* 8059DA80  38 00 00 00 */	li r0, 0
/* 8059DA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059DA88  7C 7F 1B 78 */	mr r31, r3
/* 8059DA8C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059DA90  90 03 02 20 */	stw r0, 0x220(r3)
/* 8059DA94  38 00 00 50 */	li r0, 0x50
/* 8059DA98  C0 05 A1 74 */	lfs f0, lit_598@l(r5)  /* 0x8064A174@l */
/* 8059DA9C  90 03 02 24 */	stw r0, 0x224(r3)
/* 8059DAA0  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 8059DAA4  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8059DAA8  4B FF FF 9D */	bl aIKR_avoid_init
/* 8059DAAC  38 60 00 02 */	li r3, 2
/* 8059DAB0  38 00 00 00 */	li r0, 0
/* 8059DAB4  90 7F 02 18 */	stw r3, 0x218(r31)
/* 8059DAB8  38 60 00 01 */	li r3, 1
/* 8059DABC  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 8059DAC0  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059DAC4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8059DAC8  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059DACC  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059DAD0  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059DAD4  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059DAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059DADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DAE0  7C 08 03 A6 */	mtlr r0
/* 8059DAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DAE8  4E 80 00 20 */	blr 
