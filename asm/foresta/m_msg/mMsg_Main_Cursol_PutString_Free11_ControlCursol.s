lbl_803C3F94:
/* 803C3F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3F98  7C 08 02 A6 */	mflr r0
/* 803C3F9C  38 A0 00 0B */	li r5, 0xb
/* 803C3FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3FA4  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3FA8  4B FF FD 1D */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3FB0  7C 08 03 A6 */	mtlr r0
/* 803C3FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3FB8  4E 80 00 20 */	blr 
