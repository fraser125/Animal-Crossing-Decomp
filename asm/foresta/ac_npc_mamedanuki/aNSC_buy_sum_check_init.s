lbl_8055E698:
/* 8055E698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E69C  7C 08 02 A6 */	mflr r0
/* 8055E6A0  38 60 00 04 */	li r3, 4
/* 8055E6A4  38 80 00 09 */	li r4, 9
/* 8055E6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E6AC  38 A0 00 00 */	li r5, 0
/* 8055E6B0  4B E3 9D 89 */	bl mDemo_Set_OrderValue
/* 8055E6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E6B8  7C 08 03 A6 */	mtlr r0
/* 8055E6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E6C0  4E 80 00 20 */	blr 
