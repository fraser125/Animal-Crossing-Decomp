lbl_804F1E84:
/* 804F1E84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F1E88  7C 08 02 A6 */	mflr r0
/* 804F1E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F1E90  39 61 00 20 */	addi r11, r1, 0x20
/* 804F1E94  4B BA 90 41 */	bl func_8009AED4
/* 804F1E98  7C 7D 1B 78 */	mr r29, r3
/* 804F1E9C  7C 9E 23 78 */	mr r30, r4
/* 804F1EA0  4B FF FD D9 */	bl Player_actor_Movement_Slip_net
/* 804F1EA4  7C 60 1B 78 */	mr r0, r3
/* 804F1EA8  7F A3 EB 78 */	mr r3, r29
/* 804F1EAC  7C 1F 03 78 */	mr r31, r0
/* 804F1EB0  7F C4 F3 78 */	mr r4, r30
/* 804F1EB4  4B FE 60 49 */	bl Player_actor_Reinput_force_position_angle
/* 804F1EB8  7F A3 EB 78 */	mr r3, r29
/* 804F1EBC  4B FF FD E5 */	bl Player_actor_CulcAnimation_Slip_net
/* 804F1EC0  7F A3 EB 78 */	mr r3, r29
/* 804F1EC4  7F C4 F3 78 */	mr r4, r30
/* 804F1EC8  4B FF FE 3D */	bl Player_actor_SearchAnimation_Slip_net
/* 804F1ECC  7F A3 EB 78 */	mr r3, r29
/* 804F1ED0  4B FE 52 25 */	bl Player_actor_recover_lean_angle
/* 804F1ED4  7F A3 EB 78 */	mr r3, r29
/* 804F1ED8  4B FE 35 41 */	bl Player_actor_set_eye_pattern_normal
/* 804F1EDC  7F A3 EB 78 */	mr r3, r29
/* 804F1EE0  7F C4 F3 78 */	mr r4, r30
/* 804F1EE4  4B FF FD E1 */	bl Player_actor_ObjCheck_Slip_net
/* 804F1EE8  7F A3 EB 78 */	mr r3, r29
/* 804F1EEC  4B FF FD F9 */	bl Player_actor_BGcheck_Slip_net
/* 804F1EF0  7F A3 EB 78 */	mr r3, r29
/* 804F1EF4  7F C4 F3 78 */	mr r4, r30
/* 804F1EF8  4B FF 1E 01 */	bl Player_actor_Item_main
/* 804F1EFC  7F A3 EB 78 */	mr r3, r29
/* 804F1F00  7F C4 F3 78 */	mr r4, r30
/* 804F1F04  7F E5 FB 78 */	mr r5, r31
/* 804F1F08  4B FF FE C1 */	bl Player_actor_request_proc_index_fromSlip_net
/* 804F1F0C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F1F10  4B BA 90 11 */	bl func_8009AF20
/* 804F1F14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1F18  7C 08 03 A6 */	mtlr r0
/* 804F1F1C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1F20  4E 80 00 20 */	blr 
