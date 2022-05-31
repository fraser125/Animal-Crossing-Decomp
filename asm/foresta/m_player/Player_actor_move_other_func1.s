lbl_804E0624:
/* 804E0624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0628  7C 08 02 A6 */	mflr r0
/* 804E062C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E0634  7C 9F 23 78 */	mr r31, r4
/* 804E0638  93 C1 00 08 */	stw r30, 8(r1)
/* 804E063C  7C 7E 1B 78 */	mr r30, r3
/* 804E0640  4B FF A1 25 */	bl Player_actor_cancel_request_change_proc_index_by_A_btn
/* 804E0644  7F C3 F3 78 */	mr r3, r30
/* 804E0648  7F E4 FB 78 */	mr r4, r31
/* 804E064C  4B FF 3A 0D */	bl Player_actor_request_main_change_from_submenu
/* 804E0650  7F E3 FB 78 */	mr r3, r31
/* 804E0654  4B FF 3A 9D */	bl Player_actor_request_change_item
/* 804E0658  7F C3 F3 78 */	mr r3, r30
/* 804E065C  4B FF 9E 75 */	bl Player_actor_cancel_request_change_proc_index
/* 804E0660  7F C3 F3 78 */	mr r3, r30
/* 804E0664  7F E4 FB 78 */	mr r4, r31
/* 804E0668  4B FF 3D 11 */	bl Player_actor_change_proc_index
/* 804E066C  7F C3 F3 78 */	mr r3, r30
/* 804E0670  4B FF CD FD */	bl Player_actor_Reset_excute_cancel_wade
/* 804E0674  7F C3 F3 78 */	mr r3, r30
/* 804E0678  4B FF 71 DD */	bl Player_actor_Set_OldAngle
/* 804E067C  7F C3 F3 78 */	mr r3, r30
/* 804E0680  4B FF CD DD */	bl Player_actor_Culc_player_frame_counter
/* 804E0684  4B FF DE 19 */	bl Player_actor_Check_player_sunburn_ChangeDay
/* 804E0688  7F C3 F3 78 */	mr r3, r30
/* 804E068C  4B FF E3 65 */	bl Player_actor_Check_player_sunburn_for_main
/* 804E0690  7F C3 F3 78 */	mr r3, r30
/* 804E0694  4B FF E3 E5 */	bl Player_actor_Check_player_change_color_for_main
/* 804E0698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E069C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E06A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E06A4  7C 08 03 A6 */	mtlr r0
/* 804E06A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E06AC  4E 80 00 20 */	blr 
