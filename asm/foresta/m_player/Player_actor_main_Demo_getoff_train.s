lbl_804FE188:
/* 804FE188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FE18C  7C 08 02 A6 */	mflr r0
/* 804FE190  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FE194  39 61 00 20 */	addi r11, r1, 0x20
/* 804FE198  4B B9 CD 3D */	bl func_8009AED4
/* 804FE19C  7C 9E 23 78 */	mr r30, r4
/* 804FE1A0  7C 7D 1B 78 */	mr r29, r3
/* 804FE1A4  38 81 00 08 */	addi r4, r1, 8
/* 804FE1A8  4B FF FE BD */	bl Player_actor_CulcAnimation_Demo_getoff_train
/* 804FE1AC  7C 60 1B 78 */	mr r0, r3
/* 804FE1B0  7F A3 EB 78 */	mr r3, r29
/* 804FE1B4  7C 1F 03 78 */	mr r31, r0
/* 804FE1B8  4B FF FF 21 */	bl Player_actor_Movement_Demo_getoff_train
/* 804FE1BC  7F A3 EB 78 */	mr r3, r29
/* 804FE1C0  7F C4 F3 78 */	mr r4, r30
/* 804FE1C4  4B FD 9D 39 */	bl Player_actor_Reinput_force_position_angle
/* 804FE1C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FE1CC  7F A3 EB 78 */	mr r3, r29
/* 804FE1D0  7F C4 F3 78 */	mr r4, r30
/* 804FE1D4  4B FF FE B1 */	bl Player_actor_SearchAnimation_Demo_getoff_train
/* 804FE1D8  7F A3 EB 78 */	mr r3, r29
/* 804FE1DC  4B FD 8F 19 */	bl Player_actor_recover_lean_angle
/* 804FE1E0  7F A3 EB 78 */	mr r3, r29
/* 804FE1E4  4B FD 72 35 */	bl Player_actor_set_eye_pattern_normal
/* 804FE1E8  7F A3 EB 78 */	mr r3, r29
/* 804FE1EC  7F C4 F3 78 */	mr r4, r30
/* 804FE1F0  4B FE 5B 09 */	bl Player_actor_Item_main
/* 804FE1F4  7F A3 EB 78 */	mr r3, r29
/* 804FE1F8  7F C4 F3 78 */	mr r4, r30
/* 804FE1FC  7F E5 FB 78 */	mr r5, r31
/* 804FE200  4B FF FF 25 */	bl Player_actor_request_proc_index_fromDemo_getoff_train
/* 804FE204  39 61 00 20 */	addi r11, r1, 0x20
/* 804FE208  4B B9 CD 19 */	bl func_8009AF20
/* 804FE20C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FE210  7C 08 03 A6 */	mtlr r0
/* 804FE214  38 21 00 20 */	addi r1, r1, 0x20
/* 804FE218  4E 80 00 20 */	blr 
