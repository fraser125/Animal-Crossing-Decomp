lbl_803C3880:
/* 803C3880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3884  7C 08 02 A6 */	mflr r0
/* 803C3888  38 A0 00 03 */	li r5, 3
/* 803C388C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3890  4B FF FD C1 */	bl mMsg_Main_Cursol_SetSelectString_ControlCursol
/* 803C3894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3898  7C 08 03 A6 */	mtlr r0
/* 803C389C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C38A0  4E 80 00 20 */	blr 
