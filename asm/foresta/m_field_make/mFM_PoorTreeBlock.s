lbl_803A3AA4:
/* 803A3AA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A3AA8  7C 08 02 A6 */	mflr r0
/* 803A3AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A3AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3AB4  4B CF 74 21 */	bl func_8009AED4
/* 803A3AB8  3B C3 00 20 */	addi r30, r3, 0x20
/* 803A3ABC  7C 9D 23 78 */	mr r29, r4
/* 803A3AC0  54 9F 10 3A */	slwi r31, r4, 2
/* 803A3AC4  48 00 00 14 */	b lbl_803A3AD8
lbl_803A3AC8:
/* 803A3AC8  7C 7E FA 14 */	add r3, r30, r31
/* 803A3ACC  4B FE E5 19 */	bl mCoBG_Change2PoorAttr
/* 803A3AD0  3B BD 00 10 */	addi r29, r29, 0x10
/* 803A3AD4  3B FF 00 40 */	addi r31, r31, 0x40
lbl_803A3AD8:
/* 803A3AD8  2C 1D 01 00 */	cmpwi r29, 0x100
/* 803A3ADC  41 80 FF EC */	blt lbl_803A3AC8
/* 803A3AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3AE4  4B CF 74 3D */	bl func_8009AF20
/* 803A3AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A3AEC  7C 08 03 A6 */	mtlr r0
/* 803A3AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A3AF4  4E 80 00 20 */	blr 
