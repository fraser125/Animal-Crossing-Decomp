lbl_803A62A8:
/* 803A62A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A62AC  7C 08 02 A6 */	mflr r0
/* 803A62B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 803A62B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A62B8  38 61 00 0C */	addi r3, r1, 0xc
/* 803A62BC  38 81 00 08 */	addi r4, r1, 8
/* 803A62C0  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 803A62C4  48 00 01 3D */	bl mFI_BlockKind2BkNum
/* 803A62C8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A62CC  80 81 00 08 */	lwz r4, 8(r1)
/* 803A62D0  4B FF FF 15 */	bl mFI_BkNum2BlockType
/* 803A62D4  4B FF FF 91 */	bl mFI_GetPuleTypeIdx
/* 803A62D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A62DC  7C 08 03 A6 */	mtlr r0
/* 803A62E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A62E4  4E 80 00 20 */	blr 
