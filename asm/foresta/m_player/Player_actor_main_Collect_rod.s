lbl_804F5E70:
/* 804F5E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F5E74  7C 08 02 A6 */	mflr r0
/* 804F5E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F5E7C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F5E80  4B BA 50 55 */	bl func_8009AED4
/* 804F5E84  7C 7D 1B 78 */	mr r29, r3
/* 804F5E88  7C 9E 23 78 */	mr r30, r4
/* 804F5E8C  4B FF FE A9 */	bl Player_actor_Movement_Collect_rod
/* 804F5E90  7F A3 EB 78 */	mr r3, r29
/* 804F5E94  7F C4 F3 78 */	mr r4, r30
/* 804F5E98  4B FE 20 65 */	bl Player_actor_Reinput_force_position_angle
/* 804F5E9C  7F A3 EB 78 */	mr r3, r29
/* 804F5EA0  38 81 00 08 */	addi r4, r1, 8
/* 804F5EA4  4B FF FE B9 */	bl Player_actor_CulcAnimation_Collect_rod
/* 804F5EA8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F5EAC  7C 7F 1B 78 */	mr r31, r3
/* 804F5EB0  7F A3 EB 78 */	mr r3, r29
/* 804F5EB4  7F C4 F3 78 */	mr r4, r30
/* 804F5EB8  4B FF FE C5 */	bl Player_actor_SearchAnimation_Collect_rod
/* 804F5EBC  7F A3 EB 78 */	mr r3, r29
/* 804F5EC0  4B FE 12 35 */	bl Player_actor_recover_lean_angle
/* 804F5EC4  7F A3 EB 78 */	mr r3, r29
/* 804F5EC8  4B FD F6 7D */	bl Player_actor_set_tex_anime_pattern
/* 804F5ECC  7F A3 EB 78 */	mr r3, r29
/* 804F5ED0  7F C4 F3 78 */	mr r4, r30
/* 804F5ED4  4B FF FE FD */	bl Player_actor_ObjCheck_Collect_rod
/* 804F5ED8  7F A3 EB 78 */	mr r3, r29
/* 804F5EDC  4B FF FF 15 */	bl Player_actor_BGcheck_Collect_rod
/* 804F5EE0  7F A3 EB 78 */	mr r3, r29
/* 804F5EE4  7F C4 F3 78 */	mr r4, r30
/* 804F5EE8  4B FE DE 11 */	bl Player_actor_Item_main
/* 804F5EEC  7C 60 1B 78 */	mr r0, r3
/* 804F5EF0  7F A3 EB 78 */	mr r3, r29
/* 804F5EF4  7C 06 03 78 */	mr r6, r0
/* 804F5EF8  7F C4 F3 78 */	mr r4, r30
/* 804F5EFC  7F E5 FB 78 */	mr r5, r31
/* 804F5F00  4B FF FF 11 */	bl Player_actor_request_proc_index_fromCollect_rod
/* 804F5F04  7F A3 EB 78 */	mr r3, r29
/* 804F5F08  7F C4 F3 78 */	mr r4, r30
/* 804F5F0C  4B FE A0 DD */	bl Player_actor_main_Collect_rod_other_func2
/* 804F5F10  39 61 00 20 */	addi r11, r1, 0x20
/* 804F5F14  4B BA 50 0D */	bl func_8009AF20
/* 804F5F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F5F1C  7C 08 03 A6 */	mtlr r0
/* 804F5F20  38 21 00 20 */	addi r1, r1, 0x20
/* 804F5F24  4E 80 00 20 */	blr 
