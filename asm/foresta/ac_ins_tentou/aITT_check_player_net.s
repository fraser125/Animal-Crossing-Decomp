lbl_8059FB3C:
/* 8059FB3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059FB40  7C 08 02 A6 */	mflr r0
/* 8059FB44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059FB48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059FB4C  3B E0 00 00 */	li r31, 0
/* 8059FB50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059FB54  7C 7E 1B 78 */	mr r30, r3
/* 8059FB58  38 61 00 08 */	addi r3, r1, 8
/* 8059FB5C  4B E3 C4 F5 */	bl mPlib_Check_StopNet
/* 8059FB60  2C 03 00 01 */	cmpwi r3, 1
/* 8059FB64  40 82 00 48 */	bne lbl_8059FBAC
/* 8059FB68  4B E3 C5 51 */	bl mPlib_Get_item_net_catch_label
/* 8059FB6C  7C 03 F0 40 */	cmplw r3, r30
/* 8059FB70  41 82 00 3C */	beq lbl_8059FBAC
/* 8059FB74  C0 61 00 08 */	lfs f3, 8(r1)
/* 8059FB78  3C 60 80 65 */	lis r3, lit_431@ha /* 0x8064A264@ha */
/* 8059FB7C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8059FB80  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8059FB84  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8059FB88  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059FB8C  C0 03 A2 64 */	lfs f0, lit_431@l(r3)  /* 0x8064A264@l */
/* 8059FB90  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059FB94  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059FB98  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059FB9C  EC 22 08 2A */	fadds f1, f2, f1
/* 8059FBA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FBA4  40 80 00 08 */	bge lbl_8059FBAC
/* 8059FBA8  3B E0 00 01 */	li r31, 1
lbl_8059FBAC:
/* 8059FBAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059FBB0  7F E3 FB 78 */	mr r3, r31
/* 8059FBB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059FBB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059FBBC  7C 08 03 A6 */	mtlr r0
/* 8059FBC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8059FBC4  4E 80 00 20 */	blr 
