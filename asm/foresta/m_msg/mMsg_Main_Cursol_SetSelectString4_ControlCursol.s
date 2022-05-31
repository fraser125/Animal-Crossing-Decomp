lbl_803C38A4:
/* 803C38A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C38A8  7C 08 02 A6 */	mflr r0
/* 803C38AC  38 A0 00 04 */	li r5, 4
/* 803C38B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C38B4  4B FF FD 9D */	bl mMsg_Main_Cursol_SetSelectString_ControlCursol
/* 803C38B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C38BC  7C 08 03 A6 */	mtlr r0
/* 803C38C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C38C4  4E 80 00 20 */	blr 
