lbl_803F8AA4:
/* 803F8AA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F8AA8  7C 08 02 A6 */	mflr r0
/* 803F8AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F8AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8AB4  4B CA 24 1D */	bl func_8009AED0
/* 803F8AB8  7C 9D 23 78 */	mr r29, r4
/* 803F8ABC  7C 7C 1B 78 */	mr r28, r3
/* 803F8AC0  7C BE 2B 78 */	mr r30, r5
/* 803F8AC4  3B E0 00 00 */	li r31, 0
/* 803F8AC8  7F A3 EB 78 */	mr r3, r29
/* 803F8ACC  4B C9 57 9D */	bl CARDGetResultCode
/* 803F8AD0  90 7E 00 00 */	stw r3, 0(r30)
/* 803F8AD4  80 1E 00 00 */	lwz r0, 0(r30)
/* 803F8AD8  2C 00 FF FF */	cmpwi r0, -1
/* 803F8ADC  41 82 00 20 */	beq lbl_803F8AFC
/* 803F8AE0  7F 83 E3 78 */	mr r3, r28
/* 803F8AE4  7F A4 EB 78 */	mr r4, r29
/* 803F8AE8  4B FF F3 2D */	bl mCD_close_and_unmount
/* 803F8AEC  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803F8AF0  3B E0 00 01 */	li r31, 1
/* 803F8AF4  38 03 00 01 */	addi r0, r3, 1
/* 803F8AF8  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_803F8AFC:
/* 803F8AFC  7F E3 FB 78 */	mr r3, r31
/* 803F8B00  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8B04  4B CA 24 19 */	bl func_8009AF1C
/* 803F8B08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F8B0C  7C 08 03 A6 */	mtlr r0
/* 803F8B10  38 21 00 20 */	addi r1, r1, 0x20
/* 803F8B14  4E 80 00 20 */	blr 
