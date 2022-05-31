lbl_8062E34C:
/* 8062E34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E350  7C 08 02 A6 */	mflr r0
/* 8062E354  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E358  4B 9E 65 99 */	bl Na_SubGameStart
/* 8062E35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E360  7C 08 03 A6 */	mtlr r0
/* 8062E364  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E368  4E 80 00 20 */	blr 
