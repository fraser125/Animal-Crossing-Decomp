lbl_803C3DDC:
/* 803C3DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3DE0  7C 08 02 A6 */	mflr r0
/* 803C3DE4  38 A0 00 00 */	li r5, 0
/* 803C3DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3DEC  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3DF0  4B FF FE D5 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3DF8  7C 08 03 A6 */	mtlr r0
/* 803C3DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3E00  4E 80 00 20 */	blr 
