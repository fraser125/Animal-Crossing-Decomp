lbl_804E8EAC:
/* 804E8EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8EB0  7C 08 02 A6 */	mflr r0
/* 804E8EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8EB8  4B EB 13 E9 */	bl mDemo_End
/* 804E8EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8EC0  7C 08 03 A6 */	mtlr r0
/* 804E8EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8EC8  4E 80 00 20 */	blr 
