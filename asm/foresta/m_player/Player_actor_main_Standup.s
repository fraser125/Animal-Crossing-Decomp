lbl_804EF928:
/* 804EF928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EF92C  7C 08 02 A6 */	mflr r0
/* 804EF930  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EF934  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF938  4B BA B5 9D */	bl func_8009AED4
/* 804EF93C  7C 9E 23 78 */	mr r30, r4
/* 804EF940  7C 7D 1B 78 */	mr r29, r3
/* 804EF944  38 81 00 08 */	addi r4, r1, 8
/* 804EF948  4B FF FE 41 */	bl Player_actor_CulcAnimation_Standup
/* 804EF94C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EF950  7C 7F 1B 78 */	mr r31, r3
/* 804EF954  7F A3 EB 78 */	mr r3, r29
/* 804EF958  4B FF FE C9 */	bl Player_actor_SearchAnimation_Standup
/* 804EF95C  7F A3 EB 78 */	mr r3, r29
/* 804EF960  4B FF FF 05 */	bl Player_actor_Movement_Standup
/* 804EF964  7F A3 EB 78 */	mr r3, r29
/* 804EF968  7F C4 F3 78 */	mr r4, r30
/* 804EF96C  4B FE 85 91 */	bl Player_actor_Reinput_force_position_angle
/* 804EF970  7F A3 EB 78 */	mr r3, r29
/* 804EF974  4B FE 77 81 */	bl Player_actor_recover_lean_angle
/* 804EF978  7F A3 EB 78 */	mr r3, r29
/* 804EF97C  4B FE 5A 9D */	bl Player_actor_set_eye_pattern_normal
/* 804EF980  7F A3 EB 78 */	mr r3, r29
/* 804EF984  7F C4 F3 78 */	mr r4, r30
/* 804EF988  4B FF FF 29 */	bl Player_actor_ObjCheck_Standup
/* 804EF98C  7F A3 EB 78 */	mr r3, r29
/* 804EF990  7F C4 F3 78 */	mr r4, r30
/* 804EF994  4B FF 43 65 */	bl Player_actor_Item_main
/* 804EF998  7F A3 EB 78 */	mr r3, r29
/* 804EF99C  7F C4 F3 78 */	mr r4, r30
/* 804EF9A0  7F E5 FB 78 */	mr r5, r31
/* 804EF9A4  4B FF FF 2D */	bl Player_actor_request_proc_index_fromStandup
/* 804EF9A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF9AC  4B BA B5 75 */	bl func_8009AF20
/* 804EF9B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EF9B4  7C 08 03 A6 */	mtlr r0
/* 804EF9B8  38 21 00 20 */	addi r1, r1, 0x20
/* 804EF9BC  4E 80 00 20 */	blr 
