lbl_803C3F44:
/* 803C3F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3F48  7C 08 02 A6 */	mflr r0
/* 803C3F4C  38 A0 00 09 */	li r5, 9
/* 803C3F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3F54  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3F58  4B FF FD 6D */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3F60  7C 08 03 A6 */	mtlr r0
/* 803C3F64  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3F68  4E 80 00 20 */	blr 
