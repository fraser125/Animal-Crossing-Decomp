lbl_80599CC0:
/* 80599CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80599CC4  7C 08 02 A6 */	mflr r0
/* 80599CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80599CCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80599CD0  3B E0 00 00 */	li r31, 0
/* 80599CD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80599CD8  7C 7E 1B 78 */	mr r30, r3
/* 80599CDC  38 61 00 08 */	addi r3, r1, 8
/* 80599CE0  4B E4 23 71 */	bl mPlib_Check_StopNet
/* 80599CE4  2C 03 00 01 */	cmpwi r3, 1
/* 80599CE8  40 82 00 48 */	bne lbl_80599D30
/* 80599CEC  4B E4 23 CD */	bl mPlib_Get_item_net_catch_label
/* 80599CF0  7C 03 F0 40 */	cmplw r3, r30
/* 80599CF4  41 82 00 3C */	beq lbl_80599D30
/* 80599CF8  C0 61 00 08 */	lfs f3, 8(r1)
/* 80599CFC  3C 60 80 65 */	lis r3, lit_458@ha /* 0x80649F5C@ha */
/* 80599D00  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80599D04  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80599D08  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80599D0C  EC 63 00 28 */	fsubs f3, f3, f0
/* 80599D10  C0 03 9F 5C */	lfs f0, lit_458@l(r3)  /* 0x80649F5C@l */
/* 80599D14  EC 22 08 28 */	fsubs f1, f2, f1
/* 80599D18  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80599D1C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80599D20  EC 22 08 2A */	fadds f1, f2, f1
/* 80599D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80599D28  40 80 00 08 */	bge lbl_80599D30
/* 80599D2C  3B E0 00 01 */	li r31, 1
lbl_80599D30:
/* 80599D30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80599D34  7F E3 FB 78 */	mr r3, r31
/* 80599D38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80599D3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80599D40  7C 08 03 A6 */	mtlr r0
/* 80599D44  38 21 00 20 */	addi r1, r1, 0x20
/* 80599D48  4E 80 00 20 */	blr 
