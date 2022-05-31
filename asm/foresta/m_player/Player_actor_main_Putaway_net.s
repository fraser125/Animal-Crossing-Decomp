lbl_804F4B44:
/* 804F4B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F4B48  7C 08 02 A6 */	mflr r0
/* 804F4B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F4B50  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4B54  4B BA 63 81 */	bl func_8009AED4
/* 804F4B58  7C 7D 1B 78 */	mr r29, r3
/* 804F4B5C  7C 9E 23 78 */	mr r30, r4
/* 804F4B60  4B FF FD 89 */	bl Player_actor_Movement_Putaway_net
/* 804F4B64  7F A3 EB 78 */	mr r3, r29
/* 804F4B68  7F C4 F3 78 */	mr r4, r30
/* 804F4B6C  4B FE 33 91 */	bl Player_actor_Reinput_force_position_angle
/* 804F4B70  7F A3 EB 78 */	mr r3, r29
/* 804F4B74  38 81 00 08 */	addi r4, r1, 8
/* 804F4B78  4B FF FD 99 */	bl Player_actor_CulcAnimation_Putaway_net
/* 804F4B7C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F4B80  7C 7F 1B 78 */	mr r31, r3
/* 804F4B84  7F A3 EB 78 */	mr r3, r29
/* 804F4B88  7F C4 F3 78 */	mr r4, r30
/* 804F4B8C  4B FF FE 8D */	bl Player_actor_SearchAnimation_Putaway_net
/* 804F4B90  7F A3 EB 78 */	mr r3, r29
/* 804F4B94  4B FE 25 61 */	bl Player_actor_recover_lean_angle
/* 804F4B98  7F A3 EB 78 */	mr r3, r29
/* 804F4B9C  4B FE 08 7D */	bl Player_actor_set_eye_pattern_normal
/* 804F4BA0  7F A3 EB 78 */	mr r3, r29
/* 804F4BA4  7F C4 F3 78 */	mr r4, r30
/* 804F4BA8  4B FF FE BD */	bl Player_actor_ObjCheck_Putaway_net
/* 804F4BAC  7F A3 EB 78 */	mr r3, r29
/* 804F4BB0  4B FF FE D5 */	bl Player_actor_BGcheck_Putaway_net
/* 804F4BB4  7F A3 EB 78 */	mr r3, r29
/* 804F4BB8  7F C4 F3 78 */	mr r4, r30
/* 804F4BBC  4B FE F1 3D */	bl Player_actor_Item_main
/* 804F4BC0  7F A3 EB 78 */	mr r3, r29
/* 804F4BC4  7F C4 F3 78 */	mr r4, r30
/* 804F4BC8  7F E5 FB 78 */	mr r5, r31
/* 804F4BCC  4B FF FE D9 */	bl Player_actor_request_proc_index_fromPutaway_net
/* 804F4BD0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4BD4  4B BA 63 4D */	bl func_8009AF20
/* 804F4BD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F4BDC  7C 08 03 A6 */	mtlr r0
/* 804F4BE0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F4BE4  4E 80 00 20 */	blr 
