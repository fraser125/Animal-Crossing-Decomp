lbl_8057BCC4:
/* 8057BCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BCC8  7C 08 02 A6 */	mflr r0
/* 8057BCCC  38 60 00 04 */	li r3, 4
/* 8057BCD0  38 80 00 09 */	li r4, 9
/* 8057BCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BCD8  38 A0 00 00 */	li r5, 0
/* 8057BCDC  4B E1 C7 5D */	bl mDemo_Set_OrderValue
/* 8057BCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BCE4  7C 08 03 A6 */	mtlr r0
/* 8057BCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BCEC  4E 80 00 20 */	blr 
