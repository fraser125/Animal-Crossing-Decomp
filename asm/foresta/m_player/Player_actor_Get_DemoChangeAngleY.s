lbl_804D8094:
/* 804D8094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D8098  7C 08 02 A6 */	mflr r0
/* 804D809C  38 60 00 00 */	li r3, 0
/* 804D80A0  38 80 00 05 */	li r4, 5
/* 804D80A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D80A8  4B EC 03 D5 */	bl mDemo_Get_OrderValue
/* 804D80AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D80B0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804D80B4  7C 08 03 A6 */	mtlr r0
/* 804D80B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D80BC  4E 80 00 20 */	blr 
