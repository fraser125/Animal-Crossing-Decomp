lbl_803B3E88:
/* 803B3E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B3E8C  7C 08 02 A6 */	mflr r0
/* 803B3E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B3E94  39 61 00 20 */	addi r11, r1, 0x20
/* 803B3E98  4B CE 70 3D */	bl func_8009AED4
/* 803B3E9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B3EA0  7C 7D 1B 79 */	or. r29, r3, r3
/* 803B3EA4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B3EA8  3B C0 00 00 */	li r30, 0
/* 803B3EAC  3F E4 00 02 */	addis r31, r4, 2
/* 803B3EB0  3B FF 34 50 */	addi r31, r31, 0x3450
/* 803B3EB4  41 82 00 34 */	beq lbl_803B3EE8
/* 803B3EB8  48 02 C1 8D */	bl mPr_NullCheckPersonalID
/* 803B3EBC  2C 03 00 00 */	cmpwi r3, 0
/* 803B3EC0  40 82 00 28 */	bne lbl_803B3EE8
/* 803B3EC4  7F A3 EB 78 */	mr r3, r29
/* 803B3EC8  7F E4 FB 78 */	mr r4, r31
/* 803B3ECC  38 A0 00 07 */	li r5, 7
/* 803B3ED0  48 01 7E A9 */	bl mNpc_GetAnimalMemoryIdx
/* 803B3ED4  2C 03 FF FF */	cmpwi r3, -1
/* 803B3ED8  41 82 00 10 */	beq lbl_803B3EE8
/* 803B3EDC  1C 63 01 38 */	mulli r3, r3, 0x138
/* 803B3EE0  3B C3 00 1C */	addi r30, r3, 0x1c
/* 803B3EE4  7F DF F2 14 */	add r30, r31, r30
lbl_803B3EE8:
/* 803B3EE8  7F C3 F3 78 */	mr r3, r30
/* 803B3EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 803B3EF0  4B CE 70 31 */	bl func_8009AF20
/* 803B3EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B3EF8  7C 08 03 A6 */	mtlr r0
/* 803B3EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 803B3F00  4E 80 00 20 */	blr 
