lbl_804DA530:
/* 804DA530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA534  7C 08 02 A6 */	mflr r0
/* 804DA538  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA53C  4B F0 20 BD */	bl mPlib_Check_scoop_after
/* 804DA540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA544  7C 08 03 A6 */	mtlr r0
/* 804DA548  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA54C  4E 80 00 20 */	blr 
