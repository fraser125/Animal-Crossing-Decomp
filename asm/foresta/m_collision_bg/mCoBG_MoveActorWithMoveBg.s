lbl_80389AB4:
/* 80389AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80389AB8  7C 08 02 A6 */	mflr r0
/* 80389ABC  3C 80 80 65 */	lis r4, move_bg_move_actor_proc@ha /* 0x806510F4@ha */
/* 80389AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80389AC4  38 84 10 F4 */	addi r4, r4, move_bg_move_actor_proc@l /* 0x806510F4@l */
/* 80389AC8  88 03 00 9A */	lbz r0, 0x9a(r3)
/* 80389ACC  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 80389AD0  7D 84 00 2E */	lwzx r12, r4, r0
/* 80389AD4  7D 89 03 A6 */	mtctr r12
/* 80389AD8  4E 80 04 21 */	bctrl 
/* 80389ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80389AE0  7C 08 03 A6 */	mtlr r0
/* 80389AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80389AE8  4E 80 00 20 */	blr 
