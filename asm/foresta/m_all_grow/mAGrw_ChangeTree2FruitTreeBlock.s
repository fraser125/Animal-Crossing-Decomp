lbl_80373E8C:
/* 80373E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80373E90  7C 08 02 A6 */	mflr r0
/* 80373E94  38 A0 08 04 */	li r5, 0x804
/* 80373E98  38 C0 00 01 */	li r6, 1
/* 80373E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80373EA0  4B FF FF 71 */	bl mAGrw_ChangeTree2OtherBlock
/* 80373EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80373EA8  7C 08 03 A6 */	mtlr r0
/* 80373EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80373EB0  4E 80 00 20 */	blr 
