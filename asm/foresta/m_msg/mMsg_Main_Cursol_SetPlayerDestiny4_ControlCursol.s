lbl_803C4498:
/* 803C4498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C449C  7C 08 02 A6 */	mflr r0
/* 803C44A0  38 A0 00 04 */	li r5, 4
/* 803C44A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C44A8  4B FF FF 0D */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C44AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C44B0  7C 08 03 A6 */	mtlr r0
/* 803C44B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C44B8  4E 80 00 20 */	blr 
