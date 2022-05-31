lbl_805028B4:
/* 805028B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805028B8  7C 08 02 A6 */	mflr r0
/* 805028BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805028C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805028C4  4B B9 86 11 */	bl func_8009AED4
/* 805028C8  7C 9E 23 78 */	mr r30, r4
/* 805028CC  7C 7D 1B 78 */	mr r29, r3
/* 805028D0  38 81 00 08 */	addi r4, r1, 8
/* 805028D4  4B FF FE AD */	bl Player_actor_CulcAnimation_Climbup_pitfall
/* 805028D8  7C 60 1B 78 */	mr r0, r3
/* 805028DC  7F A3 EB 78 */	mr r3, r29
/* 805028E0  7C 1F 03 78 */	mr r31, r0
/* 805028E4  4B FF FE BD */	bl Player_actor_Movement_Climbup_pitfall
/* 805028E8  7F A3 EB 78 */	mr r3, r29
/* 805028EC  7F C4 F3 78 */	mr r4, r30
/* 805028F0  4B FD 56 0D */	bl Player_actor_Reinput_force_position_angle
/* 805028F4  7F A3 EB 78 */	mr r3, r29
/* 805028F8  4B FF FE F5 */	bl Player_actor_SearchAnimation_Climbup_pitfall
/* 805028FC  7F A3 EB 78 */	mr r3, r29
/* 80502900  4B FD 47 F5 */	bl Player_actor_recover_lean_angle
/* 80502904  7F A3 EB 78 */	mr r3, r29
/* 80502908  4B FF FF 15 */	bl Player_actor_set_eye_pattern_Climbup_pitfall
/* 8050290C  7F A3 EB 78 */	mr r3, r29
/* 80502910  7F C4 F3 78 */	mr r4, r30
/* 80502914  4B FF FF 29 */	bl Player_actor_ObjCheck_Climbup_pitfall
/* 80502918  7F A3 EB 78 */	mr r3, r29
/* 8050291C  7F C4 F3 78 */	mr r4, r30
/* 80502920  4B FE 13 D9 */	bl Player_actor_Item_main
/* 80502924  7F A3 EB 78 */	mr r3, r29
/* 80502928  7F C4 F3 78 */	mr r4, r30
/* 8050292C  7F E5 FB 78 */	mr r5, r31
/* 80502930  4B FF FF 2D */	bl Player_actor_request_proc_index_fromClimbup_pitfall
/* 80502934  39 61 00 20 */	addi r11, r1, 0x20
/* 80502938  4B B9 85 E9 */	bl func_8009AF20
/* 8050293C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80502940  7C 08 03 A6 */	mtlr r0
/* 80502944  38 21 00 20 */	addi r1, r1, 0x20
/* 80502948  4E 80 00 20 */	blr 
