lbl_8055547C:
/* 8055547C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555480  7C 08 02 A6 */	mflr r0
/* 80555484  FC 60 08 90 */	fmr f3, f1
/* 80555488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055548C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555490  7C 7F 1B 78 */	mr r31, r3
/* 80555494  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80555498  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8055549C  EC 22 08 28 */	fsubs f1, f2, f1
/* 805554A0  EC 43 00 28 */	fsubs f2, f3, f0
/* 805554A4  4B EB 6B 5D */	bl atans_table
/* 805554A8  7C 60 1B 78 */	mr r0, r3
/* 805554AC  38 7F 00 DE */	addi r3, r31, 0xde
/* 805554B0  7C 04 07 34 */	extsh r4, r0
/* 805554B4  38 A0 08 00 */	li r5, 0x800
/* 805554B8  4B E6 56 8D */	bl chase_angle
/* 805554BC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805554C0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805554C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805554C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805554CC  7C 08 03 A6 */	mtlr r0
/* 805554D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805554D4  4E 80 00 20 */	blr 
