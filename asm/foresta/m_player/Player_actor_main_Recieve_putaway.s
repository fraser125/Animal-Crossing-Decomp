lbl_804FBB78:
/* 804FBB78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FBB7C  7C 08 02 A6 */	mflr r0
/* 804FBB80  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FBB84  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBB88  4B B9 F3 4D */	bl func_8009AED4
/* 804FBB8C  7C 7D 1B 78 */	mr r29, r3
/* 804FBB90  7C 9E 23 78 */	mr r30, r4
/* 804FBB94  4B FF FE F9 */	bl Player_actor_Movement_Recieve_putaway
/* 804FBB98  7F A3 EB 78 */	mr r3, r29
/* 804FBB9C  7F C4 F3 78 */	mr r4, r30
/* 804FBBA0  4B FD C3 5D */	bl Player_actor_Reinput_force_position_angle
/* 804FBBA4  7F A3 EB 78 */	mr r3, r29
/* 804FBBA8  4B FF FF 09 */	bl Player_actor_CulcAnimation_Recieve_putaway
/* 804FBBAC  7C 60 1B 78 */	mr r0, r3
/* 804FBBB0  7F A3 EB 78 */	mr r3, r29
/* 804FBBB4  7C 1F 03 78 */	mr r31, r0
/* 804FBBB8  4B FD B5 3D */	bl Player_actor_recover_lean_angle
/* 804FBBBC  7F A3 EB 78 */	mr r3, r29
/* 804FBBC0  4B FD 98 59 */	bl Player_actor_set_eye_pattern_normal
/* 804FBBC4  7F A3 EB 78 */	mr r3, r29
/* 804FBBC8  7F C4 F3 78 */	mr r4, r30
/* 804FBBCC  4B FF FF 09 */	bl Player_actor_ObjCheck_Recieve_putaway
/* 804FBBD0  7F A3 EB 78 */	mr r3, r29
/* 804FBBD4  4B FE A2 A9 */	bl Player_actor_BGcheck_Wait
/* 804FBBD8  7F A3 EB 78 */	mr r3, r29
/* 804FBBDC  4B FD BA B9 */	bl Player_actor_Set_item_matrix_set
/* 804FBBE0  7F A3 EB 78 */	mr r3, r29
/* 804FBBE4  7F C4 F3 78 */	mr r4, r30
/* 804FBBE8  4B FE 81 11 */	bl Player_actor_Item_main
/* 804FBBEC  7F A3 EB 78 */	mr r3, r29
/* 804FBBF0  7F C4 F3 78 */	mr r4, r30
/* 804FBBF4  7F E5 FB 78 */	mr r5, r31
/* 804FBBF8  4B FF FE FD */	bl Player_actor_request_proc_index_fromRecieve_putaway
/* 804FBBFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBC00  4B B9 F3 21 */	bl func_8009AF20
/* 804FBC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FBC08  7C 08 03 A6 */	mtlr r0
/* 804FBC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FBC10  4E 80 00 20 */	blr 
