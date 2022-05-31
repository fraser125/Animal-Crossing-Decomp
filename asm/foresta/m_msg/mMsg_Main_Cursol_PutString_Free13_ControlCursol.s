lbl_803C3FE4:
/* 803C3FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3FE8  7C 08 02 A6 */	mflr r0
/* 803C3FEC  38 A0 00 0D */	li r5, 0xd
/* 803C3FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3FF4  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3FF8  4B FF FC CD */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4000  7C 08 03 A6 */	mtlr r0
/* 803C4004  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4008  4E 80 00 20 */	blr 
