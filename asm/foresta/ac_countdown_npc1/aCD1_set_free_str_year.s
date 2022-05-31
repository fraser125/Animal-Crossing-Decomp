lbl_80517E74:
/* 80517E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517E78  7C 08 02 A6 */	mflr r0
/* 80517E7C  7C 65 1B 78 */	mr r5, r3
/* 80517E80  38 80 00 04 */	li r4, 4
/* 80517E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517E88  38 61 00 08 */	addi r3, r1, 8
/* 80517E8C  38 C0 00 04 */	li r6, 4
/* 80517E90  38 E0 00 01 */	li r7, 1
/* 80517E94  39 00 00 00 */	li r8, 0
/* 80517E98  39 20 00 00 */	li r9, 0
/* 80517E9C  4B E9 75 DD */	bl mFont_UnintToString
/* 80517EA0  4B EA 78 09 */	bl func_803BF6A8
/* 80517EA4  38 A1 00 08 */	addi r5, r1, 8
/* 80517EA8  38 80 00 01 */	li r4, 1
/* 80517EAC  38 C0 00 04 */	li r6, 4
/* 80517EB0  4B EA 7D A5 */	bl mMsg_Set_free_str
/* 80517EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517EB8  7C 08 03 A6 */	mtlr r0
/* 80517EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80517EC0  4E 80 00 20 */	blr 
