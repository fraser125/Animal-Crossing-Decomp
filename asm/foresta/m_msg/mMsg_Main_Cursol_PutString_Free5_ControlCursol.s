lbl_803C3EA4:
/* 803C3EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3EA8  7C 08 02 A6 */	mflr r0
/* 803C3EAC  38 A0 00 05 */	li r5, 5
/* 803C3EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3EB4  88 C3 04 02 */	lbz r6, 0x402(r3)
/* 803C3EB8  4B FF FE 91 */	bl mMsg_Main_Cursol_PutString_Free_cl
/* 803C3EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3EC0  7C 08 03 A6 */	mtlr r0
/* 803C3EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3EC8  4E 80 00 20 */	blr 
