lbl_8038C2C8:
/* 8038C2C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C2CC  7C 08 02 A6 */	mflr r0
/* 8038C2D0  3C E0 80 65 */	lis r7, attron_make_slate_wall_proc_table@ha /* 0x80650A90@ha */
/* 8038C2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C2D8  38 E7 0A 90 */	addi r7, r7, attron_make_slate_wall_proc_table@l /* 0x80650A90@l */
/* 8038C2DC  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8038C2E0  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 8038C2E4  7D 87 00 2E */	lwzx r12, r7, r0
/* 8038C2E8  7D 89 03 A6 */	mtctr r12
/* 8038C2EC  4E 80 04 21 */	bctrl 
/* 8038C2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C2F4  7C 08 03 A6 */	mtlr r0
/* 8038C2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C2FC  4E 80 00 20 */	blr 
