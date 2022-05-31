lbl_804FD3C0:
/* 804FD3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD3C4  7C 08 02 A6 */	mflr r0
/* 804FD3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD3CC  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804FD3D0  2C 00 00 00 */	cmpwi r0, 0
/* 804FD3D4  41 82 00 08 */	beq lbl_804FD3DC
/* 804FD3D8  4B FE 92 15 */	bl Player_actor_SearchAnimation_Walk
lbl_804FD3DC:
/* 804FD3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD3E0  7C 08 03 A6 */	mtlr r0
/* 804FD3E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD3E8  4E 80 00 20 */	blr 
