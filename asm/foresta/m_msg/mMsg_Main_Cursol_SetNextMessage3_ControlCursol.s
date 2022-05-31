lbl_803C34A0:
/* 803C34A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C34A4  7C 08 02 A6 */	mflr r0
/* 803C34A8  38 A0 00 03 */	li r5, 3
/* 803C34AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C34B0  4B FF FE B9 */	bl mMsg_Main_Cursol_SetNextMessage_ControlCursol
/* 803C34B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C34B8  7C 08 03 A6 */	mtlr r0
/* 803C34BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C34C0  4E 80 00 20 */	blr 
