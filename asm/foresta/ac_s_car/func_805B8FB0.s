lbl_805B8FB0:
/* 805B8FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8FB4  7C 08 02 A6 */	mflr r0
/* 805B8FB8  38 80 00 00 */	li r4, 0
/* 805B8FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8FC0  48 00 00 79 */	bl func_805B9038
/* 805B8FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B8FC8  7C 08 03 A6 */	mtlr r0
/* 805B8FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 805B8FD0  4E 80 00 20 */	blr 
