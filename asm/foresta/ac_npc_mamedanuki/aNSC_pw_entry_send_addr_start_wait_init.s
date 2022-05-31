lbl_8055EAE8:
/* 8055EAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EAEC  7C 08 02 A6 */	mflr r0
/* 8055EAF0  38 60 00 04 */	li r3, 4
/* 8055EAF4  38 80 00 09 */	li r4, 9
/* 8055EAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EAFC  38 A0 00 00 */	li r5, 0
/* 8055EB00  4B E3 99 39 */	bl mDemo_Set_OrderValue
/* 8055EB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EB08  7C 08 03 A6 */	mtlr r0
/* 8055EB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EB10  4E 80 00 20 */	blr 
