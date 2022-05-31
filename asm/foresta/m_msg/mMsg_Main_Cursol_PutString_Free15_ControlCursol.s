lbl_803C4034:
/* 803C4034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4038  7C 08 02 A6 */	mflr r0
/* 803C403C  38 A0 00 0F */	li r5, 0xf
/* 803C4040  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4044  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4048  4B FF FC 7D */	bl mMsg_Main_Cursol_PutString_Free
/* 803C404C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4050  7C 08 03 A6 */	mtlr r0
/* 803C4054  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4058  4E 80 00 20 */	blr 
