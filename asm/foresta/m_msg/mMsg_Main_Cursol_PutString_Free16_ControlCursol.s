lbl_803C405C:
/* 803C405C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4060  7C 08 02 A6 */	mflr r0
/* 803C4064  38 A0 00 10 */	li r5, 0x10
/* 803C4068  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C406C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4070  4B FF FC 55 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C4074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4078  7C 08 03 A6 */	mtlr r0
/* 803C407C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4080  4E 80 00 20 */	blr 
