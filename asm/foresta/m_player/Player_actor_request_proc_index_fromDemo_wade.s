lbl_804FE7A8:
/* 804FE7A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FE7AC  7C 08 02 A6 */	mflr r0
/* 804FE7B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FE7B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FE7B8  7C 9F 23 78 */	mr r31, r4
/* 804FE7BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FE7C0  7C 7E 1B 78 */	mr r30, r3
/* 804FE7C4  4B FF FF B1 */	bl Player_actor_able_request_proc_index_fromDemo_wade_common
/* 804FE7C8  2C 03 00 00 */	cmpwi r3, 0
/* 804FE7CC  41 82 00 3C */	beq lbl_804FE808
/* 804FE7D0  7F C3 F3 78 */	mr r3, r30
/* 804FE7D4  4B FD 6B 99 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FE7D8  38 61 00 10 */	addi r3, r1, 0x10
/* 804FE7DC  38 81 00 0C */	addi r4, r1, 0xc
/* 804FE7E0  38 A1 00 08 */	addi r5, r1, 8
/* 804FE7E4  4B ED D1 99 */	bl mPlib_Get_goal_player_demo_walk
/* 804FE7E8  4B ED D3 01 */	bl mPlib_Get_end_player_demo_walk
/* 804FE7EC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804FE7F0  7C 64 1B 78 */	mr r4, r3
/* 804FE7F4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804FE7F8  7F E3 FB 78 */	mr r3, r31
/* 804FE7FC  C0 61 00 08 */	lfs f3, 8(r1)
/* 804FE800  38 A0 00 13 */	li r5, 0x13
/* 804FE804  4B FF E9 F5 */	bl func_804FD1F8
lbl_804FE808:
/* 804FE808  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FE80C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FE810  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FE814  7C 08 03 A6 */	mtlr r0
/* 804FE818  38 21 00 20 */	addi r1, r1, 0x20
/* 804FE81C  4E 80 00 20 */	blr 
