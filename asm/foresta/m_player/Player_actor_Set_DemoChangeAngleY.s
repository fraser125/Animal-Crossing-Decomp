lbl_804D80C0:
/* 804D80C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D80C4  7C 08 02 A6 */	mflr r0
/* 804D80C8  7C 65 1B 78 */	mr r5, r3
/* 804D80CC  38 60 00 00 */	li r3, 0
/* 804D80D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D80D4  38 80 00 05 */	li r4, 5
/* 804D80D8  4B EC 03 61 */	bl mDemo_Set_OrderValue
/* 804D80DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D80E0  7C 08 03 A6 */	mtlr r0
/* 804D80E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D80E8  4E 80 00 20 */	blr 
