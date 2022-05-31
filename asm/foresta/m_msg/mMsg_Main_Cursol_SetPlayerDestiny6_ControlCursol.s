lbl_803C44E0:
/* 803C44E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C44E4  7C 08 02 A6 */	mflr r0
/* 803C44E8  38 A0 00 06 */	li r5, 6
/* 803C44EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C44F0  4B FF FE C5 */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C44F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C44F8  7C 08 03 A6 */	mtlr r0
/* 803C44FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4500  4E 80 00 20 */	blr 
