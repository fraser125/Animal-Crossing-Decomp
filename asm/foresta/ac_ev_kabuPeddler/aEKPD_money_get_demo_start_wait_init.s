lbl_80521A10:
/* 80521A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521A14  7C 08 02 A6 */	mflr r0
/* 80521A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80521A20  7C 9F 23 78 */	mr r31, r4
/* 80521A24  4B E9 DC 85 */	bl func_803BF6A8
/* 80521A28  4B E9 F3 19 */	bl mMsg_Set_LockContinue
/* 80521A2C  7F E3 FB 78 */	mr r3, r31
/* 80521A30  38 80 21 01 */	li r4, 0x2101
/* 80521A34  38 A0 00 07 */	li r5, 7
/* 80521A38  38 C0 00 00 */	li r6, 0
/* 80521A3C  38 E0 00 00 */	li r7, 0
/* 80521A40  4B EB 8A 21 */	bl mPlib_request_main_give_type1
/* 80521A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80521A4C  7C 08 03 A6 */	mtlr r0
/* 80521A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80521A54  4E 80 00 20 */	blr 
