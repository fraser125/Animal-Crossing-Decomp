lbl_803C3ECC:
/* 803C3ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3ED0  7C 08 02 A6 */	mflr r0
/* 803C3ED4  38 A0 00 06 */	li r5, 6
/* 803C3ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3EDC  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3EE0  4B FF FD E5 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3EE8  7C 08 03 A6 */	mtlr r0
/* 803C3EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3EF0  4E 80 00 20 */	blr 
