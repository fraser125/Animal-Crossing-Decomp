lbl_803C3E54:
/* 803C3E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3E58  7C 08 02 A6 */	mflr r0
/* 803C3E5C  38 A0 00 03 */	li r5, 3
/* 803C3E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3E64  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3E68  4B FF FE 5D */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3E70  7C 08 03 A6 */	mtlr r0
/* 803C3E74  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3E78  4E 80 00 20 */	blr 
