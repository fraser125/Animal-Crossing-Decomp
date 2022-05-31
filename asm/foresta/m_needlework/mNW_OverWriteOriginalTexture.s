lbl_803C9CA8:
/* 803C9CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9CAC  7C 08 02 A6 */	mflr r0
/* 803C9CB0  28 04 00 00 */	cmplwi r4, 0
/* 803C9CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9CBC  41 82 00 24 */	beq lbl_803C9CE0
/* 803C9CC0  3B E3 00 20 */	addi r31, r3, 0x20
/* 803C9CC4  7C 83 23 78 */	mr r3, r4
/* 803C9CC8  7F E4 FB 78 */	mr r4, r31
/* 803C9CCC  38 A0 02 00 */	li r5, 0x200
/* 803C9CD0  4B C9 33 4D */	bl func_8005D01C
/* 803C9CD4  7F E3 FB 78 */	mr r3, r31
/* 803C9CD8  38 80 02 00 */	li r4, 0x200
/* 803C9CDC  4B CA FF 41 */	bl DCStoreRangeNoSync
lbl_803C9CE0:
/* 803C9CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9CE8  7C 08 03 A6 */	mtlr r0
/* 803C9CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9CF0  4E 80 00 20 */	blr 
