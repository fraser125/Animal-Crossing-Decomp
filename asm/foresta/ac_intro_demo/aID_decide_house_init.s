lbl_8042B3D8:
/* 8042B3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B3DC  7C 08 02 A6 */	mflr r0
/* 8042B3E0  38 60 00 01 */	li r3, 1
/* 8042B3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B3E8  4B FA EB 45 */	bl mPlib_Set_unable_wade
/* 8042B3EC  38 60 00 01 */	li r3, 1
/* 8042B3F0  4B F6 6C B1 */	bl mCoBG_ChangeBlockBgCheckMode
/* 8042B3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B3F8  7C 08 03 A6 */	mtlr r0
/* 8042B3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B400  4E 80 00 20 */	blr 
