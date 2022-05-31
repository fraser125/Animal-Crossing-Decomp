lbl_80503728:
/* 80503728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050372C  7C 08 02 A6 */	mflr r0
/* 80503730  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503734  39 61 00 20 */	addi r11, r1, 0x20
/* 80503738  4B B9 77 9D */	bl func_8009AED4
/* 8050373C  7C 7D 1B 78 */	mr r29, r3
/* 80503740  7C 9E 23 78 */	mr r30, r4
/* 80503744  4B FF FD 61 */	bl Player_actor_Movement_Remove_grass
/* 80503748  7F A3 EB 78 */	mr r3, r29
/* 8050374C  7F C4 F3 78 */	mr r4, r30
/* 80503750  4B FD 47 AD */	bl Player_actor_Reinput_force_position_angle
/* 80503754  7F A3 EB 78 */	mr r3, r29
/* 80503758  38 81 00 08 */	addi r4, r1, 8
/* 8050375C  4B FF FD 6D */	bl Player_actor_CulcAnimation_Remove_grass
/* 80503760  C0 21 00 08 */	lfs f1, 8(r1)
/* 80503764  7C 7F 1B 78 */	mr r31, r3
/* 80503768  7F A3 EB 78 */	mr r3, r29
/* 8050376C  7F C4 F3 78 */	mr r4, r30
/* 80503770  4B FF FE D5 */	bl Player_actor_SearchAnimation_Remove_grass
/* 80503774  7F A3 EB 78 */	mr r3, r29
/* 80503778  4B FD 39 7D */	bl Player_actor_recover_lean_angle
/* 8050377C  7F A3 EB 78 */	mr r3, r29
/* 80503780  4B FD 1C 99 */	bl Player_actor_set_eye_pattern_normal
/* 80503784  7F A3 EB 78 */	mr r3, r29
/* 80503788  7F C4 F3 78 */	mr r4, r30
/* 8050378C  4B FF FF 05 */	bl Player_actor_ObjCheck_Remove_grass
/* 80503790  7F A3 EB 78 */	mr r3, r29
/* 80503794  4B FF FF 1D */	bl Player_actor_BGcheck_Remove_grass
/* 80503798  7F A3 EB 78 */	mr r3, r29
/* 8050379C  7F C4 F3 78 */	mr r4, r30
/* 805037A0  4B FE 05 59 */	bl Player_actor_Item_main
/* 805037A4  7F A3 EB 78 */	mr r3, r29
/* 805037A8  7F C4 F3 78 */	mr r4, r30
/* 805037AC  7F E5 FB 78 */	mr r5, r31
/* 805037B0  4B FF FF 21 */	bl Player_actor_request_proc_index_fromRemove_grass
/* 805037B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805037B8  4B B9 77 69 */	bl func_8009AF20
/* 805037BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805037C0  7C 08 03 A6 */	mtlr r0
/* 805037C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805037C8  4E 80 00 20 */	blr 
