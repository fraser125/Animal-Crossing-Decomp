lbl_803D3E60:
/* 803D3E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D3E64  7C 08 02 A6 */	mflr r0
/* 803D3E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D3E6C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3E70  4B CC 70 61 */	bl func_8009AED0
/* 803D3E74  7C 7C 1B 79 */	or. r28, r3, r3
/* 803D3E78  3C 60 81 17 */	lis r3, l_mnpc_island_ftr@ha /* 0x8116C680@ha */
/* 803D3E7C  3B E3 C6 80 */	addi r31, r3, l_mnpc_island_ftr@l /* 0x8116C680@l */
/* 803D3E80  41 82 00 60 */	beq lbl_803D3EE0
/* 803D3E84  38 00 00 00 */	li r0, 0
/* 803D3E88  3B DC 00 10 */	addi r30, r28, 0x10
/* 803D3E8C  B0 1F 00 00 */	sth r0, 0(r31)
/* 803D3E90  3B A0 00 00 */	li r29, 0
lbl_803D3E94:
/* 803D3E94  7F C3 F3 78 */	mr r3, r30
/* 803D3E98  4B FF 79 D9 */	bl mNpc_CheckFreeAnimalMemory
/* 803D3E9C  2C 03 00 00 */	cmpwi r3, 0
/* 803D3EA0  40 82 00 14 */	bne lbl_803D3EB4
/* 803D3EA4  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803D3EA8  A0 1E 00 20 */	lhz r0, 0x20(r30)
/* 803D3EAC  7C 60 03 78 */	or r0, r3, r0
/* 803D3EB0  B0 1F 00 00 */	sth r0, 0(r31)
lbl_803D3EB4:
/* 803D3EB4  3B BD 00 01 */	addi r29, r29, 1
/* 803D3EB8  3B DE 01 38 */	addi r30, r30, 0x138
/* 803D3EBC  2C 1D 00 07 */	cmpwi r29, 7
/* 803D3EC0  41 80 FF D4 */	blt lbl_803D3E94
/* 803D3EC4  38 7C 08 D8 */	addi r3, r28, 0x8d8
/* 803D3EC8  38 9F 00 02 */	addi r4, r31, 2
/* 803D3ECC  38 A0 00 08 */	li r5, 8
/* 803D3ED0  4B C8 91 4D */	bl func_8005D01C
/* 803D3ED4  38 7F 00 0A */	addi r3, r31, 0xa
/* 803D3ED8  38 80 00 10 */	li r4, 0x10
/* 803D3EDC  4B FF FE D1 */	bl mNpc_ClearIslandItemList
lbl_803D3EE0:
/* 803D3EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3EE4  4B CC 70 39 */	bl func_8009AF1C
/* 803D3EE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D3EEC  7C 08 03 A6 */	mtlr r0
/* 803D3EF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D3EF4  4E 80 00 20 */	blr 
