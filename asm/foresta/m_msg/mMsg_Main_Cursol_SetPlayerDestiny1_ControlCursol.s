lbl_803C442C:
/* 803C442C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4430  7C 08 02 A6 */	mflr r0
/* 803C4434  38 A0 00 01 */	li r5, 1
/* 803C4438  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C443C  4B FF FF 79 */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C4440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4444  7C 08 03 A6 */	mtlr r0
/* 803C4448  38 21 00 10 */	addi r1, r1, 0x10
/* 803C444C  4E 80 00 20 */	blr 
