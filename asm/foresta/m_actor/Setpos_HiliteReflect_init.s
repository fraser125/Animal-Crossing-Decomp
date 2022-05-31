lbl_80375F7C:
/* 80375F7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80375F80  7C 08 02 A6 */	mflr r0
/* 80375F84  7C 87 23 78 */	mr r7, r4
/* 80375F88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80375F8C  3C 00 43 30 */	lis r0, 0x4330
/* 80375F90  88 A4 1C C2 */	lbz r5, 0x1cc2(r4)
/* 80375F94  3C 80 80 64 */	lis r4, lit_694@ha /* 0x8064122C@ha */
/* 80375F98  C8 24 12 2C */	lfd f1, lit_694@l(r4)  /* 0x8064122C@l */
/* 80375F9C  38 87 1A 8C */	addi r4, r7, 0x1a8c
/* 80375FA0  7C A5 07 74 */	extsb r5, r5
/* 80375FA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80375FA8  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 80375FAC  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80375FB0  38 A1 00 08 */	addi r5, r1, 8
/* 80375FB4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80375FB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80375FBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80375FC0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80375FC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80375FC8  88 07 1C C3 */	lbz r0, 0x1cc3(r7)
/* 80375FCC  7C 00 07 74 */	extsb r0, r0
/* 80375FD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80375FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80375FD8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80375FDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80375FE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80375FE4  88 07 1C C4 */	lbz r0, 0x1cc4(r7)
/* 80375FE8  7C 00 07 74 */	extsb r0, r0
/* 80375FEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80375FF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80375FF4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80375FF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80375FFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80376000  80 C7 00 00 */	lwz r6, 0(r7)
/* 80376004  4B FF FF 01 */	bl HiliteReflect_init
/* 80376008  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037600C  7C 08 03 A6 */	mtlr r0
/* 80376010  38 21 00 30 */	addi r1, r1, 0x30
/* 80376014  4E 80 00 20 */	blr 
