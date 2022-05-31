lbl_804F5770:
/* 804F5770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F5774  7C 08 02 A6 */	mflr r0
/* 804F5778  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F577C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F5780  4B BA 57 55 */	bl func_8009AED4
/* 804F5784  7C 7D 1B 78 */	mr r29, r3
/* 804F5788  7C 9E 23 78 */	mr r30, r4
/* 804F578C  4B FF FE 61 */	bl Player_actor_Movement_Air_rod
/* 804F5790  7F A3 EB 78 */	mr r3, r29
/* 804F5794  7F C4 F3 78 */	mr r4, r30
/* 804F5798  4B FE 27 65 */	bl Player_actor_Reinput_force_position_angle
/* 804F579C  7F A3 EB 78 */	mr r3, r29
/* 804F57A0  38 81 00 08 */	addi r4, r1, 8
/* 804F57A4  4B FF FE 71 */	bl Player_actor_CulcAnimation_Air_rod
/* 804F57A8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F57AC  7C 7F 1B 78 */	mr r31, r3
/* 804F57B0  7F A3 EB 78 */	mr r3, r29
/* 804F57B4  7F C4 F3 78 */	mr r4, r30
/* 804F57B8  4B FF FE C5 */	bl Player_actor_SearchAnimation_Air_rod
/* 804F57BC  7F A3 EB 78 */	mr r3, r29
/* 804F57C0  4B FE 19 35 */	bl Player_actor_recover_lean_angle
/* 804F57C4  7F A3 EB 78 */	mr r3, r29
/* 804F57C8  4B FD FD 7D */	bl Player_actor_set_tex_anime_pattern
/* 804F57CC  7F A3 EB 78 */	mr r3, r29
/* 804F57D0  7F C4 F3 78 */	mr r4, r30
/* 804F57D4  4B FF FF 05 */	bl Player_actor_ObjCheck_Air_rod
/* 804F57D8  7F A3 EB 78 */	mr r3, r29
/* 804F57DC  4B FF FF 1D */	bl Player_actor_BGcheck_Air_rod
/* 804F57E0  7F A3 EB 78 */	mr r3, r29
/* 804F57E4  7F C4 F3 78 */	mr r4, r30
/* 804F57E8  4B FE E5 11 */	bl Player_actor_Item_main
/* 804F57EC  7F A3 EB 78 */	mr r3, r29
/* 804F57F0  7F C4 F3 78 */	mr r4, r30
/* 804F57F4  7F E5 FB 78 */	mr r5, r31
/* 804F57F8  4B FF FF 21 */	bl Player_actor_request_proc_index_fromAir_rod
/* 804F57FC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F5800  4B BA 57 21 */	bl func_8009AF20
/* 804F5804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F5808  7C 08 03 A6 */	mtlr r0
/* 804F580C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F5810  4E 80 00 20 */	blr 
