lbl_803C3FBC:
/* 803C3FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3FC0  7C 08 02 A6 */	mflr r0
/* 803C3FC4  38 A0 00 0C */	li r5, 0xc
/* 803C3FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3FCC  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3FD0  4B FF FC F5 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3FD8  7C 08 03 A6 */	mtlr r0
/* 803C3FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3FE0  4E 80 00 20 */	blr 
