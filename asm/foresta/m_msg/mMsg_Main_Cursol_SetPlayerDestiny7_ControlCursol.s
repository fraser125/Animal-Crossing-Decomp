lbl_803C4504:
/* 803C4504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4508  7C 08 02 A6 */	mflr r0
/* 803C450C  38 A0 00 07 */	li r5, 7
/* 803C4510  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4514  4B FF FE A1 */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C4518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C451C  7C 08 03 A6 */	mtlr r0
/* 803C4520  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4524  4E 80 00 20 */	blr 
