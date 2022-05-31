lbl_80517EC4:
/* 80517EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80517EC8  7C 08 02 A6 */	mflr r0
/* 80517ECC  7C 65 1B 78 */	mr r5, r3
/* 80517ED0  38 E0 00 01 */	li r7, 1
/* 80517ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80517ED8  38 00 00 0A */	li r0, 0xa
/* 80517EDC  7C 00 28 10 */	subfc r0, r0, r5
/* 80517EE0  38 61 00 08 */	addi r3, r1, 8
/* 80517EE4  7C 80 01 10 */	subfe r4, r0, r0
/* 80517EE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80517EEC  3B E4 00 02 */	addi r31, r4, 2
/* 80517EF0  39 00 00 00 */	li r8, 0
/* 80517EF4  38 80 00 04 */	li r4, 4
/* 80517EF8  39 20 00 00 */	li r9, 0
/* 80517EFC  7F E6 FB 78 */	mr r6, r31
/* 80517F00  4B E9 75 79 */	bl mFont_UnintToString
/* 80517F04  4B EA 77 A5 */	bl func_803BF6A8
/* 80517F08  7F E6 FB 78 */	mr r6, r31
/* 80517F0C  38 A1 00 08 */	addi r5, r1, 8
/* 80517F10  38 80 00 02 */	li r4, 2
/* 80517F14  4B EA 7D 41 */	bl mMsg_Set_free_str
/* 80517F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80517F1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80517F20  7C 08 03 A6 */	mtlr r0
/* 80517F24  38 21 00 20 */	addi r1, r1, 0x20
/* 80517F28  4E 80 00 20 */	blr 
