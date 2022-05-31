lbl_804D7F58:
/* 804D7F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7F5C  7C 08 02 A6 */	mflr r0
/* 804D7F60  38 60 00 00 */	li r3, 0
/* 804D7F64  38 80 00 01 */	li r4, 1
/* 804D7F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7F6C  4B EC 05 11 */	bl mDemo_Get_OrderValue
/* 804D7F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7F74  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804D7F78  7C 08 03 A6 */	mtlr r0
/* 804D7F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7F80  4E 80 00 20 */	blr 
