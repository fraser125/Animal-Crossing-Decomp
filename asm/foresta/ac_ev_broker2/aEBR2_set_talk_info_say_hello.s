lbl_8051B644:
/* 8051B644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B648  7C 08 02 A6 */	mflr r0
/* 8051B64C  38 60 07 8B */	li r3, 0x78b
/* 8051B650  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B654  4B E7 CE C1 */	bl mDemo_Set_msg_num
/* 8051B658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B65C  7C 08 03 A6 */	mtlr r0
/* 8051B660  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B664  4E 80 00 20 */	blr 
