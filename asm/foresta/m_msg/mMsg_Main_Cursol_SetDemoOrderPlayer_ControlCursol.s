lbl_803C3254:
/* 803C3254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3258  7C 08 02 A6 */	mflr r0
/* 803C325C  38 A0 00 00 */	li r5, 0
/* 803C3260  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3264  4B FF FF 7D */	bl mMsg_Main_Cursol_SetDemoOrder_ControlCursol
/* 803C3268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C326C  7C 08 03 A6 */	mtlr r0
/* 803C3270  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3274  4E 80 00 20 */	blr 
