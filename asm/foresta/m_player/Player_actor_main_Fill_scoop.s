lbl_804F83E0:
/* 804F83E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F83E4  7C 08 02 A6 */	mflr r0
/* 804F83E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F83EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F83F0  4B BA 2A E5 */	bl func_8009AED4
/* 804F83F4  7C 7D 1B 78 */	mr r29, r3
/* 804F83F8  7C 9E 23 78 */	mr r30, r4
/* 804F83FC  4B FF F9 ED */	bl Player_actor_Movement_Fill_scoop
/* 804F8400  7F A3 EB 78 */	mr r3, r29
/* 804F8404  7F C4 F3 78 */	mr r4, r30
/* 804F8408  4B FD FA F5 */	bl Player_actor_Reinput_force_position_angle
/* 804F840C  7F A3 EB 78 */	mr r3, r29
/* 804F8410  38 81 00 08 */	addi r4, r1, 8
/* 804F8414  4B FF FA 0D */	bl Player_actor_CulcAnimation_Fill_scoop
/* 804F8418  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F841C  7C 7F 1B 78 */	mr r31, r3
/* 804F8420  7F A3 EB 78 */	mr r3, r29
/* 804F8424  7F C4 F3 78 */	mr r4, r30
/* 804F8428  4B FF FD 6D */	bl Player_actor_SearchAnimation_Fill_scoop
/* 804F842C  7F A3 EB 78 */	mr r3, r29
/* 804F8430  4B FD EC C5 */	bl Player_actor_recover_lean_angle
/* 804F8434  7F A3 EB 78 */	mr r3, r29
/* 804F8438  4B FD CF E1 */	bl Player_actor_set_eye_pattern_normal
/* 804F843C  7F A3 EB 78 */	mr r3, r29
/* 804F8440  7F C4 F3 78 */	mr r4, r30
/* 804F8444  4B FF FD C1 */	bl Player_actor_ObjCheck_Fill_scoop
/* 804F8448  7F A3 EB 78 */	mr r3, r29
/* 804F844C  4B FF FD D9 */	bl Player_actor_BGcheck_Fill_scoop
/* 804F8450  7F A3 EB 78 */	mr r3, r29
/* 804F8454  4B FF FD F1 */	bl Player_actor_lean_angle_Fill_scoop
/* 804F8458  7F A3 EB 78 */	mr r3, r29
/* 804F845C  7F C4 F3 78 */	mr r4, r30
/* 804F8460  4B FE B8 99 */	bl Player_actor_Item_main
/* 804F8464  7F A3 EB 78 */	mr r3, r29
/* 804F8468  7F C4 F3 78 */	mr r4, r30
/* 804F846C  7F E5 FB 78 */	mr r5, r31
/* 804F8470  4B FF FE 29 */	bl Player_actor_request_proc_index_fromFill_scoop
/* 804F8474  39 61 00 20 */	addi r11, r1, 0x20
/* 804F8478  4B BA 2A A9 */	bl func_8009AF20
/* 804F847C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F8480  7C 08 03 A6 */	mtlr r0
/* 804F8484  38 21 00 20 */	addi r1, r1, 0x20
/* 804F8488  4E 80 00 20 */	blr 
