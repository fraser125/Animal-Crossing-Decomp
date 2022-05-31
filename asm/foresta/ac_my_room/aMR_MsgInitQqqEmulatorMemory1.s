lbl_80475EF8:
/* 80475EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475EFC  7C 08 02 A6 */	mflr r0
/* 80475F00  38 80 00 00 */	li r4, 0
/* 80475F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475F0C  4B FF E1 B5 */	bl aMR_GetNameString
/* 80475F10  7C 7F 1B 78 */	mr r31, r3
/* 80475F14  4B F4 97 95 */	bl func_803BF6A8
/* 80475F18  7F E5 FB 78 */	mr r5, r31
/* 80475F1C  38 80 00 01 */	li r4, 1
/* 80475F20  38 C0 00 10 */	li r6, 0x10
/* 80475F24  38 E0 00 05 */	li r7, 5
/* 80475F28  4B F4 9D E1 */	bl mMsg_Set_free_str_cl
/* 80475F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475F34  7C 08 03 A6 */	mtlr r0
/* 80475F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80475F3C  4E 80 00 20 */	blr 
