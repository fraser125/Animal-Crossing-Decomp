lbl_803C3608:
/* 803C3608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C360C  7C 08 02 A6 */	mflr r0
/* 803C3610  38 A0 00 03 */	li r5, 3
/* 803C3614  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3618  4B FF FE F5 */	bl mMsg_Main_Cursol_SetNextMessageRamdomCommon_ControlCursol
/* 803C361C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3620  7C 08 03 A6 */	mtlr r0
/* 803C3624  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3628  4E 80 00 20 */	blr 
