lbl_804F9A44:
/* 804F9A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F9A48  7C 08 02 A6 */	mflr r0
/* 804F9A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F9A50  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9A54  4B BA 14 81 */	bl func_8009AED4
/* 804F9A58  7C 7D 1B 78 */	mr r29, r3
/* 804F9A5C  7C 9E 23 78 */	mr r30, r4
/* 804F9A60  4B FF FE 3D */	bl Player_actor_Movement_Putin_scoop
/* 804F9A64  7F A3 EB 78 */	mr r3, r29
/* 804F9A68  7F C4 F3 78 */	mr r4, r30
/* 804F9A6C  4B FD E4 91 */	bl Player_actor_Reinput_force_position_angle
/* 804F9A70  7F A3 EB 78 */	mr r3, r29
/* 804F9A74  38 81 00 08 */	addi r4, r1, 8
/* 804F9A78  4B FF FE 5D */	bl Player_actor_CulcAnimation_Putin_scoop
/* 804F9A7C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F9A80  7C 7F 1B 78 */	mr r31, r3
/* 804F9A84  7F A3 EB 78 */	mr r3, r29
/* 804F9A88  7F C4 F3 78 */	mr r4, r30
/* 804F9A8C  4B FF FE 8D */	bl Player_actor_SearchAnimation_Putin_scoop
/* 804F9A90  7F A3 EB 78 */	mr r3, r29
/* 804F9A94  4B FD D6 61 */	bl Player_actor_recover_lean_angle
/* 804F9A98  7F A3 EB 78 */	mr r3, r29
/* 804F9A9C  4B FD B9 7D */	bl Player_actor_set_eye_pattern_normal
/* 804F9AA0  7F A3 EB 78 */	mr r3, r29
/* 804F9AA4  7F C4 F3 78 */	mr r4, r30
/* 804F9AA8  4B FF FE D9 */	bl Player_actor_ObjCheck_Putin_scoop
/* 804F9AAC  7F A3 EB 78 */	mr r3, r29
/* 804F9AB0  4B FF FE F1 */	bl Player_actor_BGcheck_Putin_scoop
/* 804F9AB4  7F A3 EB 78 */	mr r3, r29
/* 804F9AB8  4B FF FF 09 */	bl Player_actor_lean_angle_Putin_scoop
/* 804F9ABC  7F A3 EB 78 */	mr r3, r29
/* 804F9AC0  7F C4 F3 78 */	mr r4, r30
/* 804F9AC4  4B FE A2 35 */	bl Player_actor_Item_main
/* 804F9AC8  7F A3 EB 78 */	mr r3, r29
/* 804F9ACC  7F C4 F3 78 */	mr r4, r30
/* 804F9AD0  7F E5 FB 78 */	mr r5, r31
/* 804F9AD4  4B FF FF 19 */	bl Player_actor_request_proc_index_fromPutin_scoop
/* 804F9AD8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9ADC  4B BA 14 45 */	bl func_8009AF20
/* 804F9AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9AE4  7C 08 03 A6 */	mtlr r0
/* 804F9AE8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9AEC  4E 80 00 20 */	blr 
