lbl_803BF740:
/* 803BF740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF744  7C 08 02 A6 */	mflr r0
/* 803BF748  38 80 00 06 */	li r4, 6
/* 803BF74C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF750  4B FF FF DD */	bl mMsg_Check_main_index
/* 803BF754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF758  7C 08 03 A6 */	mtlr r0
/* 803BF75C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF760  4E 80 00 20 */	blr 
