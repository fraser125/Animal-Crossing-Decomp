lbl_803C400C:
/* 803C400C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4010  7C 08 02 A6 */	mflr r0
/* 803C4014  38 A0 00 0E */	li r5, 0xe
/* 803C4018  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C401C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4020  4B FF FC A5 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C4024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4028  7C 08 03 A6 */	mtlr r0
/* 803C402C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4030  4E 80 00 20 */	blr 
