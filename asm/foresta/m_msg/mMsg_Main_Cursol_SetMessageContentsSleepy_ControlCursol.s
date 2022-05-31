lbl_803C4654:
/* 803C4654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4658  7C 08 02 A6 */	mflr r0
/* 803C465C  38 A0 00 04 */	li r5, 4
/* 803C4660  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4664  4B FF FF 0D */	bl mMsg_Main_Cursol_SetMessageContents_ControlCursol
/* 803C4668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C466C  7C 08 03 A6 */	mtlr r0
/* 803C4670  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4674  4E 80 00 20 */	blr 
