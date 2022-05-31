lbl_8059CB1C:
/* 8059CB1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059CB20  7C 08 02 A6 */	mflr r0
/* 8059CB24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059CB28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059CB2C  3B E0 00 00 */	li r31, 0
/* 8059CB30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059CB34  7C 7E 1B 78 */	mr r30, r3
/* 8059CB38  38 61 00 08 */	addi r3, r1, 8
/* 8059CB3C  4B E3 F5 15 */	bl mPlib_Check_StopNet
/* 8059CB40  2C 03 00 01 */	cmpwi r3, 1
/* 8059CB44  40 82 00 48 */	bne lbl_8059CB8C
/* 8059CB48  4B E3 F5 71 */	bl mPlib_Get_item_net_catch_label
/* 8059CB4C  7C 03 F0 40 */	cmplw r3, r30
/* 8059CB50  41 82 00 3C */	beq lbl_8059CB8C
/* 8059CB54  C0 61 00 08 */	lfs f3, 8(r1)
/* 8059CB58  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A110@ha */
/* 8059CB5C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8059CB60  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8059CB64  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8059CB68  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059CB6C  C0 03 A1 10 */	lfs f0, lit_436@l(r3)  /* 0x8064A110@l */
/* 8059CB70  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059CB74  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059CB78  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059CB7C  EC 22 08 2A */	fadds f1, f2, f1
/* 8059CB80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059CB84  40 80 00 08 */	bge lbl_8059CB8C
/* 8059CB88  3B E0 00 01 */	li r31, 1
lbl_8059CB8C:
/* 8059CB8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059CB90  7F E3 FB 78 */	mr r3, r31
/* 8059CB94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059CB98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059CB9C  7C 08 03 A6 */	mtlr r0
/* 8059CBA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8059CBA4  4E 80 00 20 */	blr 
