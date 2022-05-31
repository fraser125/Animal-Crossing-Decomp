lbl_803C9B9C:
/* 803C9B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9BA0  7C 08 02 A6 */	mflr r0
/* 803C9BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9BA8  4B FF FF CD */	bl mNW_AGB_to_GC_texture
/* 803C9BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9BB0  7C 08 03 A6 */	mtlr r0
/* 803C9BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9BB8  4E 80 00 20 */	blr 
