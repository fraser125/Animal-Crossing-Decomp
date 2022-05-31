lbl_803F33CC:
/* 803F33CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F33D0  7C 08 02 A6 */	mflr r0
/* 803F33D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F33D8  4B FF FF 1D */	bl func_803F32F4
/* 803F33DC  4B FF FF B5 */	bl mTM_set_season_com
/* 803F33E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F33E4  7C 08 03 A6 */	mtlr r0
/* 803F33E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F33EC  4E 80 00 20 */	blr 
