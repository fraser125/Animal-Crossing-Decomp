lbl_805AE698:
/* 805AE698  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AE69C  7C 08 02 A6 */	mflr r0
/* 805AE6A0  1D 24 00 28 */	mulli r9, r4, 0x28
/* 805AE6A4  3D 00 43 30 */	lis r8, 0x4330
/* 805AE6A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AE6AC  3D 40 80 65 */	lis r10, lit_465@ha /* 0x8064A704@ha */
/* 805AE6B0  3C E0 80 6C */	lis r7, flag_tbl@ha /* 0x806C4F80@ha */
/* 805AE6B4  C8 8A A7 04 */	lfd f4, lit_465@l(r10)  /* 0x8064A704@l */
/* 805AE6B8  1C 05 00 28 */	mulli r0, r5, 0x28
/* 805AE6BC  6D 29 80 00 */	xoris r9, r9, 0x8000
/* 805AE6C0  91 01 00 20 */	stw r8, 0x20(r1)
/* 805AE6C4  38 E7 4F 80 */	addi r7, r7, flag_tbl@l /* 0x806C4F80@l */
/* 805AE6C8  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 805AE6CC  91 21 00 24 */	stw r9, 0x24(r1)
/* 805AE6D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805AE6D4  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 805AE6D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805AE6DC  1C A5 00 18 */	mulli r5, r5, 0x18
/* 805AE6E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805AE6E4  54 80 10 3A */	slwi r0, r4, 2
/* 805AE6E8  EC 20 20 28 */	fsubs f1, f0, f4
/* 805AE6EC  91 01 00 28 */	stw r8, 0x28(r1)
/* 805AE6F0  7C 87 2A 14 */	add r4, r7, r5
/* 805AE6F4  7C 04 00 2E */	lwzx r0, r4, r0
/* 805AE6F8  EC 63 08 28 */	fsubs f3, f3, f1
/* 805AE6FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805AE700  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 805AE704  2C 00 00 00 */	cmpwi r0, 0
/* 805AE708  EC 00 20 28 */	fsubs f0, f0, f4
/* 805AE70C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805AE710  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805AE714  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AE718  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AE71C  41 82 00 2C */	beq lbl_805AE748
/* 805AE720  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 805AE724  7C C4 33 78 */	mr r4, r6
/* 805AE728  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 805AE72C  38 61 00 08 */	addi r3, r1, 8
/* 805AE730  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AE734  38 A0 00 64 */	li r5, 0x64
/* 805AE738  90 E1 00 08 */	stw r7, 8(r1)
/* 805AE73C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805AE740  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AE744  4B DE 33 59 */	bl mCoBG_SetPlussOffset
lbl_805AE748:
/* 805AE748  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AE74C  7C 08 03 A6 */	mtlr r0
/* 805AE750  38 21 00 30 */	addi r1, r1, 0x30
/* 805AE754  4E 80 00 20 */	blr 
