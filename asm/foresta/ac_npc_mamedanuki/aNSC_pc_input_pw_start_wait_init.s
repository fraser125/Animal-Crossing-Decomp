lbl_8055EBDC:
/* 8055EBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EBE0  7C 08 02 A6 */	mflr r0
/* 8055EBE4  38 80 00 1C */	li r4, 0x1c
/* 8055EBE8  38 63 09 D8 */	addi r3, r3, 0x9d8
/* 8055EBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EBF0  38 A0 00 20 */	li r5, 0x20
/* 8055EBF4  4B E5 BE 55 */	bl mem_clear
/* 8055EBF8  38 60 00 04 */	li r3, 4
/* 8055EBFC  38 80 00 09 */	li r4, 9
/* 8055EC00  38 A0 00 00 */	li r5, 0
/* 8055EC04  4B E3 98 35 */	bl mDemo_Set_OrderValue
/* 8055EC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EC0C  7C 08 03 A6 */	mtlr r0
/* 8055EC10  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EC14  4E 80 00 20 */	blr 
