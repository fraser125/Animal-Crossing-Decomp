lbl_8049E690:
/* 8049E690  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049E694  7C 08 02 A6 */	mflr r0
/* 8049E698  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049E69C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E6A0  4B BF C8 31 */	bl func_8009AED0
/* 8049E6A4  7C A0 07 34 */	extsh r0, r5
/* 8049E6A8  3B A3 01 80 */	addi r29, r3, 0x180
/* 8049E6AC  2C 00 00 02 */	cmpwi r0, 2
/* 8049E6B0  40 82 00 38 */	bne lbl_8049E6E8
/* 8049E6B4  7C 9E 07 34 */	extsh r30, r4
/* 8049E6B8  3B 80 00 00 */	li r28, 0
/* 8049E6BC  3B E0 00 00 */	li r31, 0
lbl_8049E6C0:
/* 8049E6C0  7C 7D F8 2E */	lwzx r3, r29, r31
/* 8049E6C4  28 03 00 00 */	cmplwi r3, 0
/* 8049E6C8  41 82 00 0C */	beq lbl_8049E6D4
/* 8049E6CC  7F C4 F3 78 */	mr r4, r30
/* 8049E6D0  4B F4 85 89 */	bl mRmTp_CopyFloorData
lbl_8049E6D4:
/* 8049E6D4  3B 9C 00 01 */	addi r28, r28, 1
/* 8049E6D8  3B FF 00 04 */	addi r31, r31, 4
/* 8049E6DC  2C 1C 00 02 */	cmpwi r28, 2
/* 8049E6E0  41 80 FF E0 */	blt lbl_8049E6C0
/* 8049E6E4  48 00 00 1C */	b lbl_8049E700
lbl_8049E6E8:
/* 8049E6E8  54 00 10 3A */	slwi r0, r0, 2
/* 8049E6EC  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8049E6F0  28 03 00 00 */	cmplwi r3, 0
/* 8049E6F4  41 82 00 0C */	beq lbl_8049E700
/* 8049E6F8  7C 84 07 34 */	extsh r4, r4
/* 8049E6FC  4B F4 85 5D */	bl mRmTp_CopyFloorData
lbl_8049E700:
/* 8049E700  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E704  4B BF C8 19 */	bl func_8009AF1C
/* 8049E708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049E70C  7C 08 03 A6 */	mtlr r0
/* 8049E710  38 21 00 20 */	addi r1, r1, 0x20
/* 8049E714  4E 80 00 20 */	blr 
