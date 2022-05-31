lbl_804E55C4:
/* 804E55C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E55C8  7C 08 02 A6 */	mflr r0
/* 804E55CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E55D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E55D4  7C 9F 23 78 */	mr r31, r4
/* 804E55D8  93 C1 00 08 */	stw r30, 8(r1)
/* 804E55DC  7C 7E 1B 78 */	mr r30, r3
/* 804E55E0  4B FF FE F9 */	bl Player_actor_Movement_Return_demo
/* 804E55E4  7F C3 F3 78 */	mr r3, r30
/* 804E55E8  7F E4 FB 78 */	mr r4, r31
/* 804E55EC  4B FF 29 11 */	bl Player_actor_Reinput_force_position_angle
/* 804E55F0  7F C3 F3 78 */	mr r3, r30
/* 804E55F4  4B FF FE C1 */	bl Player_actor_CulcAnimation_Return_demo
/* 804E55F8  7F C3 F3 78 */	mr r3, r30
/* 804E55FC  4B FF 1A F9 */	bl Player_actor_recover_lean_angle
/* 804E5600  7F C3 F3 78 */	mr r3, r30
/* 804E5604  4B FE FE 15 */	bl Player_actor_set_eye_pattern_normal
/* 804E5608  7F C3 F3 78 */	mr r3, r30
/* 804E560C  7F E4 FB 78 */	mr r4, r31
/* 804E5610  4B FF FE E9 */	bl Player_actor_ObjCheck_Return_demo
/* 804E5614  7F C3 F3 78 */	mr r3, r30
/* 804E5618  4B FF FF 01 */	bl Player_actor_BGcheck_Return_demo
/* 804E561C  7F C3 F3 78 */	mr r3, r30
/* 804E5620  7F E4 FB 78 */	mr r4, r31
/* 804E5624  4B FF E6 D5 */	bl Player_actor_Item_main
/* 804E5628  7F C3 F3 78 */	mr r3, r30
/* 804E562C  7F E4 FB 78 */	mr r4, r31
/* 804E5630  4B FF FF 09 */	bl Player_actor_request_proc_index_fromReturn_demo
/* 804E5634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E563C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E5640  7C 08 03 A6 */	mtlr r0
/* 804E5644  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5648  4E 80 00 20 */	blr 
