lbl_804F53BC:
/* 804F53BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F53C0  7C 08 02 A6 */	mflr r0
/* 804F53C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F53C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F53CC  4B BA 5B 09 */	bl func_8009AED4
/* 804F53D0  7C 7D 1B 78 */	mr r29, r3
/* 804F53D4  7C 9E 23 78 */	mr r30, r4
/* 804F53D8  4B FF FE 8D */	bl Player_actor_Movement_Cast_rod
/* 804F53DC  7F A3 EB 78 */	mr r3, r29
/* 804F53E0  7F C4 F3 78 */	mr r4, r30
/* 804F53E4  4B FE 2B 19 */	bl Player_actor_Reinput_force_position_angle
/* 804F53E8  7F A3 EB 78 */	mr r3, r29
/* 804F53EC  38 81 00 08 */	addi r4, r1, 8
/* 804F53F0  4B FF FE 9D */	bl Player_actor_CulcAnimation_Cast_rod
/* 804F53F4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F53F8  7C 7F 1B 78 */	mr r31, r3
/* 804F53FC  7F A3 EB 78 */	mr r3, r29
/* 804F5400  7F C4 F3 78 */	mr r4, r30
/* 804F5404  4B FF FE F1 */	bl Player_actor_SearchAnimation_Cast_rod
/* 804F5408  7F A3 EB 78 */	mr r3, r29
/* 804F540C  4B FE 1C E9 */	bl Player_actor_recover_lean_angle
/* 804F5410  7F A3 EB 78 */	mr r3, r29
/* 804F5414  4B FE 00 05 */	bl Player_actor_set_eye_pattern_normal
/* 804F5418  7F A3 EB 78 */	mr r3, r29
/* 804F541C  7F C4 F3 78 */	mr r4, r30
/* 804F5420  4B FF FF 31 */	bl Player_actor_ObjCheck_Cast_rod
/* 804F5424  7F A3 EB 78 */	mr r3, r29
/* 804F5428  4B FF FF 49 */	bl Player_actor_BGcheck_Cast_rod
/* 804F542C  7F A3 EB 78 */	mr r3, r29
/* 804F5430  7F C4 F3 78 */	mr r4, r30
/* 804F5434  4B FE E8 C5 */	bl Player_actor_Item_main
/* 804F5438  7F C3 F3 78 */	mr r3, r30
/* 804F543C  7F E4 FB 78 */	mr r4, r31
/* 804F5440  4B FF FF 51 */	bl Player_actor_request_proc_index_fromCast_rod
/* 804F5444  39 61 00 20 */	addi r11, r1, 0x20
/* 804F5448  4B BA 5A D9 */	bl func_8009AF20
/* 804F544C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F5450  7C 08 03 A6 */	mtlr r0
/* 804F5454  38 21 00 20 */	addi r1, r1, 0x20
/* 804F5458  4E 80 00 20 */	blr 
