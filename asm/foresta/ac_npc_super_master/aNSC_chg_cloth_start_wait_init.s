lbl_80585CB4:
/* 80585CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585CB8  7C 08 02 A6 */	mflr r0
/* 80585CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585CC0  4B E3 99 E9 */	bl func_803BF6A8
/* 80585CC4  4B E3 B0 7D */	bl mMsg_Set_LockContinue
/* 80585CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585CCC  7C 08 03 A6 */	mtlr r0
/* 80585CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80585CD4  4E 80 00 20 */	blr 
