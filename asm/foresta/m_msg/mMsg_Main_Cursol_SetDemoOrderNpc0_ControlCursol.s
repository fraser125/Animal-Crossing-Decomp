lbl_803C3278:
/* 803C3278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C327C  7C 08 02 A6 */	mflr r0
/* 803C3280  38 A0 00 04 */	li r5, 4
/* 803C3284  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3288  4B FF FF 59 */	bl mMsg_Main_Cursol_SetDemoOrder_ControlCursol
/* 803C328C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3290  7C 08 03 A6 */	mtlr r0
/* 803C3294  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3298  4E 80 00 20 */	blr 
