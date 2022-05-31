lbl_8055E5E0:
/* 8055E5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E5E4  7C 08 02 A6 */	mflr r0
/* 8055E5E8  38 60 00 04 */	li r3, 4
/* 8055E5EC  38 80 00 09 */	li r4, 9
/* 8055E5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E5F4  38 A0 00 00 */	li r5, 0
/* 8055E5F8  4B E3 9E 41 */	bl mDemo_Set_OrderValue
/* 8055E5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E600  7C 08 03 A6 */	mtlr r0
/* 8055E604  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E608  4E 80 00 20 */	blr 
