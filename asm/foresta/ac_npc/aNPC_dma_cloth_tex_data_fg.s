lbl_8052C1CC:
/* 8052C1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C1D0  7C 08 02 A6 */	mflr r0
/* 8052C1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C1DC  7C 7F 1B 78 */	mr r31, r3
/* 8052C1E0  4B FF FF 25 */	bl aNPC_getP_cloth_tex_rom
/* 8052C1E4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8052C1E8  38 A0 02 00 */	li r5, 0x200
/* 8052C1EC  4B AD AA 89 */	bl _JW_GetResourceAram
/* 8052C1F0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8052C1F4  38 80 02 00 */	li r4, 0x200
/* 8052C1F8  4B B4 DA 25 */	bl DCStoreRangeNoSync
/* 8052C1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C204  7C 08 03 A6 */	mtlr r0
/* 8052C208  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C20C  4E 80 00 20 */	blr 
