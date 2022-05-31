lbl_8055A8A4:
/* 8055A8A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055A8A8  7C 08 02 A6 */	mflr r0
/* 8055A8AC  7C 65 1B 78 */	mr r5, r3
/* 8055A8B0  38 C0 00 10 */	li r6, 0x10
/* 8055A8B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055A8B8  38 61 00 08 */	addi r3, r1, 8
/* 8055A8BC  38 E0 00 01 */	li r7, 1
/* 8055A8C0  39 00 00 00 */	li r8, 0
/* 8055A8C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055A8C8  7C 9F 23 78 */	mr r31, r4
/* 8055A8CC  38 80 00 10 */	li r4, 0x10
/* 8055A8D0  39 20 00 01 */	li r9, 1
/* 8055A8D4  4B E5 4B A5 */	bl mFont_UnintToString
/* 8055A8D8  4B E6 4D D1 */	bl func_803BF6A8
/* 8055A8DC  7F E4 FB 78 */	mr r4, r31
/* 8055A8E0  38 A1 00 08 */	addi r5, r1, 8
/* 8055A8E4  38 C0 00 10 */	li r6, 0x10
/* 8055A8E8  4B E6 53 6D */	bl mMsg_Set_free_str
/* 8055A8EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055A8F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055A8F4  7C 08 03 A6 */	mtlr r0
/* 8055A8F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8055A8FC  4E 80 00 20 */	blr 
