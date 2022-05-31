lbl_803C3EF4:
/* 803C3EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3EF8  7C 08 02 A6 */	mflr r0
/* 803C3EFC  38 A0 00 07 */	li r5, 7
/* 803C3F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3F04  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3F08  4B FF FD BD */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3F10  7C 08 03 A6 */	mtlr r0
/* 803C3F14  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3F18  4E 80 00 20 */	blr 
