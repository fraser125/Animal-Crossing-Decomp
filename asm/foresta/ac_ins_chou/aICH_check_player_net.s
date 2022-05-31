lbl_80598E00:
/* 80598E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80598E04  7C 08 02 A6 */	mflr r0
/* 80598E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80598E0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80598E10  3B E0 00 00 */	li r31, 0
/* 80598E14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80598E18  7C 7E 1B 78 */	mr r30, r3
/* 80598E1C  38 61 00 08 */	addi r3, r1, 8
/* 80598E20  4B E4 32 31 */	bl mPlib_Check_StopNet
/* 80598E24  2C 03 00 01 */	cmpwi r3, 1
/* 80598E28  40 82 00 48 */	bne lbl_80598E70
/* 80598E2C  4B E4 32 8D */	bl mPlib_Get_item_net_catch_label
/* 80598E30  7C 03 F0 40 */	cmplw r3, r30
/* 80598E34  41 82 00 3C */	beq lbl_80598E70
/* 80598E38  C0 61 00 08 */	lfs f3, 8(r1)
/* 80598E3C  3C 60 80 65 */	lis r3, lit_583@ha /* 0x80649EF8@ha */
/* 80598E40  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80598E44  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80598E48  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80598E4C  EC 63 00 28 */	fsubs f3, f3, f0
/* 80598E50  C0 03 9E F8 */	lfs f0, lit_583@l(r3)  /* 0x80649EF8@l */
/* 80598E54  EC 22 08 28 */	fsubs f1, f2, f1
/* 80598E58  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80598E5C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80598E60  EC 22 08 2A */	fadds f1, f2, f1
/* 80598E64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80598E68  40 80 00 08 */	bge lbl_80598E70
/* 80598E6C  3B E0 00 01 */	li r31, 1
lbl_80598E70:
/* 80598E70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80598E74  7F E3 FB 78 */	mr r3, r31
/* 80598E78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80598E7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80598E80  7C 08 03 A6 */	mtlr r0
/* 80598E84  38 21 00 20 */	addi r1, r1, 0x20
/* 80598E88  4E 80 00 20 */	blr 
