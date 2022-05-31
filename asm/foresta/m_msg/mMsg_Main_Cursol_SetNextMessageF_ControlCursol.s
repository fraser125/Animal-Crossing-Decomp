lbl_803C3410:
/* 803C3410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3414  7C 08 02 A6 */	mflr r0
/* 803C3418  38 A0 00 FF */	li r5, 0xff
/* 803C341C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3420  4B FF FF 49 */	bl mMsg_Main_Cursol_SetNextMessage_ControlCursol
/* 803C3424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3428  7C 08 03 A6 */	mtlr r0
/* 803C342C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3430  4E 80 00 20 */	blr 
