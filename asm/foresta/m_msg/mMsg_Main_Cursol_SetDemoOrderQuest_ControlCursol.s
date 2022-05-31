lbl_803C32E4:
/* 803C32E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C32E8  7C 08 02 A6 */	mflr r0
/* 803C32EC  38 A0 00 09 */	li r5, 9
/* 803C32F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C32F4  4B FF FE ED */	bl mMsg_Main_Cursol_SetDemoOrder_ControlCursol
/* 803C32F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C32FC  7C 08 03 A6 */	mtlr r0
/* 803C3300  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3304  4E 80 00 20 */	blr 
