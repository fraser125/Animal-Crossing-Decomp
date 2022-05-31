lbl_805E17CC:
/* 805E17CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E17D0  7C 08 02 A6 */	mflr r0
/* 805E17D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E17D8  4B FF FE BD */	bl mIV_ChangeIndex_mIV_to_mPlib
/* 805E17DC  4B DF 74 59 */	bl mPlib_Get_BasicPlayerAnimeIndex_fromItemKind
/* 805E17E0  4B DF 74 7D */	bl mPlib_Get_BasicPartTableIndex_fromAnimeIndex
/* 805E17E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E17E8  7C 08 03 A6 */	mtlr r0
/* 805E17EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805E17F0  4E 80 00 20 */	blr 
