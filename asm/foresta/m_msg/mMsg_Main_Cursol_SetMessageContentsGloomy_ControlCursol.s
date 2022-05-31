lbl_803C4CC8:
/* 803C4CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4CCC  7C 08 02 A6 */	mflr r0
/* 803C4CD0  38 A0 00 05 */	li r5, 5
/* 803C4CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4CD8  4B FF F8 99 */	bl mMsg_Main_Cursol_SetMessageContents_ControlCursol
/* 803C4CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4CE0  7C 08 03 A6 */	mtlr r0
/* 803C4CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4CE8  4E 80 00 20 */	blr 
