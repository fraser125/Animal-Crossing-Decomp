lbl_804EE148:
/* 804EE148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EE14C  7C 08 02 A6 */	mflr r0
/* 804EE150  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EE154  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE158  4B BA CD 7D */	bl func_8009AED4
/* 804EE15C  7C 7D 1B 78 */	mr r29, r3
/* 804EE160  7C 9E 23 78 */	mr r30, r4
/* 804EE164  4B FF FB 99 */	bl Player_actor_Movement_Pickup_jump
/* 804EE168  7F A3 EB 78 */	mr r3, r29
/* 804EE16C  7F C4 F3 78 */	mr r4, r30
/* 804EE170  4B FE 9D 8D */	bl Player_actor_Reinput_force_position_angle
/* 804EE174  7F A3 EB 78 */	mr r3, r29
/* 804EE178  38 81 00 08 */	addi r4, r1, 8
/* 804EE17C  4B FF FB B9 */	bl Player_actor_CulcAnimation_Pickup_jump
/* 804EE180  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EE184  7C 7F 1B 78 */	mr r31, r3
/* 804EE188  7F A3 EB 78 */	mr r3, r29
/* 804EE18C  4B FF FE C5 */	bl Player_actor_SearchAnimation_Pickup_jump
/* 804EE190  7F A3 EB 78 */	mr r3, r29
/* 804EE194  4B FE 8F 61 */	bl Player_actor_recover_lean_angle
/* 804EE198  7F A3 EB 78 */	mr r3, r29
/* 804EE19C  4B FE 72 7D */	bl Player_actor_set_eye_pattern_normal
/* 804EE1A0  7F A3 EB 78 */	mr r3, r29
/* 804EE1A4  7F C4 F3 78 */	mr r4, r30
/* 804EE1A8  4B FF FB AD */	bl Player_actor_ObjCheck_Pickup_jump
/* 804EE1AC  7F A3 EB 78 */	mr r3, r29
/* 804EE1B0  4B FF FB C5 */	bl Player_actor_BGcheck_Pickup_jump
/* 804EE1B4  7F A3 EB 78 */	mr r3, r29
/* 804EE1B8  7F C4 F3 78 */	mr r4, r30
/* 804EE1BC  4B FF 5B 3D */	bl Player_actor_Item_main
/* 804EE1C0  7F A3 EB 78 */	mr r3, r29
/* 804EE1C4  7F C4 F3 78 */	mr r4, r30
/* 804EE1C8  7F E5 FB 78 */	mr r5, r31
/* 804EE1CC  4B FF FE C1 */	bl Player_actor_request_proc_index_fromPickup_jump
/* 804EE1D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE1D4  4B BA CD 4D */	bl func_8009AF20
/* 804EE1D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EE1DC  7C 08 03 A6 */	mtlr r0
/* 804EE1E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804EE1E4  4E 80 00 20 */	blr 
