lbl_805810C8:
/* 805810C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805810CC  7C 08 02 A6 */	mflr r0
/* 805810D0  7C 65 1B 78 */	mr r5, r3
/* 805810D4  38 C0 00 10 */	li r6, 0x10
/* 805810D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805810DC  38 61 00 08 */	addi r3, r1, 8
/* 805810E0  38 E0 00 01 */	li r7, 1
/* 805810E4  39 00 00 00 */	li r8, 0
/* 805810E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805810EC  7C 9F 23 78 */	mr r31, r4
/* 805810F0  38 80 00 10 */	li r4, 0x10
/* 805810F4  39 20 00 01 */	li r9, 1
/* 805810F8  4B E2 E3 81 */	bl mFont_UnintToString
/* 805810FC  4B E3 E5 AD */	bl func_803BF6A8
/* 80581100  7F E4 FB 78 */	mr r4, r31
/* 80581104  38 A1 00 08 */	addi r5, r1, 8
/* 80581108  38 C0 00 10 */	li r6, 0x10
/* 8058110C  4B E3 EB 49 */	bl mMsg_Set_free_str
/* 80581110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581114  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80581118  7C 08 03 A6 */	mtlr r0
/* 8058111C  38 21 00 20 */	addi r1, r1, 0x20
/* 80581120  4E 80 00 20 */	blr 
