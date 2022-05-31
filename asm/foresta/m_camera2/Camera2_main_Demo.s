lbl_80380BD0:
/* 80380BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380BD4  7C 08 02 A6 */	mflr r0
/* 80380BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80380BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80380BE0  7C 7F 1B 78 */	mr r31, r3
/* 80380BE4  4B FF FF 95 */	bl Camera2_SetPos_Demo
/* 80380BE8  7F E3 FB 78 */	mr r3, r31
/* 80380BEC  48 00 26 AD */	bl Camera2_change_main_index
/* 80380BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80380BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80380BF8  7C 08 03 A6 */	mtlr r0
/* 80380BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80380C00  4E 80 00 20 */	blr 
