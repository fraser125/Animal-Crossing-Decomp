lbl_803C01C0:
/* 803C01C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C01C4  7C 08 02 A6 */	mflr r0
/* 803C01C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C01CC  80 83 04 20 */	lwz r4, 0x420(r3)
/* 803C01D0  4B FF FF 49 */	bl mMsg_Check_LastCode
/* 803C01D4  30 03 FF FF */	addic r0, r3, -1
/* 803C01D8  7C 60 19 10 */	subfe r3, r0, r3
/* 803C01DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C01E0  7C 08 03 A6 */	mtlr r0
/* 803C01E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C01E8  4E 80 00 20 */	blr 
