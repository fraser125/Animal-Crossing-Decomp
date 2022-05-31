lbl_804F63FC:
/* 804F63FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F6400  7C 08 02 A6 */	mflr r0
/* 804F6404  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F6408  39 61 00 20 */	addi r11, r1, 0x20
/* 804F640C  4B BA 4A C9 */	bl func_8009AED4
/* 804F6410  7C 7D 1B 78 */	mr r29, r3
/* 804F6414  7C 9E 23 78 */	mr r30, r4
/* 804F6418  4B FF FE C9 */	bl Player_actor_Movement_Fly_rod
/* 804F641C  7F A3 EB 78 */	mr r3, r29
/* 804F6420  7F C4 F3 78 */	mr r4, r30
/* 804F6424  4B FE 1A D9 */	bl Player_actor_Reinput_force_position_angle
/* 804F6428  7F A3 EB 78 */	mr r3, r29
/* 804F642C  38 81 00 08 */	addi r4, r1, 8
/* 804F6430  4B FF FE D9 */	bl Player_actor_CulcAnimation_Fly_rod
/* 804F6434  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F6438  7C 7F 1B 78 */	mr r31, r3
/* 804F643C  7F A3 EB 78 */	mr r3, r29
/* 804F6440  7F C4 F3 78 */	mr r4, r30
/* 804F6444  4B FF FE E5 */	bl Player_actor_SearchAnimation_Fly_rod
/* 804F6448  7F A3 EB 78 */	mr r3, r29
/* 804F644C  4B FE 0C A9 */	bl Player_actor_recover_lean_angle
/* 804F6450  7F A3 EB 78 */	mr r3, r29
/* 804F6454  4B FD F0 F1 */	bl Player_actor_set_tex_anime_pattern
/* 804F6458  7F A3 EB 78 */	mr r3, r29
/* 804F645C  7F C4 F3 78 */	mr r4, r30
/* 804F6460  4B FF FF 1D */	bl Player_actor_ObjCheck_Fly_rod
/* 804F6464  7F A3 EB 78 */	mr r3, r29
/* 804F6468  4B FF FF 35 */	bl Player_actor_BGcheck_Fly_rod
/* 804F646C  7F A3 EB 78 */	mr r3, r29
/* 804F6470  7F C4 F3 78 */	mr r4, r30
/* 804F6474  4B FE D8 85 */	bl Player_actor_Item_main
/* 804F6478  7C 60 1B 78 */	mr r0, r3
/* 804F647C  7F A3 EB 78 */	mr r3, r29
/* 804F6480  7C 06 03 78 */	mr r6, r0
/* 804F6484  7F C4 F3 78 */	mr r4, r30
/* 804F6488  7F E5 FB 78 */	mr r5, r31
/* 804F648C  4B FF FF 31 */	bl Player_actor_request_proc_index_fromFly_rod
/* 804F6490  7F A3 EB 78 */	mr r3, r29
/* 804F6494  7F C4 F3 78 */	mr r4, r30
/* 804F6498  4B FE 9B 71 */	bl Player_actor_main_Fly_rod_other_func2
/* 804F649C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F64A0  4B BA 4A 81 */	bl func_8009AF20
/* 804F64A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F64A8  7C 08 03 A6 */	mtlr r0
/* 804F64AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804F64B0  4E 80 00 20 */	blr 
