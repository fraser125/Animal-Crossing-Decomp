lbl_805A7AD0:
/* 805A7AD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A7AD4  7C 08 02 A6 */	mflr r0
/* 805A7AD8  3C A0 80 65 */	lis r5, lit_450@ha /* 0x8064A4CC@ha */
/* 805A7ADC  39 20 FF FF */	li r9, -1
/* 805A7AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A7AE4  38 00 00 00 */	li r0, 0
/* 805A7AE8  C0 25 A4 CC */	lfs f1, lit_450@l(r5)  /* 0x8064A4CC@l */
/* 805A7AEC  38 A0 00 C9 */	li r5, 0xc9
/* 805A7AF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A7AF4  7C 9F 23 78 */	mr r31, r4
/* 805A7AF8  FC 40 08 90 */	fmr f2, f1
/* 805A7AFC  38 C0 00 00 */	li r6, 0
/* 805A7B00  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A7B04  7C 7E 1B 78 */	mr r30, r3
/* 805A7B08  FC 60 08 90 */	fmr f3, f1
/* 805A7B0C  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 805A7B10  91 21 00 08 */	stw r9, 8(r1)
/* 805A7B14  38 E0 00 00 */	li r7, 0
/* 805A7B18  39 00 00 00 */	li r8, 0
/* 805A7B1C  39 40 FF FF */	li r10, -1
/* 805A7B20  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A7B24  91 21 00 10 */	stw r9, 0x10(r1)
/* 805A7B28  91 21 00 14 */	stw r9, 0x14(r1)
/* 805A7B2C  91 21 00 18 */	stw r9, 0x18(r1)
/* 805A7B30  39 20 FF FF */	li r9, -1
/* 805A7B34  4B DC DC 15 */	bl Actor_info_make_actor
/* 805A7B38  28 03 00 00 */	cmplwi r3, 0
/* 805A7B3C  41 82 00 14 */	beq lbl_805A7B50
/* 805A7B40  7F C3 F3 78 */	mr r3, r30
/* 805A7B44  7F E4 FB 78 */	mr r4, r31
/* 805A7B48  38 A0 00 01 */	li r5, 1
/* 805A7B4C  48 00 08 01 */	bl aBT_setupAction
lbl_805A7B50:
/* 805A7B50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A7B54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A7B58  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A7B5C  7C 08 03 A6 */	mtlr r0
/* 805A7B60  38 21 00 30 */	addi r1, r1, 0x30
/* 805A7B64  4E 80 00 20 */	blr 
