lbl_804F9DF8:
/* 804F9DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F9DFC  7C 08 02 A6 */	mflr r0
/* 804F9E00  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F9E04  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9E08  4B BA 10 CD */	bl func_8009AED4
/* 804F9E0C  7C 7D 1B 78 */	mr r29, r3
/* 804F9E10  7C 9E 23 78 */	mr r30, r4
/* 804F9E14  4B FF FE 31 */	bl Player_actor_Movement_Putaway_scoop
/* 804F9E18  7F A3 EB 78 */	mr r3, r29
/* 804F9E1C  7F C4 F3 78 */	mr r4, r30
/* 804F9E20  4B FD E0 DD */	bl Player_actor_Reinput_force_position_angle
/* 804F9E24  7F A3 EB 78 */	mr r3, r29
/* 804F9E28  38 81 00 08 */	addi r4, r1, 8
/* 804F9E2C  4B FF FE 41 */	bl Player_actor_CulcAnimation_Putaway_scoop
/* 804F9E30  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F9E34  7C 7F 1B 78 */	mr r31, r3
/* 804F9E38  7F A3 EB 78 */	mr r3, r29
/* 804F9E3C  7F C4 F3 78 */	mr r4, r30
/* 804F9E40  4B FF FE 8D */	bl Player_actor_SearchAnimation_Putaway_scoop
/* 804F9E44  7F A3 EB 78 */	mr r3, r29
/* 804F9E48  4B FD D2 AD */	bl Player_actor_recover_lean_angle
/* 804F9E4C  7F A3 EB 78 */	mr r3, r29
/* 804F9E50  4B FD B6 F5 */	bl Player_actor_set_tex_anime_pattern
/* 804F9E54  7F A3 EB 78 */	mr r3, r29
/* 804F9E58  7F C4 F3 78 */	mr r4, r30
/* 804F9E5C  4B FF FE 31 */	bl Player_actor_ObjCheck_Putaway_scoop
/* 804F9E60  7F A3 EB 78 */	mr r3, r29
/* 804F9E64  4B FF FE 49 */	bl Player_actor_BGcheck_Putaway_scoop
/* 804F9E68  7F A3 EB 78 */	mr r3, r29
/* 804F9E6C  4B FF FE B5 */	bl Player_actor_Set_Item_Putaway_scoop
/* 804F9E70  7F A3 EB 78 */	mr r3, r29
/* 804F9E74  7F C4 F3 78 */	mr r4, r30
/* 804F9E78  4B FE 9E 81 */	bl Player_actor_Item_main
/* 804F9E7C  7F A3 EB 78 */	mr r3, r29
/* 804F9E80  7F C4 F3 78 */	mr r4, r30
/* 804F9E84  7F E5 FB 78 */	mr r5, r31
/* 804F9E88  4B FF FE B1 */	bl Player_actor_request_proc_index_fromPutaway_scoop
/* 804F9E8C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9E90  4B BA 10 91 */	bl func_8009AF20
/* 804F9E94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9E98  7C 08 03 A6 */	mtlr r0
/* 804F9E9C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9EA0  4E 80 00 20 */	blr 
