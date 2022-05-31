lbl_805E1784:
/* 805E1784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E1788  7C 08 02 A6 */	mflr r0
/* 805E178C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E1790  4B FF FF 05 */	bl mIV_ChangeIndex_mIV_to_mPlib
/* 805E1794  4B DF 74 A1 */	bl mPlib_Get_BasicPlayerAnimeIndex_fromItemKind
/* 805E1798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E179C  7C 08 03 A6 */	mtlr r0
/* 805E17A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805E17A4  4E 80 00 20 */	blr 
