lbl_80585CD8:
/* 80585CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585CDC  7C 08 02 A6 */	mflr r0
/* 80585CE0  38 60 00 04 */	li r3, 4
/* 80585CE4  38 80 00 09 */	li r4, 9
/* 80585CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585CEC  38 A0 00 00 */	li r5, 0
/* 80585CF0  4B E1 27 49 */	bl mDemo_Set_OrderValue
/* 80585CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585CF8  7C 08 03 A6 */	mtlr r0
/* 80585CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80585D00  4E 80 00 20 */	blr 
