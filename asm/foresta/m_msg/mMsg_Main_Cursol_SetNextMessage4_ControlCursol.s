lbl_803C34C4:
/* 803C34C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C34C8  7C 08 02 A6 */	mflr r0
/* 803C34CC  38 A0 00 04 */	li r5, 4
/* 803C34D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C34D4  4B FF FE 95 */	bl mMsg_Main_Cursol_SetNextMessage_ControlCursol
/* 803C34D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C34DC  7C 08 03 A6 */	mtlr r0
/* 803C34E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C34E4  4E 80 00 20 */	blr 
