lbl_803C9BD0:
/* 803C9BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9BD4  7C 08 02 A6 */	mflr r0
/* 803C9BD8  38 A0 02 20 */	li r5, 0x220
/* 803C9BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9BE4  7C 7F 1B 78 */	mr r31, r3
/* 803C9BE8  7C 83 23 78 */	mr r3, r4
/* 803C9BEC  7F E4 FB 78 */	mr r4, r31
/* 803C9BF0  4B C9 34 2D */	bl func_8005D01C
/* 803C9BF4  38 7F 00 20 */	addi r3, r31, 0x20
/* 803C9BF8  38 80 02 00 */	li r4, 0x200
/* 803C9BFC  4B CB 00 21 */	bl DCStoreRangeNoSync
/* 803C9C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9C08  7C 08 03 A6 */	mtlr r0
/* 803C9C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9C10  4E 80 00 20 */	blr 
