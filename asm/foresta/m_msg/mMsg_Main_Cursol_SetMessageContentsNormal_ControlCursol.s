lbl_803C45C4:
/* 803C45C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C45C8  7C 08 02 A6 */	mflr r0
/* 803C45CC  38 A0 00 00 */	li r5, 0
/* 803C45D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C45D4  4B FF FF 9D */	bl mMsg_Main_Cursol_SetMessageContents_ControlCursol
/* 803C45D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C45DC  7C 08 03 A6 */	mtlr r0
/* 803C45E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C45E4  4E 80 00 20 */	blr 
