lbl_804F2944:
/* 804F2944  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F2948  7C 08 02 A6 */	mflr r0
/* 804F294C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F2950  38 A1 00 0C */	addi r5, r1, 0xc
/* 804F2954  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F2958  7C 9F 23 78 */	mr r31, r4
/* 804F295C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F2960  7C 7E 1B 78 */	mr r30, r3
/* 804F2964  4B FF FC 09 */	bl Player_actor_Movement_Ready_walk_net
/* 804F2968  7F C3 F3 78 */	mr r3, r30
/* 804F296C  7F E4 FB 78 */	mr r4, r31
/* 804F2970  4B FE 55 8D */	bl Player_actor_Reinput_force_position_angle
/* 804F2974  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804F2978  7F C3 F3 78 */	mr r3, r30
/* 804F297C  38 81 00 08 */	addi r4, r1, 8
/* 804F2980  4B FF F9 A1 */	bl Player_actor_CulcAnimation_Ready_walk_net
/* 804F2984  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F2988  7F C3 F3 78 */	mr r3, r30
/* 804F298C  7F E4 FB 78 */	mr r4, r31
/* 804F2990  4B FF FB 69 */	bl Player_actor_SearchAnimation_Ready_walk_net
/* 804F2994  7F C3 F3 78 */	mr r3, r30
/* 804F2998  4B FE 47 5D */	bl Player_actor_recover_lean_angle
/* 804F299C  7F C3 F3 78 */	mr r3, r30
/* 804F29A0  4B FE 2A 79 */	bl Player_actor_set_eye_pattern_normal
/* 804F29A4  7F C3 F3 78 */	mr r3, r30
/* 804F29A8  7F E4 FB 78 */	mr r4, r31
/* 804F29AC  4B FF FE 15 */	bl Player_actor_ObjCheck_Ready_walk_net
/* 804F29B0  7F C3 F3 78 */	mr r3, r30
/* 804F29B4  4B FF FE 2D */	bl Player_actor_BGcheck_Ready_walk_net
/* 804F29B8  7F C3 F3 78 */	mr r3, r30
/* 804F29BC  7F E4 FB 78 */	mr r4, r31
/* 804F29C0  4B FF 13 39 */	bl Player_actor_Item_main
/* 804F29C4  7F C3 F3 78 */	mr r3, r30
/* 804F29C8  7F E4 FB 78 */	mr r4, r31
/* 804F29CC  4B FF FE 35 */	bl Player_actor_request_proc_index_fromReady_walk_net
/* 804F29D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F29D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F29D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F29DC  7C 08 03 A6 */	mtlr r0
/* 804F29E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F29E4  4E 80 00 20 */	blr 
