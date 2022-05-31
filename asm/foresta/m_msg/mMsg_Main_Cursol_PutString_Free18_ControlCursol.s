lbl_803C40AC:
/* 803C40AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C40B0  7C 08 02 A6 */	mflr r0
/* 803C40B4  38 A0 00 12 */	li r5, 0x12
/* 803C40B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C40BC  80 84 00 00 */	lwz r4, 0(r4)
/* 803C40C0  4B FF FC 05 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C40C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C40C8  7C 08 03 A6 */	mtlr r0
/* 803C40CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C40D0  4E 80 00 20 */	blr 
