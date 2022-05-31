lbl_803C329C:
/* 803C329C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C32A0  7C 08 02 A6 */	mflr r0
/* 803C32A4  38 A0 00 05 */	li r5, 5
/* 803C32A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C32AC  4B FF FF 35 */	bl mMsg_Main_Cursol_SetDemoOrder_ControlCursol
/* 803C32B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C32B4  7C 08 03 A6 */	mtlr r0
/* 803C32B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C32BC  4E 80 00 20 */	blr 
