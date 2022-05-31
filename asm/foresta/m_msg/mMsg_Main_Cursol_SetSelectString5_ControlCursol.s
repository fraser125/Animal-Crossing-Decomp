lbl_803C38C8:
/* 803C38C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C38CC  7C 08 02 A6 */	mflr r0
/* 803C38D0  38 A0 00 05 */	li r5, 5
/* 803C38D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C38D8  4B FF FD 79 */	bl mMsg_Main_Cursol_SetSelectString_ControlCursol
/* 803C38DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C38E0  7C 08 03 A6 */	mtlr r0
/* 803C38E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C38E8  4E 80 00 20 */	blr 
