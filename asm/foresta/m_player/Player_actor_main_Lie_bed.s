lbl_804EC3A4:
/* 804EC3A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EC3A8  7C 08 02 A6 */	mflr r0
/* 804EC3AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EC3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804EC3B4  4B BA EB 21 */	bl func_8009AED4
/* 804EC3B8  7C 9E 23 78 */	mr r30, r4
/* 804EC3BC  7C 7D 1B 78 */	mr r29, r3
/* 804EC3C0  38 81 00 08 */	addi r4, r1, 8
/* 804EC3C4  4B FF FB E1 */	bl Player_actor_CulcAnimation_Lie_bed
/* 804EC3C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EC3CC  7C 7F 1B 78 */	mr r31, r3
/* 804EC3D0  7F A3 EB 78 */	mr r3, r29
/* 804EC3D4  4B FF FC 39 */	bl Player_actor_SearchAnimation_Lie_bed
/* 804EC3D8  7F A3 EB 78 */	mr r3, r29
/* 804EC3DC  4B FF FF 51 */	bl Player_actor_Movement_Lie_bed
/* 804EC3E0  7F A3 EB 78 */	mr r3, r29
/* 804EC3E4  7F C4 F3 78 */	mr r4, r30
/* 804EC3E8  4B FE BB 15 */	bl Player_actor_Reinput_force_position_angle
/* 804EC3EC  7F A3 EB 78 */	mr r3, r29
/* 804EC3F0  4B FE 90 29 */	bl Player_actor_set_eye_pattern_normal
/* 804EC3F4  7F A3 EB 78 */	mr r3, r29
/* 804EC3F8  7F C4 F3 78 */	mr r4, r30
/* 804EC3FC  4B FF 78 FD */	bl Player_actor_Item_main
/* 804EC400  7F C3 F3 78 */	mr r3, r30
/* 804EC404  7F E4 FB 78 */	mr r4, r31
/* 804EC408  4B FF FF 71 */	bl Player_actor_request_proc_index_fromLie_bed
/* 804EC40C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EC410  4B BA EB 11 */	bl func_8009AF20
/* 804EC414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EC418  7C 08 03 A6 */	mtlr r0
/* 804EC41C  38 21 00 20 */	addi r1, r1, 0x20
/* 804EC420  4E 80 00 20 */	blr 
