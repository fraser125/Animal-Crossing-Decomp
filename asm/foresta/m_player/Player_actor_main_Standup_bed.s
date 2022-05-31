lbl_804ED300:
/* 804ED300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ED304  7C 08 02 A6 */	mflr r0
/* 804ED308  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ED30C  39 61 00 20 */	addi r11, r1, 0x20
/* 804ED310  4B BA DB C5 */	bl func_8009AED4
/* 804ED314  7C 9E 23 78 */	mr r30, r4
/* 804ED318  7C 7D 1B 78 */	mr r29, r3
/* 804ED31C  38 81 00 08 */	addi r4, r1, 8
/* 804ED320  4B FF FC 81 */	bl Player_actor_CulcAnimation_Standup_bed
/* 804ED324  C0 21 00 08 */	lfs f1, 8(r1)
/* 804ED328  7C 7F 1B 78 */	mr r31, r3
/* 804ED32C  7F A3 EB 78 */	mr r3, r29
/* 804ED330  4B FF FC D9 */	bl Player_actor_SearchAnimation_Standup_bed
/* 804ED334  7F A3 EB 78 */	mr r3, r29
/* 804ED338  4B FF FF 05 */	bl Player_actor_Movement_Standup_bed
/* 804ED33C  7F A3 EB 78 */	mr r3, r29
/* 804ED340  7F C4 F3 78 */	mr r4, r30
/* 804ED344  4B FE AB B9 */	bl Player_actor_Reinput_force_position_angle
/* 804ED348  7F A3 EB 78 */	mr r3, r29
/* 804ED34C  4B FE 80 CD */	bl Player_actor_set_eye_pattern_normal
/* 804ED350  7F A3 EB 78 */	mr r3, r29
/* 804ED354  7F C4 F3 78 */	mr r4, r30
/* 804ED358  4B FF FF 31 */	bl Player_actor_ObjCheck_Standup_bed
/* 804ED35C  7F A3 EB 78 */	mr r3, r29
/* 804ED360  7F C4 F3 78 */	mr r4, r30
/* 804ED364  4B FF 69 95 */	bl Player_actor_Item_main
/* 804ED368  7F A3 EB 78 */	mr r3, r29
/* 804ED36C  7F C4 F3 78 */	mr r4, r30
/* 804ED370  7F E5 FB 78 */	mr r5, r31
/* 804ED374  4B FF FF 35 */	bl Player_actor_request_proc_index_fromStandup_bed
/* 804ED378  39 61 00 20 */	addi r11, r1, 0x20
/* 804ED37C  4B BA DB A5 */	bl func_8009AF20
/* 804ED380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ED384  7C 08 03 A6 */	mtlr r0
/* 804ED388  38 21 00 20 */	addi r1, r1, 0x20
/* 804ED38C  4E 80 00 20 */	blr 
