lbl_80528EE4:
/* 80528EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528EE8  7C 08 02 A6 */	mflr r0
/* 80528EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528EF0  4B E7 14 C5 */	bl mDemo_Set_ListenAble
/* 80528EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528EF8  38 60 00 01 */	li r3, 1
/* 80528EFC  7C 08 03 A6 */	mtlr r0
/* 80528F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80528F04  4E 80 00 20 */	blr 
