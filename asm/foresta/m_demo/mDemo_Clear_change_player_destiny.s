lbl_803985F8:
/* 803985F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803985FC  7C 08 02 A6 */	mflr r0
/* 80398600  38 60 FF FF */	li r3, -1
/* 80398604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80398608  4B FF FF C5 */	bl mDemo_Set_change_player_destiny
/* 8039860C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80398610  7C 08 03 A6 */	mtlr r0
/* 80398614  38 21 00 10 */	addi r1, r1, 0x10
/* 80398618  4E 80 00 20 */	blr 
