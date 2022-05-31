lbl_803C4084:
/* 803C4084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4088  7C 08 02 A6 */	mflr r0
/* 803C408C  38 A0 00 11 */	li r5, 0x11
/* 803C4090  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4094  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4098  4B FF FC 2D */	bl mMsg_Main_Cursol_PutString_Free
/* 803C409C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C40A0  7C 08 03 A6 */	mtlr r0
/* 803C40A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C40A8  4E 80 00 20 */	blr 
