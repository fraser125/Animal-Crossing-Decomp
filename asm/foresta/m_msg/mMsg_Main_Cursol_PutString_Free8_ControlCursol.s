lbl_803C3F1C:
/* 803C3F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3F20  7C 08 02 A6 */	mflr r0
/* 803C3F24  38 A0 00 08 */	li r5, 8
/* 803C3F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3F2C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3F30  4B FF FD 95 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3F38  7C 08 03 A6 */	mtlr r0
/* 803C3F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3F40  4E 80 00 20 */	blr 
