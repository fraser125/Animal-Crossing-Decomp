lbl_804E8470:
/* 804E8470  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8474  7C 08 02 A6 */	mflr r0
/* 804E8478  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E847C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8480  4B BB 2A 55 */	bl func_8009AED4
/* 804E8484  7C 7D 1B 78 */	mr r29, r3
/* 804E8488  7C 9E 23 78 */	mr r30, r4
/* 804E848C  4B FF F8 C1 */	bl Player_actor_Movement_Tumble
/* 804E8490  7F A3 EB 78 */	mr r3, r29
/* 804E8494  38 81 00 08 */	addi r4, r1, 8
/* 804E8498  4B FF F9 C9 */	bl Player_actor_CulcAnimation_Tumble
/* 804E849C  7C 60 1B 78 */	mr r0, r3
/* 804E84A0  7F A3 EB 78 */	mr r3, r29
/* 804E84A4  7C 1F 03 78 */	mr r31, r0
/* 804E84A8  7F C4 F3 78 */	mr r4, r30
/* 804E84AC  4B FE FA 51 */	bl Player_actor_Reinput_force_position_angle
/* 804E84B0  7F A3 EB 78 */	mr r3, r29
/* 804E84B4  4B FE D0 91 */	bl Player_actor_set_tex_anime_pattern
/* 804E84B8  7F A3 EB 78 */	mr r3, r29
/* 804E84BC  7F C4 F3 78 */	mr r4, r30
/* 804E84C0  4B FF FB 11 */	bl Player_actor_ObjCheck_Tumble
/* 804E84C4  7F A3 EB 78 */	mr r3, r29
/* 804E84C8  4B FF FB 29 */	bl Player_actor_BGcheck_Tumble
/* 804E84CC  7F A3 EB 78 */	mr r3, r29
/* 804E84D0  7F C4 F3 78 */	mr r4, r30
/* 804E84D4  4B FF B8 25 */	bl Player_actor_Item_main
/* 804E84D8  7F A3 EB 78 */	mr r3, r29
/* 804E84DC  7F C4 F3 78 */	mr r4, r30
/* 804E84E0  7F E5 FB 78 */	mr r5, r31
/* 804E84E4  4B FF FF 01 */	bl Player_actor_request_proc_index_fromTumble_getup
/* 804E84E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804E84EC  4B BB 2A 35 */	bl func_8009AF20
/* 804E84F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E84F4  7C 08 03 A6 */	mtlr r0
/* 804E84F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804E84FC  4E 80 00 20 */	blr 
