lbl_80459EB8:
/* 80459EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459EBC  7C 08 02 A6 */	mflr r0
/* 80459EC0  2C 05 00 09 */	cmpwi r5, 9
/* 80459EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459ECC  93 C1 00 08 */	stw r30, 8(r1)
/* 80459ED0  7D 1E 43 78 */	mr r30, r8
/* 80459ED4  83 E8 05 90 */	lwz r31, 0x590(r8)
/* 80459ED8  40 82 00 34 */	bne lbl_80459F0C
/* 80459EDC  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80459EE0  4B FB 35 DD */	bl Matrix_Position_Zero
/* 80459EE4  A8 7F 05 6C */	lha r3, 0x56c(r31)
/* 80459EE8  4B F6 0C 09 */	bl sin_s
/* 80459EEC  C0 7F 05 64 */	lfs f3, 0x564(r31)
/* 80459EF0  3C 60 80 64 */	lis r3, lit_8808@ha /* 0x806444DC@ha */
/* 80459EF4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80459EF8  C0 03 44 DC */	lfs f0, lit_8808@l(r3)  /* 0x806444DC@l */
/* 80459EFC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80459F00  EC 22 00 72 */	fmuls f1, f2, f1
/* 80459F04  EC 00 08 2A */	fadds f0, f0, f1
/* 80459F08  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
lbl_80459F0C:
/* 80459F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459F10  38 60 00 01 */	li r3, 1
/* 80459F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459F18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80459F1C  7C 08 03 A6 */	mtlr r0
/* 80459F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80459F24  4E 80 00 20 */	blr 
