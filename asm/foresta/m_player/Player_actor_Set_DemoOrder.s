lbl_804D7F84:
/* 804D7F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7F88  7C 08 02 A6 */	mflr r0
/* 804D7F8C  7C 65 1B 78 */	mr r5, r3
/* 804D7F90  38 60 00 00 */	li r3, 0
/* 804D7F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7F98  38 80 00 01 */	li r4, 1
/* 804D7F9C  4B EC 04 9D */	bl mDemo_Set_OrderValue
/* 804D7FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7FA4  7C 08 03 A6 */	mtlr r0
/* 804D7FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7FAC  4E 80 00 20 */	blr 
