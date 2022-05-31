lbl_804F71E4:
/* 804F71E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F71E8  7C 08 02 A6 */	mflr r0
/* 804F71EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F71F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F71F4  4B BA 3C E1 */	bl func_8009AED4
/* 804F71F8  7C 7D 1B 78 */	mr r29, r3
/* 804F71FC  7C 9E 23 78 */	mr r30, r4
/* 804F7200  4B FF FE 4D */	bl Player_actor_Movement_Putaway_rod
/* 804F7204  7F A3 EB 78 */	mr r3, r29
/* 804F7208  7F C4 F3 78 */	mr r4, r30
/* 804F720C  4B FE 0C F1 */	bl Player_actor_Reinput_force_position_angle
/* 804F7210  7F A3 EB 78 */	mr r3, r29
/* 804F7214  38 81 00 08 */	addi r4, r1, 8
/* 804F7218  4B FF FE 5D */	bl Player_actor_CulcAnimation_Putaway_rod
/* 804F721C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F7220  7C 7F 1B 78 */	mr r31, r3
/* 804F7224  7F A3 EB 78 */	mr r3, r29
/* 804F7228  7F C4 F3 78 */	mr r4, r30
/* 804F722C  4B FF FE A9 */	bl Player_actor_SearchAnimation_Putaway_rod
/* 804F7230  7F A3 EB 78 */	mr r3, r29
/* 804F7234  4B FD FE C1 */	bl Player_actor_recover_lean_angle
/* 804F7238  7F A3 EB 78 */	mr r3, r29
/* 804F723C  4B FD E3 09 */	bl Player_actor_set_tex_anime_pattern
/* 804F7240  7F A3 EB 78 */	mr r3, r29
/* 804F7244  7F C4 F3 78 */	mr r4, r30
/* 804F7248  4B FF FE 4D */	bl Player_actor_ObjCheck_Putaway_rod
/* 804F724C  7F A3 EB 78 */	mr r3, r29
/* 804F7250  4B FF FE 65 */	bl Player_actor_BGcheck_Putaway_rod
/* 804F7254  7F A3 EB 78 */	mr r3, r29
/* 804F7258  4B FF FE D1 */	bl Player_actor_SetTimer_Putaway_rod
/* 804F725C  7F A3 EB 78 */	mr r3, r29
/* 804F7260  7F C4 F3 78 */	mr r4, r30
/* 804F7264  4B FE CA 95 */	bl Player_actor_Item_main
/* 804F7268  7F A3 EB 78 */	mr r3, r29
/* 804F726C  7F C4 F3 78 */	mr r4, r30
/* 804F7270  7F E5 FB 78 */	mr r5, r31
/* 804F7274  4B FF FE CD */	bl Player_actor_request_proc_index_fromPutaway_rod
/* 804F7278  39 61 00 20 */	addi r11, r1, 0x20
/* 804F727C  4B BA 3C A5 */	bl func_8009AF20
/* 804F7280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F7284  7C 08 03 A6 */	mtlr r0
/* 804F7288  38 21 00 20 */	addi r1, r1, 0x20
/* 804F728C  4E 80 00 20 */	blr 
