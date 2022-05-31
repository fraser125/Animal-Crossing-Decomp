lbl_803C35E4:
/* 803C35E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C35E8  7C 08 02 A6 */	mflr r0
/* 803C35EC  38 A0 00 02 */	li r5, 2
/* 803C35F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C35F4  4B FF FF 19 */	bl mMsg_Main_Cursol_SetNextMessageRamdomCommon_ControlCursol
/* 803C35F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C35FC  7C 08 03 A6 */	mtlr r0
/* 803C3600  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3604  4E 80 00 20 */	blr 
