lbl_805C90AC:
/* 805C90AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C90B0  7C 08 02 A6 */	mflr r0
/* 805C90B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C90B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C90BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805C90C0  7C 9E 23 78 */	mr r30, r4
/* 805C90C4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C90C8  80 64 00 00 */	lwz r3, 0(r4)
/* 805C90CC  83 E5 09 EC */	lwz r31, 0x9ec(r5)
/* 805C90D0  88 1F 10 43 */	lbz r0, 0x1043(r31)
/* 805C90D4  28 00 00 00 */	cmplwi r0, 0
/* 805C90D8  41 82 00 7C */	beq lbl_805C9154
/* 805C90DC  81 85 09 50 */	lwz r12, 0x950(r5)
/* 805C90E0  7D 89 03 A6 */	mtctr r12
/* 805C90E4  4E 80 04 21 */	bctrl 
/* 805C90E8  88 FF 10 58 */	lbz r7, 0x1058(r31)
/* 805C90EC  38 00 00 01 */	li r0, 1
/* 805C90F0  3C 60 80 65 */	lis r3, lit_1269@ha /* 0x8064AE9C@ha */
/* 805C90F4  3C 80 80 65 */	lis r4, lit_1267@ha /* 0x8064AE94@ha */
/* 805C90F8  90 01 00 08 */	stw r0, 8(r1)
/* 805C90FC  38 00 00 00 */	li r0, 0
/* 805C9100  3C C0 80 6D */	lis r6, number2_prim_table@ha /* 0x806C88D4@ha */
/* 805C9104  C0 63 AE 9C */	lfs f3, lit_1269@l(r3)  /* 0x8064AE9C@l */
/* 805C9108  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C910C  38 06 88 D4 */	addi r0, r6, number2_prim_table@l /* 0x806C88D4@l */
/* 805C9110  1C C7 00 03 */	mulli r6, r7, 3
/* 805C9114  38 A4 AE 94 */	addi r5, r4, lit_1267@l /* 0x8064AE94@l */
/* 805C9118  3C 60 80 65 */	lis r3, lit_1268@ha /* 0x8064AE98@ha */
/* 805C911C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C9120  FC 80 18 90 */	fmr f4, f3
/* 805C9124  38 A0 00 10 */	li r5, 0x10
/* 805C9128  38 83 AE 98 */	addi r4, r3, lit_1268@l /* 0x8064AE98@l */
/* 805C912C  7D 00 32 14 */	add r8, r0, r6
/* 805C9130  C0 44 00 00 */	lfs f2, 0(r4)
/* 805C9134  7F C3 F3 78 */	mr r3, r30
/* 805C9138  88 C8 00 00 */	lbz r6, 0(r8)
/* 805C913C  38 9F 10 44 */	addi r4, r31, 0x1044
/* 805C9140  88 E8 00 01 */	lbz r7, 1(r8)
/* 805C9144  39 20 00 FF */	li r9, 0xff
/* 805C9148  89 08 00 02 */	lbz r8, 2(r8)
/* 805C914C  39 40 00 00 */	li r10, 0
/* 805C9150  4B DE 6F 59 */	bl mFont_SetLineStrings
lbl_805C9154:
/* 805C9154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C9158  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C915C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805C9160  7C 08 03 A6 */	mtlr r0
/* 805C9164  38 21 00 20 */	addi r1, r1, 0x20
/* 805C9168  4E 80 00 20 */	blr 
