lbl_8040D3D4:
/* 8040D3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040D3D8  7C 08 02 A6 */	mflr r0
/* 8040D3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040D3E0  80 83 02 D4 */	lwz r4, 0x2d4(r3)
/* 8040D3E4  38 04 FF C0 */	addi r0, r4, -64
/* 8040D3E8  90 03 02 D4 */	stw r0, 0x2d4(r3)
/* 8040D3EC  7C 03 03 78 */	mr r3, r0
/* 8040D3F0  4B FF FF B5 */	bl _Matrix_to_Mtx
/* 8040D3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040D3F8  7C 08 03 A6 */	mtlr r0
/* 8040D3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8040D400  4E 80 00 20 */	blr 
