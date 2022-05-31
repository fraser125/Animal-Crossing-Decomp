lbl_8051AA8C:
/* 8051AA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051AA90  7C 08 02 A6 */	mflr r0
/* 8051AA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051AA98  4B EC DC 09 */	bl mSP_ItemNo2ItemPrice
/* 8051AA9C  54 65 10 3A */	slwi r5, r3, 2
/* 8051AAA0  38 61 00 08 */	addi r3, r1, 8
/* 8051AAA4  38 80 00 07 */	li r4, 7
/* 8051AAA8  38 C0 00 06 */	li r6, 6
/* 8051AAAC  38 E0 00 01 */	li r7, 1
/* 8051AAB0  39 00 00 00 */	li r8, 0
/* 8051AAB4  39 20 00 01 */	li r9, 1
/* 8051AAB8  4B E9 49 C1 */	bl mFont_UnintToString
/* 8051AABC  4B EA 4B ED */	bl func_803BF6A8
/* 8051AAC0  38 A1 00 08 */	addi r5, r1, 8
/* 8051AAC4  38 80 00 00 */	li r4, 0
/* 8051AAC8  38 C0 00 07 */	li r6, 7
/* 8051AACC  4B EA 51 89 */	bl mMsg_Set_free_str
/* 8051AAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051AAD4  7C 08 03 A6 */	mtlr r0
/* 8051AAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051AADC  4E 80 00 20 */	blr 
