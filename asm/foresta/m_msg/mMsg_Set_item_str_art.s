lbl_803BFE50:
/* 803BFE50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BFE54  7C 08 02 A6 */	mflr r0
/* 803BFE58  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BFE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BFE60  4B CD B0 75 */	bl func_8009AED4
/* 803BFE64  7C 7D 1B 78 */	mr r29, r3
/* 803BFE68  7C 9E 23 78 */	mr r30, r4
/* 803BFE6C  7C FF 3B 78 */	mr r31, r7
/* 803BFE70  4B FF FF 65 */	bl mMsg_Set_item_str
/* 803BFE74  57 C0 10 3A */	slwi r0, r30, 2
/* 803BFE78  7C 7D 02 14 */	add r3, r29, r0
/* 803BFE7C  93 E3 02 18 */	stw r31, 0x218(r3)
/* 803BFE80  39 61 00 20 */	addi r11, r1, 0x20
/* 803BFE84  4B CD B0 9D */	bl func_8009AF20
/* 803BFE88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BFE8C  7C 08 03 A6 */	mtlr r0
/* 803BFE90  38 21 00 20 */	addi r1, r1, 0x20
/* 803BFE94  4E 80 00 20 */	blr 
