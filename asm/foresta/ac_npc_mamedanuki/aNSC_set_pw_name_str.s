lbl_8055A848:
/* 8055A848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A84C  7C 08 02 A6 */	mflr r0
/* 8055A850  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A858  93 C1 00 08 */	stw r30, 8(r1)
/* 8055A85C  7C 7E 1B 78 */	mr r30, r3
/* 8055A860  4B E6 4E 49 */	bl func_803BF6A8
/* 8055A864  38 BE 09 C8 */	addi r5, r30, 0x9c8
/* 8055A868  7C 7F 1B 78 */	mr r31, r3
/* 8055A86C  38 80 00 06 */	li r4, 6
/* 8055A870  38 C0 00 08 */	li r6, 8
/* 8055A874  4B E6 53 E1 */	bl mMsg_Set_free_str
/* 8055A878  7F E3 FB 78 */	mr r3, r31
/* 8055A87C  38 BE 09 D0 */	addi r5, r30, 0x9d0
/* 8055A880  38 80 00 07 */	li r4, 7
/* 8055A884  38 C0 00 08 */	li r6, 8
/* 8055A888  4B E6 53 CD */	bl mMsg_Set_free_str
/* 8055A88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A894  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055A898  7C 08 03 A6 */	mtlr r0
/* 8055A89C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A8A0  4E 80 00 20 */	blr 
