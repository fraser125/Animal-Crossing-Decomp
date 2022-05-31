lbl_803E9FD4:
/* 803E9FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E9FD8  7C 08 02 A6 */	mflr r0
/* 803E9FDC  38 60 00 00 */	li r3, 0
/* 803E9FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E9FE4  4B FF F1 01 */	bl mSP_MakeLotteryList
/* 803E9FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E9FEC  7C 08 03 A6 */	mtlr r0
/* 803E9FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E9FF4  4E 80 00 20 */	blr 
