lbl_803C44BC:
/* 803C44BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C44C0  7C 08 02 A6 */	mflr r0
/* 803C44C4  38 A0 00 05 */	li r5, 5
/* 803C44C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C44CC  4B FF FE E9 */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C44D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C44D4  7C 08 03 A6 */	mtlr r0
/* 803C44D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C44DC  4E 80 00 20 */	blr 
