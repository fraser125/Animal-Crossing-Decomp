lbl_8051C800:
/* 8051C800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C804  7C 08 02 A6 */	mflr r0
/* 8051C808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C80C  4B EA 2E 9D */	bl func_803BF6A8
/* 8051C810  4B EA 45 31 */	bl mMsg_Set_LockContinue
/* 8051C814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C818  7C 08 03 A6 */	mtlr r0
/* 8051C81C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C820  4E 80 00 20 */	blr 
