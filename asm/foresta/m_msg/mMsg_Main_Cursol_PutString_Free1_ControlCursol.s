lbl_803C3E04:
/* 803C3E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3E08  7C 08 02 A6 */	mflr r0
/* 803C3E0C  38 A0 00 01 */	li r5, 1
/* 803C3E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3E14  88 C3 04 00 */	lbz r6, 0x400(r3)
/* 803C3E18  4B FF FF 31 */	bl mMsg_Main_Cursol_PutString_Free_cl
/* 803C3E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3E20  7C 08 03 A6 */	mtlr r0
/* 803C3E24  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3E28  4E 80 00 20 */	blr 
