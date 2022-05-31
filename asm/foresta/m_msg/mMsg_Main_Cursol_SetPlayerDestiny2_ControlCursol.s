lbl_803C4450:
/* 803C4450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4454  7C 08 02 A6 */	mflr r0
/* 803C4458  38 A0 00 02 */	li r5, 2
/* 803C445C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4460  4B FF FF 55 */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C4464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4468  7C 08 03 A6 */	mtlr r0
/* 803C446C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4470  4E 80 00 20 */	blr 
