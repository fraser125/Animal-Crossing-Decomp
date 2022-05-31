lbl_80570868:
/* 80570868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057086C  7C 08 02 A6 */	mflr r0
/* 80570870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570874  4B E7 32 F5 */	bl mQst_GetFirstJobData
/* 80570878  4B E7 36 39 */	bl mQst_SetFirstJobHello
/* 8057087C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570880  7C 08 03 A6 */	mtlr r0
/* 80570884  38 21 00 10 */	addi r1, r1, 0x10
/* 80570888  4E 80 00 20 */	blr 
