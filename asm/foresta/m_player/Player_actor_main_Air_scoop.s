lbl_804F95F0:
/* 804F95F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F95F4  7C 08 02 A6 */	mflr r0
/* 804F95F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F95FC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9600  4B BA 18 D5 */	bl func_8009AED4
/* 804F9604  7C 7D 1B 78 */	mr r29, r3
/* 804F9608  7C 9E 23 78 */	mr r30, r4
/* 804F960C  4B FF FE 61 */	bl Player_actor_Movement_Air_scoop
/* 804F9610  7F A3 EB 78 */	mr r3, r29
/* 804F9614  7F C4 F3 78 */	mr r4, r30
/* 804F9618  4B FD E8 E5 */	bl Player_actor_Reinput_force_position_angle
/* 804F961C  7F A3 EB 78 */	mr r3, r29
/* 804F9620  38 81 00 08 */	addi r4, r1, 8
/* 804F9624  4B FF FE 71 */	bl Player_actor_CulcAnimation_Air_scoop
/* 804F9628  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F962C  7C 7F 1B 78 */	mr r31, r3
/* 804F9630  7F A3 EB 78 */	mr r3, r29
/* 804F9634  7F C4 F3 78 */	mr r4, r30
/* 804F9638  4B FF FE C5 */	bl Player_actor_SearchAnimation_Air_scoop
/* 804F963C  7F A3 EB 78 */	mr r3, r29
/* 804F9640  4B FD DA B5 */	bl Player_actor_recover_lean_angle
/* 804F9644  7F A3 EB 78 */	mr r3, r29
/* 804F9648  4B FD BE FD */	bl Player_actor_set_tex_anime_pattern
/* 804F964C  7F A3 EB 78 */	mr r3, r29
/* 804F9650  7F C4 F3 78 */	mr r4, r30
/* 804F9654  4B FF FF 05 */	bl Player_actor_ObjCheck_Air_scoop
/* 804F9658  7F A3 EB 78 */	mr r3, r29
/* 804F965C  4B FF FF 1D */	bl Player_actor_BGcheck_Air_scoop
/* 804F9660  7F A3 EB 78 */	mr r3, r29
/* 804F9664  7F C4 F3 78 */	mr r4, r30
/* 804F9668  4B FE A6 91 */	bl Player_actor_Item_main
/* 804F966C  7F A3 EB 78 */	mr r3, r29
/* 804F9670  7F C4 F3 78 */	mr r4, r30
/* 804F9674  7F E5 FB 78 */	mr r5, r31
/* 804F9678  4B FF FF 21 */	bl Player_actor_request_proc_index_fromAir_scoop
/* 804F967C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9680  4B BA 18 A1 */	bl func_8009AF20
/* 804F9684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9688  7C 08 03 A6 */	mtlr r0
/* 804F968C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9690  4E 80 00 20 */	blr 
