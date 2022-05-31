lbl_803C454C:
/* 803C454C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4550  7C 08 02 A6 */	mflr r0
/* 803C4554  38 A0 00 09 */	li r5, 9
/* 803C4558  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C455C  4B FF FE 59 */	bl mMsg_Main_Cursol_SetPlayerDestiny_ControlCursol
/* 803C4560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4564  7C 08 03 A6 */	mtlr r0
/* 803C4568  38 21 00 10 */	addi r1, r1, 0x10
/* 803C456C  4E 80 00 20 */	blr 
