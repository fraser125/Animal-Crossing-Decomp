lbl_803C3458:
/* 803C3458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C345C  7C 08 02 A6 */	mflr r0
/* 803C3460  38 A0 00 01 */	li r5, 1
/* 803C3464  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3468  4B FF FF 01 */	bl mMsg_Main_Cursol_SetNextMessage_ControlCursol
/* 803C346C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3470  7C 08 03 A6 */	mtlr r0
/* 803C3474  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3478  4E 80 00 20 */	blr 
