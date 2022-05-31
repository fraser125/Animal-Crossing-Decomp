lbl_803C45E8:
/* 803C45E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C45EC  7C 08 02 A6 */	mflr r0
/* 803C45F0  38 A0 00 01 */	li r5, 1
/* 803C45F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C45F8  4B FF FF 79 */	bl mMsg_Main_Cursol_SetMessageContents_ControlCursol
/* 803C45FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4600  7C 08 03 A6 */	mtlr r0
/* 803C4604  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4608  4E 80 00 20 */	blr 
