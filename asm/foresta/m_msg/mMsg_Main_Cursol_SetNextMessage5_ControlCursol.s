lbl_803C34E8:
/* 803C34E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C34EC  7C 08 02 A6 */	mflr r0
/* 803C34F0  38 A0 00 05 */	li r5, 5
/* 803C34F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C34F8  4B FF FE 71 */	bl mMsg_Main_Cursol_SetNextMessage_ControlCursol
/* 803C34FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3500  7C 08 03 A6 */	mtlr r0
/* 803C3504  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3508  4E 80 00 20 */	blr 
