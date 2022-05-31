lbl_804ED8E0:
/* 804ED8E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ED8E4  7C 08 02 A6 */	mflr r0
/* 804ED8E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ED8EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804ED8F0  4B BA D5 E5 */	bl func_8009AED4
/* 804ED8F4  7C 7D 1B 78 */	mr r29, r3
/* 804ED8F8  7C 9E 23 78 */	mr r30, r4
/* 804ED8FC  4B FF FC AD */	bl Player_actor_Movement_Pickup
/* 804ED900  7F A3 EB 78 */	mr r3, r29
/* 804ED904  7F C4 F3 78 */	mr r4, r30
/* 804ED908  4B FE A5 F5 */	bl Player_actor_Reinput_force_position_angle
/* 804ED90C  7F A3 EB 78 */	mr r3, r29
/* 804ED910  38 81 00 08 */	addi r4, r1, 8
/* 804ED914  4B FF FC B9 */	bl Player_actor_CulcAnimation_Pickup
/* 804ED918  C0 21 00 08 */	lfs f1, 8(r1)
/* 804ED91C  7C 7F 1B 78 */	mr r31, r3
/* 804ED920  7F A3 EB 78 */	mr r3, r29
/* 804ED924  7F C4 F3 78 */	mr r4, r30
/* 804ED928  4B FF FD 79 */	bl Player_actor_SearchAnimation_Pickup
/* 804ED92C  7F A3 EB 78 */	mr r3, r29
/* 804ED930  4B FF FD CD */	bl Player_actor_Set_Item_Pickup
/* 804ED934  7F A3 EB 78 */	mr r3, r29
/* 804ED938  4B FE 97 BD */	bl Player_actor_recover_lean_angle
/* 804ED93C  7F A3 EB 78 */	mr r3, r29
/* 804ED940  4B FE 7A D9 */	bl Player_actor_set_eye_pattern_normal
/* 804ED944  7F A3 EB 78 */	mr r3, r29
/* 804ED948  7F C4 F3 78 */	mr r4, r30
/* 804ED94C  4B FF FC A1 */	bl Player_actor_ObjCheck_Pickup
/* 804ED950  7F A3 EB 78 */	mr r3, r29
/* 804ED954  4B FF FC B9 */	bl Player_actor_BGcheck_Pickup
/* 804ED958  7F A3 EB 78 */	mr r3, r29
/* 804ED95C  7F C4 F3 78 */	mr r4, r30
/* 804ED960  4B FF 63 99 */	bl Player_actor_Item_main
/* 804ED964  7F A3 EB 78 */	mr r3, r29
/* 804ED968  7F C4 F3 78 */	mr r4, r30
/* 804ED96C  7F E5 FB 78 */	mr r5, r31
/* 804ED970  4B FF FE B9 */	bl Player_actor_request_proc_index_fromPickup
/* 804ED974  39 61 00 20 */	addi r11, r1, 0x20
/* 804ED978  4B BA D5 A9 */	bl func_8009AF20
/* 804ED97C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ED980  7C 08 03 A6 */	mtlr r0
/* 804ED984  38 21 00 20 */	addi r1, r1, 0x20
/* 804ED988  4E 80 00 20 */	blr 
