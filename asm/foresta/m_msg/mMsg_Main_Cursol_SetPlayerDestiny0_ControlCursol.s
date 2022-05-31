lbl_803C4408:
/* 803C4408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C440C  7C 08 02 A6 */	mflr r0
/* 803C4410  38 A0 00 00 */	li r5, 0
/* 803C4414  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4418  4B FF FF 9D */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C441C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4420  7C 08 03 A6 */	mtlr r0
/* 803C4424  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4428  4E 80 00 20 */	blr 
