lbl_803F9F00:
/* 803F9F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9F04  7C 08 02 A6 */	mflr r0
/* 803F9F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9F0C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9F10  4B CA 0F C1 */	bl func_8009AED0
/* 803F9F14  3C 80 80 66 */	lis r4, l_aram_alloc_size_table@ha /* 0x8065E768@ha */
/* 803F9F18  3C 60 81 17 */	lis r3, l_aram_block_p_table@ha /* 0x8117161C@ha */
/* 803F9F1C  3B A4 E7 68 */	addi r29, r4, l_aram_alloc_size_table@l /* 0x8065E768@l */
/* 803F9F20  3B 80 00 00 */	li r28, 0
/* 803F9F24  3B C3 16 1C */	addi r30, r3, l_aram_block_p_table@l /* 0x8117161C@l */
/* 803F9F28  3B E0 00 00 */	li r31, 0
lbl_803F9F2C:
/* 803F9F2C  7C 7D F8 2E */	lwzx r3, r29, r31
/* 803F9F30  4B C6 7C 25 */	bl JC__JKRAllocFromAram
/* 803F9F34  3B 9C 00 01 */	addi r28, r28, 1
/* 803F9F38  7C 7E F9 2E */	stwx r3, r30, r31
/* 803F9F3C  2C 1C 00 03 */	cmpwi r28, 3
/* 803F9F40  3B FF 00 04 */	addi r31, r31, 4
/* 803F9F44  41 80 FF E8 */	blt lbl_803F9F2C
/* 803F9F48  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9F4C  4B CA 0F D1 */	bl func_8009AF1C
/* 803F9F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9F54  7C 08 03 A6 */	mtlr r0
/* 803F9F58  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9F5C  4E 80 00 20 */	blr 
