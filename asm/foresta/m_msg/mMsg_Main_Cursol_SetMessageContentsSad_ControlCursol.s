lbl_803C460C:
/* 803C460C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4610  7C 08 02 A6 */	mflr r0
/* 803C4614  38 A0 00 02 */	li r5, 2
/* 803C4618  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C461C  4B FF FF 55 */	bl mMsg_Main_Cursol_SetMessageContents_ControlCursol
/* 803C4620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4624  7C 08 03 A6 */	mtlr r0
/* 803C4628  38 21 00 10 */	addi r1, r1, 0x10
/* 803C462C  4E 80 00 20 */	blr 
