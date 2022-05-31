lbl_803C4474:
/* 803C4474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4478  7C 08 02 A6 */	mflr r0
/* 803C447C  38 A0 00 03 */	li r5, 3
/* 803C4480  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4484  4B FF FF 31 */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C4488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C448C  7C 08 03 A6 */	mtlr r0
/* 803C4490  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4494  4E 80 00 20 */	blr 
