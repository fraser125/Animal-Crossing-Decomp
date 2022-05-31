lbl_804F05E8:
/* 804F05E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F05EC  7C 08 02 A6 */	mflr r0
/* 804F05F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F05F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F05F8  4B BA A8 D9 */	bl func_8009AED0
/* 804F05FC  7C 7C 1B 78 */	mr r28, r3
/* 804F0600  7C 9D 23 78 */	mr r29, r4
/* 804F0604  3B FC 0D 18 */	addi r31, r28, 0xd18
/* 804F0608  38 A0 00 00 */	li r5, 0
/* 804F060C  7F E4 FB 78 */	mr r4, r31
/* 804F0610  4B FF F6 45 */	bl Player_actor_Movement_Swing_axe
/* 804F0614  7F 83 E3 78 */	mr r3, r28
/* 804F0618  7F A4 EB 78 */	mr r4, r29
/* 804F061C  4B FE 78 E1 */	bl Player_actor_Reinput_force_position_angle
/* 804F0620  7F 83 E3 78 */	mr r3, r28
/* 804F0624  38 81 00 08 */	addi r4, r1, 8
/* 804F0628  38 A0 00 00 */	li r5, 0
/* 804F062C  4B FF F6 5D */	bl Player_actor_CulcAnimation_Swing_axe
/* 804F0630  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F0634  7C 7E 1B 78 */	mr r30, r3
/* 804F0638  7F 83 E3 78 */	mr r3, r28
/* 804F063C  7F A4 EB 78 */	mr r4, r29
/* 804F0640  7F E5 FB 78 */	mr r5, r31
/* 804F0644  38 C0 00 00 */	li r6, 0
/* 804F0648  4B FF FC DD */	bl Player_actor_SearchAnimation_Swing_axe
/* 804F064C  7F 83 E3 78 */	mr r3, r28
/* 804F0650  7F E4 FB 78 */	mr r4, r31
/* 804F0654  38 A0 00 00 */	li r5, 0
/* 804F0658  4B FF FD 6D */	bl Player_actor_Check_BirthBee_Swing_axe
/* 804F065C  7F 83 E3 78 */	mr r3, r28
/* 804F0660  4B FE 6A 95 */	bl Player_actor_recover_lean_angle
/* 804F0664  7F 83 E3 78 */	mr r3, r28
/* 804F0668  4B FE 4E DD */	bl Player_actor_set_tex_anime_pattern
/* 804F066C  7F 83 E3 78 */	mr r3, r28
/* 804F0670  7F A4 EB 78 */	mr r4, r29
/* 804F0674  38 A0 00 00 */	li r5, 0
/* 804F0678  4B FF FD C5 */	bl Player_actor_ObjCheck_Swing_axe
/* 804F067C  7F 83 E3 78 */	mr r3, r28
/* 804F0680  38 80 00 00 */	li r4, 0
/* 804F0684  4B FF FD D9 */	bl Player_actor_BGcheck_Swing_axe
/* 804F0688  7F 83 E3 78 */	mr r3, r28
/* 804F068C  7F A4 EB 78 */	mr r4, r29
/* 804F0690  4B FF 36 69 */	bl Player_actor_Item_main
/* 804F0694  7F 83 E3 78 */	mr r3, r28
/* 804F0698  7F A4 EB 78 */	mr r4, r29
/* 804F069C  7F C5 F3 78 */	mr r5, r30
/* 804F06A0  38 C0 00 00 */	li r6, 0
/* 804F06A4  4B FF FD D9 */	bl Player_actor_request_proc_index_fromSwing_axe
/* 804F06A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F06AC  4B BA A8 71 */	bl func_8009AF1C
/* 804F06B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F06B4  7C 08 03 A6 */	mtlr r0
/* 804F06B8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F06BC  4E 80 00 20 */	blr 
