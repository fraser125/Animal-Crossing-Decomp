lbl_804FD968:
/* 804FD968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FD96C  7C 08 02 A6 */	mflr r0
/* 804FD970  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FD974  39 61 00 20 */	addi r11, r1, 0x20
/* 804FD978  4B B9 D5 5D */	bl func_8009AED4
/* 804FD97C  7C 9E 23 78 */	mr r30, r4
/* 804FD980  7C 7D 1B 78 */	mr r29, r3
/* 804FD984  38 81 00 0C */	addi r4, r1, 0xc
/* 804FD988  4B FF FA 65 */	bl Player_actor_Movement_Demo_walk
/* 804FD98C  7C 60 1B 78 */	mr r0, r3
/* 804FD990  7F A3 EB 78 */	mr r3, r29
/* 804FD994  7C 1F 03 78 */	mr r31, r0
/* 804FD998  7F C4 F3 78 */	mr r4, r30
/* 804FD99C  4B FD A5 61 */	bl Player_actor_Reinput_force_position_angle
/* 804FD9A0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804FD9A4  7F A3 EB 78 */	mr r3, r29
/* 804FD9A8  38 81 00 08 */	addi r4, r1, 8
/* 804FD9AC  4B FF F9 DD */	bl Player_actor_CulcAnimation_Demo_walk
/* 804FD9B0  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FD9B4  7F A3 EB 78 */	mr r3, r29
/* 804FD9B8  7F C4 F3 78 */	mr r4, r30
/* 804FD9BC  4B FF FA 05 */	bl Player_actor_SearchAnimation_Demo_walk
/* 804FD9C0  7F A3 EB 78 */	mr r3, r29
/* 804FD9C4  4B FD 96 45 */	bl Player_actor_set_lean_angle
/* 804FD9C8  7F A3 EB 78 */	mr r3, r29
/* 804FD9CC  4B FD 7A 4D */	bl Player_actor_set_eye_pattern_normal
/* 804FD9D0  7F A3 EB 78 */	mr r3, r29
/* 804FD9D4  7F C4 F3 78 */	mr r4, r30
/* 804FD9D8  4B FF FE D5 */	bl Player_actor_ObjCheck_Demo_walk
/* 804FD9DC  7F A3 EB 78 */	mr r3, r29
/* 804FD9E0  4B FF FE ED */	bl Player_actor_BGcheck_Demo_walk
/* 804FD9E4  7F A3 EB 78 */	mr r3, r29
/* 804FD9E8  7F C4 F3 78 */	mr r4, r30
/* 804FD9EC  4B FE 63 0D */	bl Player_actor_Item_main
/* 804FD9F0  7F A3 EB 78 */	mr r3, r29
/* 804FD9F4  7F C4 F3 78 */	mr r4, r30
/* 804FD9F8  7F E5 FB 78 */	mr r5, r31
/* 804FD9FC  4B FF FE F1 */	bl Player_actor_request_proc_index_fromDemo_walk
/* 804FDA00  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDA04  4B B9 D5 1D */	bl func_8009AF20
/* 804FDA08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FDA0C  7C 08 03 A6 */	mtlr r0
/* 804FDA10  38 21 00 20 */	addi r1, r1, 0x20
/* 804FDA14  4E 80 00 20 */	blr 
