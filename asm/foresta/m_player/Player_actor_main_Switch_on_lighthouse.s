lbl_80506A84:
/* 80506A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80506A88  7C 08 02 A6 */	mflr r0
/* 80506A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80506A90  39 61 00 20 */	addi r11, r1, 0x20
/* 80506A94  4B B9 44 41 */	bl func_8009AED4
/* 80506A98  7C 7D 1B 78 */	mr r29, r3
/* 80506A9C  7C 9E 23 78 */	mr r30, r4
/* 80506AA0  4B FF FE FD */	bl Player_actor_CulcAnimation_Switch_on_lighthouse
/* 80506AA4  7C 60 1B 78 */	mr r0, r3
/* 80506AA8  7F A3 EB 78 */	mr r3, r29
/* 80506AAC  7C 1F 03 78 */	mr r31, r0
/* 80506AB0  4B FF FF 11 */	bl Player_actor_Movement_Switch_on_lighthouse
/* 80506AB4  7F A3 EB 78 */	mr r3, r29
/* 80506AB8  7F C4 F3 78 */	mr r4, r30
/* 80506ABC  4B FD 14 41 */	bl Player_actor_Reinput_force_position_angle
/* 80506AC0  7F A3 EB 78 */	mr r3, r29
/* 80506AC4  4B FD 06 31 */	bl Player_actor_recover_lean_angle
/* 80506AC8  7F A3 EB 78 */	mr r3, r29
/* 80506ACC  4B FC E9 4D */	bl Player_actor_set_eye_pattern_normal
/* 80506AD0  7F A3 EB 78 */	mr r3, r29
/* 80506AD4  7F C4 F3 78 */	mr r4, r30
/* 80506AD8  4B FF FF 35 */	bl Player_actor_ObjCheck_Switch_on_lighthouse
/* 80506ADC  7F A3 EB 78 */	mr r3, r29
/* 80506AE0  7F C4 F3 78 */	mr r4, r30
/* 80506AE4  4B FD D2 15 */	bl Player_actor_Item_main
/* 80506AE8  7F A3 EB 78 */	mr r3, r29
/* 80506AEC  7F C4 F3 78 */	mr r4, r30
/* 80506AF0  7F E5 FB 78 */	mr r5, r31
/* 80506AF4  4B FF FF 39 */	bl Player_actor_request_proc_index_fromSwitch_on_lighthouse
/* 80506AF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80506AFC  4B B9 44 25 */	bl func_8009AF20
/* 80506B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80506B04  7C 08 03 A6 */	mtlr r0
/* 80506B08  38 21 00 20 */	addi r1, r1, 0x20
/* 80506B0C  4E 80 00 20 */	blr 
