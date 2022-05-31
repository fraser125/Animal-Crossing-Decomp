lbl_80508390:
/* 80508390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80508394  7C 08 02 A6 */	mflr r0
/* 80508398  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050839C  39 61 00 20 */	addi r11, r1, 0x20
/* 805083A0  4B B9 2B 35 */	bl func_8009AED4
/* 805083A4  7C 9E 23 78 */	mr r30, r4
/* 805083A8  7C 7D 1B 78 */	mr r29, r3
/* 805083AC  38 81 00 08 */	addi r4, r1, 8
/* 805083B0  4B FF FE 51 */	bl Player_actor_CulcAnimation_Demo_getoff_boat
/* 805083B4  C0 21 00 08 */	lfs f1, 8(r1)
/* 805083B8  7C 7F 1B 78 */	mr r31, r3
/* 805083BC  7F A3 EB 78 */	mr r3, r29
/* 805083C0  4B FF FE D9 */	bl Player_actor_SearchAnimation_Demo_getoff_boat
/* 805083C4  7F A3 EB 78 */	mr r3, r29
/* 805083C8  4B FF FF 15 */	bl Player_actor_Movement_Demo_getoff_boat
/* 805083CC  7F A3 EB 78 */	mr r3, r29
/* 805083D0  4B FC FA 69 */	bl Player_actor_Reset_force_position_angle
/* 805083D4  7F A3 EB 78 */	mr r3, r29
/* 805083D8  4B FC ED 1D */	bl Player_actor_recover_lean_angle
/* 805083DC  7F A3 EB 78 */	mr r3, r29
/* 805083E0  4B FC D0 39 */	bl Player_actor_set_eye_pattern_normal
/* 805083E4  7F A3 EB 78 */	mr r3, r29
/* 805083E8  7F C4 F3 78 */	mr r4, r30
/* 805083EC  4B FF FF 3D */	bl Player_actor_ObjCheck_Demo_getoff_boat
/* 805083F0  7F A3 EB 78 */	mr r3, r29
/* 805083F4  7F C4 F3 78 */	mr r4, r30
/* 805083F8  4B FD B9 01 */	bl Player_actor_Item_main
/* 805083FC  7F A3 EB 78 */	mr r3, r29
/* 80508400  7F C4 F3 78 */	mr r4, r30
/* 80508404  7F E5 FB 78 */	mr r5, r31
/* 80508408  4B FF FF 41 */	bl Player_actor_request_proc_index_fromDemo_getoff_boat
/* 8050840C  39 61 00 20 */	addi r11, r1, 0x20
/* 80508410  4B B9 2B 11 */	bl func_8009AF20
/* 80508414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80508418  7C 08 03 A6 */	mtlr r0
/* 8050841C  38 21 00 20 */	addi r1, r1, 0x20
/* 80508420  4E 80 00 20 */	blr 
