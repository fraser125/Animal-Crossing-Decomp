lbl_803A09D4:
/* 803A09D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A09D8  7C 08 02 A6 */	mflr r0
/* 803A09DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A09E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A09E4  7C 7F 1B 78 */	mr r31, r3
/* 803A09E8  38 60 00 00 */	li r3, 0
/* 803A09EC  98 7F 00 0A */	stb r3, 0xa(r31)
/* 803A09F0  88 1F 00 08 */	lbz r0, 8(r31)
/* 803A09F4  28 00 00 00 */	cmplwi r0, 0
/* 803A09F8  41 82 00 0C */	beq lbl_803A0A04
/* 803A09FC  90 7F 00 00 */	stw r3, 0(r31)
/* 803A0A00  48 00 00 0C */	b lbl_803A0A0C
lbl_803A0A04:
/* 803A0A04  38 00 02 24 */	li r0, 0x224
/* 803A0A08  90 1F 00 00 */	stw r0, 0(r31)
lbl_803A0A0C:
/* 803A0A0C  3C E0 80 64 */	lis r7, data_80641E74@ha /* 0x80641E74@ha */
/* 803A0A10  3C C0 80 64 */	lis r6, lit_342@ha /* 0x80641E78@ha */
/* 803A0A14  3C A0 80 64 */	lis r5, lit_343@ha /* 0x80641E7C@ha */
/* 803A0A18  3C 80 80 64 */	lis r4, lit_344@ha /* 0x80641E80@ha */
/* 803A0A1C  3C 60 80 64 */	lis r3, lit_345@ha /* 0x80641E84@ha */
/* 803A0A20  39 27 1E 74 */	addi r9, r7, data_80641E74@l /* 0x80641E74@l */
/* 803A0A24  39 06 1E 78 */	addi r8, r6, lit_342@l /* 0x80641E78@l */
/* 803A0A28  38 E5 1E 7C */	addi r7, r5, lit_343@l /* 0x80641E7C@l */
/* 803A0A2C  38 C4 1E 80 */	addi r6, r4, lit_344@l /* 0x80641E80@l */
/* 803A0A30  38 A3 1E 84 */	addi r5, r3, lit_345@l /* 0x80641E84@l */
/* 803A0A34  C0 29 00 00 */	lfs f1, 0(r9)
/* 803A0A38  38 7F 00 10 */	addi r3, r31, 0x10
/* 803A0A3C  C0 48 00 00 */	lfs f2, 0(r8)
/* 803A0A40  38 9F 00 0C */	addi r4, r31, 0xc
/* 803A0A44  C0 67 00 00 */	lfs f3, 0(r7)
/* 803A0A48  C0 86 00 00 */	lfs f4, 0(r6)
/* 803A0A4C  C0 A5 00 00 */	lfs f5, 0(r5)
/* 803A0A50  4B CB D9 C5 */	bl func_8005E414
/* 803A0A54  3C 60 80 64 */	lis r3, lit_346@ha /* 0x80641E88@ha */
/* 803A0A58  3C 80 80 64 */	lis r4, lit_347@ha /* 0x80641E8C@ha */
/* 803A0A5C  38 A3 1E 88 */	addi r5, r3, lit_346@l /* 0x80641E88@l */
/* 803A0A60  C0 64 1E 8C */	lfs f3, lit_347@l(r4)  /* 0x80641E8C@l */
/* 803A0A64  C0 25 00 00 */	lfs f1, 0(r5)
/* 803A0A68  3C 60 80 64 */	lis r3, lit_345@ha /* 0x80641E84@ha */
/* 803A0A6C  C1 03 1E 84 */	lfs f8, lit_345@l(r3)  /* 0x80641E84@l */
/* 803A0A70  38 7F 00 50 */	addi r3, r31, 0x50
/* 803A0A74  FC 40 08 90 */	fmr f2, f1
/* 803A0A78  D0 21 00 08 */	stfs f1, 8(r1)
/* 803A0A7C  FC 80 08 90 */	fmr f4, f1
/* 803A0A80  FC A0 08 90 */	fmr f5, f1
/* 803A0A84  FC C0 08 90 */	fmr f6, f1
/* 803A0A88  FC E0 08 90 */	fmr f7, f1
/* 803A0A8C  4B CB CA 5D */	bl guLookAt
/* 803A0A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A0A94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A0A98  7C 08 03 A6 */	mtlr r0
/* 803A0A9C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A0AA0  4E 80 00 20 */	blr 
