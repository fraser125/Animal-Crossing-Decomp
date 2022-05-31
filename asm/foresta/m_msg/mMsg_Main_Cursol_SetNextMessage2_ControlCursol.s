lbl_803C347C:
/* 803C347C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3480  7C 08 02 A6 */	mflr r0
/* 803C3484  38 A0 00 02 */	li r5, 2
/* 803C3488  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C348C  4B FF FE DD */	bl mMsg_Main_Cursol_SetNextMessage_ControlCursol
/* 803C3490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3494  7C 08 03 A6 */	mtlr r0
/* 803C3498  38 21 00 10 */	addi r1, r1, 0x10
/* 803C349C  4E 80 00 20 */	blr 
