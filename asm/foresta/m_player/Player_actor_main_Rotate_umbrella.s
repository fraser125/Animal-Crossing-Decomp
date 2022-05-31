lbl_80504E94:
/* 80504E94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80504E98  7C 08 02 A6 */	mflr r0
/* 80504E9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504EA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80504EA4  4B B9 60 31 */	bl func_8009AED4
/* 80504EA8  7C 7D 1B 78 */	mr r29, r3
/* 80504EAC  7C 9E 23 78 */	mr r30, r4
/* 80504EB0  4B FF FE 4D */	bl Player_actor_Movement_Rotate_umbrella
/* 80504EB4  7F A3 EB 78 */	mr r3, r29
/* 80504EB8  7F C4 F3 78 */	mr r4, r30
/* 80504EBC  4B FD 30 41 */	bl Player_actor_Reinput_force_position_angle
/* 80504EC0  7F A3 EB 78 */	mr r3, r29
/* 80504EC4  38 81 00 08 */	addi r4, r1, 8
/* 80504EC8  4B FF FE 5D */	bl Player_actor_CulcAnimation_Rotate_umbrella
/* 80504ECC  7C 60 1B 78 */	mr r0, r3
/* 80504ED0  7F A3 EB 78 */	mr r3, r29
/* 80504ED4  7C 1F 03 78 */	mr r31, r0
/* 80504ED8  4B FD 22 1D */	bl Player_actor_recover_lean_angle
/* 80504EDC  7F A3 EB 78 */	mr r3, r29
/* 80504EE0  4B FD 06 65 */	bl Player_actor_set_tex_anime_pattern
/* 80504EE4  7F A3 EB 78 */	mr r3, r29
/* 80504EE8  7F C4 F3 78 */	mr r4, r30
/* 80504EEC  4B FF FE 59 */	bl Player_actor_ObjCheck_Rotate_umbrella
/* 80504EF0  7F A3 EB 78 */	mr r3, r29
/* 80504EF4  4B FF FE 71 */	bl Player_actor_BGcheck_Rotate_umbrella
/* 80504EF8  7F A3 EB 78 */	mr r3, r29
/* 80504EFC  7F C4 F3 78 */	mr r4, r30
/* 80504F00  4B FD ED F9 */	bl Player_actor_Item_main
/* 80504F04  7F A3 EB 78 */	mr r3, r29
/* 80504F08  7F C4 F3 78 */	mr r4, r30
/* 80504F0C  7F E5 FB 78 */	mr r5, r31
/* 80504F10  4B FF FE 75 */	bl Player_actor_request_proc_index_fromRotate_umbrella
/* 80504F14  39 61 00 20 */	addi r11, r1, 0x20
/* 80504F18  4B B9 60 09 */	bl func_8009AF20
/* 80504F1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504F20  7C 08 03 A6 */	mtlr r0
/* 80504F24  38 21 00 20 */	addi r1, r1, 0x20
/* 80504F28  4E 80 00 20 */	blr 
