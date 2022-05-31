lbl_8056D7F8:
/* 8056D7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D7FC  7C 08 02 A6 */	mflr r0
/* 8056D800  38 60 00 04 */	li r3, 4
/* 8056D804  38 80 00 01 */	li r4, 1
/* 8056D808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D80C  38 A0 00 00 */	li r5, 0
/* 8056D810  4B E2 AC 29 */	bl mDemo_Set_OrderValue
/* 8056D814  38 60 00 04 */	li r3, 4
/* 8056D818  38 80 00 09 */	li r4, 9
/* 8056D81C  38 A0 00 00 */	li r5, 0
/* 8056D820  4B E2 AC 19 */	bl mDemo_Set_OrderValue
/* 8056D824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D828  7C 08 03 A6 */	mtlr r0
/* 8056D82C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D830  4E 80 00 20 */	blr 
