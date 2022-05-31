lbl_8050418C:
/* 8050418C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80504190  7C 08 02 A6 */	mflr r0
/* 80504194  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504198  39 61 00 20 */	addi r11, r1, 0x20
/* 8050419C  4B B9 6D 39 */	bl func_8009AED4
/* 805041A0  7C 9E 23 78 */	mr r30, r4
/* 805041A4  7C 7D 1B 78 */	mr r29, r3
/* 805041A8  38 81 00 08 */	addi r4, r1, 8
/* 805041AC  4B FF FE 31 */	bl Player_actor_CulcAnimation_Knock_door
/* 805041B0  7C 60 1B 78 */	mr r0, r3
/* 805041B4  7F A3 EB 78 */	mr r3, r29
/* 805041B8  7C 1F 03 78 */	mr r31, r0
/* 805041BC  4B FF FE 41 */	bl Player_actor_Movement_Knock_door
/* 805041C0  7F A3 EB 78 */	mr r3, r29
/* 805041C4  7F C4 F3 78 */	mr r4, r30
/* 805041C8  4B FD 3D 35 */	bl Player_actor_Reinput_force_position_angle
/* 805041CC  C0 21 00 08 */	lfs f1, 8(r1)
/* 805041D0  7F A3 EB 78 */	mr r3, r29
/* 805041D4  4B FF FE E1 */	bl Player_actor_SearchAnimation_Knock_door
/* 805041D8  7F A3 EB 78 */	mr r3, r29
/* 805041DC  4B FD 2F 19 */	bl Player_actor_recover_lean_angle
/* 805041E0  7F A3 EB 78 */	mr r3, r29
/* 805041E4  4B FD 12 35 */	bl Player_actor_set_eye_pattern_normal
/* 805041E8  7F A3 EB 78 */	mr r3, r29
/* 805041EC  7F C4 F3 78 */	mr r4, r30
/* 805041F0  4B FF FF 01 */	bl Player_actor_ObjCheck_Knock_door
/* 805041F4  7F A3 EB 78 */	mr r3, r29
/* 805041F8  4B FF FF 19 */	bl Player_actor_BGcheck_Knock_door
/* 805041FC  7F A3 EB 78 */	mr r3, r29
/* 80504200  7F C4 F3 78 */	mr r4, r30
/* 80504204  4B FD FA F5 */	bl Player_actor_Item_main
/* 80504208  7F A3 EB 78 */	mr r3, r29
/* 8050420C  7F C4 F3 78 */	mr r4, r30
/* 80504210  7F E5 FB 78 */	mr r5, r31
/* 80504214  4B FF FF 1D */	bl Player_actor_request_proc_index_fromKnock_door
/* 80504218  39 61 00 20 */	addi r11, r1, 0x20
/* 8050421C  4B B9 6D 05 */	bl func_8009AF20
/* 80504220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504224  7C 08 03 A6 */	mtlr r0
/* 80504228  38 21 00 20 */	addi r1, r1, 0x20
/* 8050422C  4E 80 00 20 */	blr 
