lbl_80527ED0:
/* 80527ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527ED4  7C 08 02 A6 */	mflr r0
/* 80527ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527EDC  4B E7 24 D9 */	bl mDemo_Set_ListenAble
/* 80527EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527EE4  38 60 00 01 */	li r3, 1
/* 80527EE8  7C 08 03 A6 */	mtlr r0
/* 80527EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80527EF0  4E 80 00 20 */	blr 
