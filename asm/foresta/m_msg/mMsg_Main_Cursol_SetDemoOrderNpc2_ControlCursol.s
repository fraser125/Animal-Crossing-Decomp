lbl_803C32C0:
/* 803C32C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C32C4  7C 08 02 A6 */	mflr r0
/* 803C32C8  38 A0 00 06 */	li r5, 6
/* 803C32CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C32D0  4B FF FF 11 */	bl mMsg_Main_Cursol_SetDemoOrder_ControlCursol
/* 803C32D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C32D8  7C 08 03 A6 */	mtlr r0
/* 803C32DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C32E0  4E 80 00 20 */	blr 
