lbl_803C4528:
/* 803C4528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C452C  7C 08 02 A6 */	mflr r0
/* 803C4530  38 A0 00 08 */	li r5, 8
/* 803C4534  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4538  4B FF FE 7D */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C453C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4540  7C 08 03 A6 */	mtlr r0
/* 803C4544  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4548  4E 80 00 20 */	blr 
