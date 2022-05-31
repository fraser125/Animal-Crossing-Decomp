lbl_803C38EC:
/* 803C38EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C38F0  7C 08 02 A6 */	mflr r0
/* 803C38F4  38 A0 00 06 */	li r5, 6
/* 803C38F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C38FC  4B FF FD 55 */	bl mMsg_Main_Cursol_SetSelectString_ControlCursol
/* 803C3900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3904  7C 08 03 A6 */	mtlr r0
/* 803C3908  38 21 00 10 */	addi r1, r1, 0x10
/* 803C390C  4E 80 00 20 */	blr 
