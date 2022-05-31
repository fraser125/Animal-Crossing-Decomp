lbl_803C362C:
/* 803C362C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3630  7C 08 02 A6 */	mflr r0
/* 803C3634  38 A0 00 04 */	li r5, 4
/* 803C3638  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C363C  4B FF FE D1 */	bl mMsg_Main_Cursol_SetNextMessageRamdomCommon_ControlCursol
/* 803C3640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3644  7C 08 03 A6 */	mtlr r0
/* 803C3648  38 21 00 10 */	addi r1, r1, 0x10
/* 803C364C  4E 80 00 20 */	blr 
