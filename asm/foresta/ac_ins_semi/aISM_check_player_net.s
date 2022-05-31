lbl_8059F2C8:
/* 8059F2C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059F2CC  7C 08 02 A6 */	mflr r0
/* 8059F2D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059F2D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059F2D8  3B E0 00 00 */	li r31, 0
/* 8059F2DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059F2E0  7C 7E 1B 78 */	mr r30, r3
/* 8059F2E4  38 61 00 08 */	addi r3, r1, 8
/* 8059F2E8  4B E3 CD 69 */	bl mPlib_Check_StopNet
/* 8059F2EC  2C 03 00 01 */	cmpwi r3, 1
/* 8059F2F0  40 82 00 54 */	bne lbl_8059F344
/* 8059F2F4  4B E3 CD C5 */	bl mPlib_Get_item_net_catch_label
/* 8059F2F8  7C 03 F0 40 */	cmplw r3, r30
/* 8059F2FC  40 82 00 10 */	bne lbl_8059F30C
/* 8059F300  38 00 00 01 */	li r0, 1
/* 8059F304  90 1E 02 34 */	stw r0, 0x234(r30)
/* 8059F308  48 00 00 3C */	b lbl_8059F344
lbl_8059F30C:
/* 8059F30C  C0 61 00 08 */	lfs f3, 8(r1)
/* 8059F310  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064A210@ha */
/* 8059F314  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8059F318  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8059F31C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8059F320  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059F324  C0 03 A2 10 */	lfs f0, lit_435@l(r3)  /* 0x8064A210@l */
/* 8059F328  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059F32C  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059F330  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059F334  EC 22 08 2A */	fadds f1, f2, f1
/* 8059F338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059F33C  40 80 00 08 */	bge lbl_8059F344
/* 8059F340  3B E0 00 01 */	li r31, 1
lbl_8059F344:
/* 8059F344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059F348  7F E3 FB 78 */	mr r3, r31
/* 8059F34C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059F350  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059F354  7C 08 03 A6 */	mtlr r0
/* 8059F358  38 21 00 20 */	addi r1, r1, 0x20
/* 8059F35C  4E 80 00 20 */	blr 
