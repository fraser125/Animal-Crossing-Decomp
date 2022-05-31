lbl_803C5B30:
/* 803C5B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C5B34  7C 08 02 A6 */	mflr r0
/* 803C5B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C5B3C  48 04 66 D9 */	bl Matrix_pull
/* 803C5B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5B44  7C 08 03 A6 */	mtlr r0
/* 803C5B48  38 21 00 10 */	addi r1, r1, 0x10
/* 803C5B4C  4E 80 00 20 */	blr 
