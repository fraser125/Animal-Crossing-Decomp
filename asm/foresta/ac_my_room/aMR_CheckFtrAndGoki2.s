lbl_80477658:
/* 80477658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047765C  7C 08 02 A6 */	mflr r0
/* 80477660  90 01 00 24 */	stw r0, 0x24(r1)
/* 80477664  39 61 00 20 */	addi r11, r1, 0x20
/* 80477668  4B C2 38 6D */	bl func_8009AED4
/* 8047766C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80477670  7C 7D 1B 78 */	mr r29, r3
/* 80477674  C0 04 00 08 */	lfs f0, 8(r4)
/* 80477678  3B C0 00 00 */	li r30, 0
/* 8047767C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80477680  3B E0 00 00 */	li r31, 0
/* 80477684  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80477688:
/* 80477688  7C 7D FA 14 */	add r3, r29, r31
/* 8047768C  38 81 00 08 */	addi r4, r1, 8
/* 80477690  38 A3 00 10 */	addi r5, r3, 0x10
/* 80477694  4B F1 35 15 */	bl mCoBG_GetPointInfoFrontLine
/* 80477698  2C 03 00 00 */	cmpwi r3, 0
/* 8047769C  41 82 00 0C */	beq lbl_804776A8
/* 804776A0  38 60 00 00 */	li r3, 0
/* 804776A4  48 00 00 18 */	b lbl_804776BC
lbl_804776A8:
/* 804776A8  3B DE 00 01 */	addi r30, r30, 1
/* 804776AC  3B FF 00 20 */	addi r31, r31, 0x20
/* 804776B0  2C 1E 00 04 */	cmpwi r30, 4
/* 804776B4  41 80 FF D4 */	blt lbl_80477688
/* 804776B8  38 60 00 01 */	li r3, 1
lbl_804776BC:
/* 804776BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804776C0  4B C2 38 61 */	bl func_8009AF20
/* 804776C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804776C8  7C 08 03 A6 */	mtlr r0
/* 804776CC  38 21 00 20 */	addi r1, r1, 0x20
/* 804776D0  4E 80 00 20 */	blr 
