lbl_803C4630:
/* 803C4630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4634  7C 08 02 A6 */	mflr r0
/* 803C4638  38 A0 00 03 */	li r5, 3
/* 803C463C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4640  4B FF FF 31 */	bl mMsg_Main_Cursol_SetMessageContents_ControlCursol
/* 803C4644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4648  7C 08 03 A6 */	mtlr r0
/* 803C464C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4650  4E 80 00 20 */	blr 
