lbl_804FF6B0:
/* 804FF6B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FF6B4  7C 08 02 A6 */	mflr r0
/* 804FF6B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FF6BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804FF6C0  4B B9 B8 15 */	bl func_8009AED4
/* 804FF6C4  7C 7D 1B 78 */	mr r29, r3
/* 804FF6C8  7C 9E 23 78 */	mr r30, r4
/* 804FF6CC  4B FF F7 BD */	bl Player_actor_Movement_Release_creature
/* 804FF6D0  7F A3 EB 78 */	mr r3, r29
/* 804FF6D4  7F C4 F3 78 */	mr r4, r30
/* 804FF6D8  4B FD 88 25 */	bl Player_actor_Reinput_force_position_angle
/* 804FF6DC  7F A3 EB 78 */	mr r3, r29
/* 804FF6E0  4B FF F7 D1 */	bl Player_actor_CulcAnimation_Release_creature
/* 804FF6E4  7F A3 EB 78 */	mr r3, r29
/* 804FF6E8  4B FD 7A 0D */	bl Player_actor_recover_lean_angle
/* 804FF6EC  7F A3 EB 78 */	mr r3, r29
/* 804FF6F0  4B FD 5D 29 */	bl Player_actor_set_eye_pattern_normal
/* 804FF6F4  7F A3 EB 78 */	mr r3, r29
/* 804FF6F8  7F C4 F3 78 */	mr r4, r30
/* 804FF6FC  4B FF F7 D9 */	bl Player_actor_ObjCheck_Release_creature
/* 804FF700  7F A3 EB 78 */	mr r3, r29
/* 804FF704  4B FF F7 F1 */	bl Player_actor_BGcheck_Release_creature
/* 804FF708  7F A3 EB 78 */	mr r3, r29
/* 804FF70C  4B FF FB B1 */	bl Player_actor_Look_Release_creature
/* 804FF710  7C 60 1B 78 */	mr r0, r3
/* 804FF714  7F A3 EB 78 */	mr r3, r29
/* 804FF718  7C 1F 03 78 */	mr r31, r0
/* 804FF71C  7F C4 F3 78 */	mr r4, r30
/* 804FF720  4B FE 45 D9 */	bl Player_actor_Item_main
/* 804FF724  7F A3 EB 78 */	mr r3, r29
/* 804FF728  7F C4 F3 78 */	mr r4, r30
/* 804FF72C  7F E5 FB 78 */	mr r5, r31
/* 804FF730  4B FF FE C1 */	bl Player_actor_request_proc_index_fromRelease_creature
/* 804FF734  39 61 00 20 */	addi r11, r1, 0x20
/* 804FF738  4B B9 B7 E9 */	bl func_8009AF20
/* 804FF73C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FF740  7C 08 03 A6 */	mtlr r0
/* 804FF744  38 21 00 20 */	addi r1, r1, 0x20
/* 804FF748  4E 80 00 20 */	blr 
