lbl_803C653C:
/* 803C653C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C6540  7C 08 02 A6 */	mflr r0
/* 803C6544  38 A0 00 00 */	li r5, 0
/* 803C6548  38 C0 00 00 */	li r6, 0
/* 803C654C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C6550  4B FF FF 41 */	bl mMsm_Idx2SetRemailInfo
/* 803C6554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C6558  7C 08 03 A6 */	mtlr r0
/* 803C655C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C6560  4E 80 00 20 */	blr 
