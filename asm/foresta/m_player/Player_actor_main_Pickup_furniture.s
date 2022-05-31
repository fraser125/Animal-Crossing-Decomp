lbl_804EE948:
/* 804EE948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EE94C  7C 08 02 A6 */	mflr r0
/* 804EE950  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EE954  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE958  4B BA C5 7D */	bl func_8009AED4
/* 804EE95C  7C 7D 1B 78 */	mr r29, r3
/* 804EE960  7C 9E 23 78 */	mr r30, r4
/* 804EE964  4B FF FB 7D */	bl Player_actor_Movement_Pickup_furniture
/* 804EE968  7F A3 EB 78 */	mr r3, r29
/* 804EE96C  7F C4 F3 78 */	mr r4, r30
/* 804EE970  4B FE 95 8D */	bl Player_actor_Reinput_force_position_angle
/* 804EE974  7F A3 EB 78 */	mr r3, r29
/* 804EE978  38 81 00 08 */	addi r4, r1, 8
/* 804EE97C  4B FF FB 9D */	bl Player_actor_CulcAnimation_Pickup_furniture
/* 804EE980  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EE984  7C 7F 1B 78 */	mr r31, r3
/* 804EE988  7F A3 EB 78 */	mr r3, r29
/* 804EE98C  7F C4 F3 78 */	mr r4, r30
/* 804EE990  4B FF FE 95 */	bl Player_actor_SearchAnimation_Pickup_furniture
/* 804EE994  7F A3 EB 78 */	mr r3, r29
/* 804EE998  4B FE 87 5D */	bl Player_actor_recover_lean_angle
/* 804EE99C  7F A3 EB 78 */	mr r3, r29
/* 804EE9A0  4B FE 6A 79 */	bl Player_actor_set_eye_pattern_normal
/* 804EE9A4  7F A3 EB 78 */	mr r3, r29
/* 804EE9A8  7F C4 F3 78 */	mr r4, r30
/* 804EE9AC  4B FF FB 8D */	bl Player_actor_ObjCheck_Pickup_furniture
/* 804EE9B0  7F A3 EB 78 */	mr r3, r29
/* 804EE9B4  4B FF FB A5 */	bl Player_actor_BGcheck_Pickup_furniture
/* 804EE9B8  7F A3 EB 78 */	mr r3, r29
/* 804EE9BC  7F C4 F3 78 */	mr r4, r30
/* 804EE9C0  4B FF 53 39 */	bl Player_actor_Item_main
/* 804EE9C4  7F A3 EB 78 */	mr r3, r29
/* 804EE9C8  7F C4 F3 78 */	mr r4, r30
/* 804EE9CC  7F E5 FB 78 */	mr r5, r31
/* 804EE9D0  4B FF FE BD */	bl Player_actor_request_proc_index_fromPickup_furniture
/* 804EE9D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE9D8  4B BA C5 49 */	bl func_8009AF20
/* 804EE9DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EE9E0  7C 08 03 A6 */	mtlr r0
/* 804EE9E4  38 21 00 20 */	addi r1, r1, 0x20
/* 804EE9E8  4E 80 00 20 */	blr 
