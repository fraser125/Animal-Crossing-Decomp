lbl_803C3E2C:
/* 803C3E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3E30  7C 08 02 A6 */	mflr r0
/* 803C3E34  38 A0 00 02 */	li r5, 2
/* 803C3E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3E3C  88 C3 04 01 */	lbz r6, 0x401(r3)
/* 803C3E40  4B FF FF 09 */	bl mMsg_Main_Cursol_PutString_Free_cl
/* 803C3E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3E48  7C 08 03 A6 */	mtlr r0
/* 803C3E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3E50  4E 80 00 20 */	blr 
