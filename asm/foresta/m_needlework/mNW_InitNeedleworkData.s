lbl_803C9B4C:
/* 803C9B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9B50  7C 08 02 A6 */	mflr r0
/* 803C9B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9B58  4B FF FE ED */	bl mNW_InitNeedleworkTexture
/* 803C9B5C  4B FF FF 49 */	bl mNW_InitNeedleworkPelatteNo
/* 803C9B60  4B FF FF 89 */	bl mNW_InitNeedleworkTextureName
/* 803C9B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9B68  7C 08 03 A6 */	mtlr r0
/* 803C9B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9B70  4E 80 00 20 */	blr 
