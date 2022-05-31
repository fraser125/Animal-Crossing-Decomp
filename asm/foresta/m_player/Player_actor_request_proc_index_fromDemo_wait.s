lbl_804FD0C8:
/* 804FD0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FD0CC  7C 08 02 A6 */	mflr r0
/* 804FD0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FD0D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FD0D8  7C 7F 1B 78 */	mr r31, r3
/* 804FD0DC  4B FD AE 7D */	bl Player_actor_Get_DemoOrder
/* 804FD0E0  2C 03 00 01 */	cmpwi r3, 1
/* 804FD0E4  40 82 00 34 */	bne lbl_804FD118
/* 804FD0E8  38 61 00 10 */	addi r3, r1, 0x10
/* 804FD0EC  38 81 00 0C */	addi r4, r1, 0xc
/* 804FD0F0  38 A1 00 08 */	addi r5, r1, 8
/* 804FD0F4  4B ED E8 89 */	bl mPlib_Get_goal_player_demo_walk
/* 804FD0F8  4B ED E9 F1 */	bl mPlib_Get_end_player_demo_walk
/* 804FD0FC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804FD100  7C 64 1B 78 */	mr r4, r3
/* 804FD104  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804FD108  7F E3 FB 78 */	mr r3, r31
/* 804FD10C  C0 61 00 08 */	lfs f3, 8(r1)
/* 804FD110  38 A0 00 13 */	li r5, 0x13
/* 804FD114  48 00 00 E5 */	bl func_804FD1F8
lbl_804FD118:
/* 804FD118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FD11C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FD120  7C 08 03 A6 */	mtlr r0
/* 804FD124  38 21 00 20 */	addi r1, r1, 0x20
/* 804FD128  4E 80 00 20 */	blr 
