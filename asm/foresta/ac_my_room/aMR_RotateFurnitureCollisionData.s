lbl_8047A690:
/* 8047A690  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047A694  7C 08 02 A6 */	mflr r0
/* 8047A698  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047A69C  39 61 00 18 */	addi r11, r1, 0x18
/* 8047A6A0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8047A6A4  4B C2 08 2D */	bl func_8009AED0
/* 8047A6A8  FF E0 08 90 */	fmr f31, f1
/* 8047A6AC  7C 7C 1B 78 */	mr r28, r3
/* 8047A6B0  3B A0 00 00 */	li r29, 0
/* 8047A6B4  3B E0 00 00 */	li r31, 0
lbl_8047A6B8:
/* 8047A6B8  FC 20 F8 90 */	fmr f1, f31
/* 8047A6BC  7F DC FA 14 */	add r30, r28, r31
/* 8047A6C0  7F C3 F3 78 */	mr r3, r30
/* 8047A6C4  4B FF DD 4D */	bl aMR_RotateY
/* 8047A6C8  FC 20 F8 90 */	fmr f1, f31
/* 8047A6CC  38 7E 00 08 */	addi r3, r30, 8
/* 8047A6D0  4B FF DD 41 */	bl aMR_RotateY
/* 8047A6D4  FC 20 F8 90 */	fmr f1, f31
/* 8047A6D8  38 7E 00 10 */	addi r3, r30, 0x10
/* 8047A6DC  4B FF DD 35 */	bl aMR_RotateY
/* 8047A6E0  3B BD 00 01 */	addi r29, r29, 1
/* 8047A6E4  3B FF 00 20 */	addi r31, r31, 0x20
/* 8047A6E8  2C 1D 00 04 */	cmpwi r29, 4
/* 8047A6EC  41 80 FF CC */	blt lbl_8047A6B8
/* 8047A6F0  39 61 00 18 */	addi r11, r1, 0x18
/* 8047A6F4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8047A6F8  4B C2 08 25 */	bl func_8009AF1C
/* 8047A6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047A700  7C 08 03 A6 */	mtlr r0
/* 8047A704  38 21 00 20 */	addi r1, r1, 0x20
/* 8047A708  4E 80 00 20 */	blr 
