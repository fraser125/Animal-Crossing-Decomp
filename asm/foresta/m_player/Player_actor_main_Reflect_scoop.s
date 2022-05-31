lbl_804F92F0:
/* 804F92F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F92F4  7C 08 02 A6 */	mflr r0
/* 804F92F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F92FC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9300  4B BA 1B D5 */	bl func_8009AED4
/* 804F9304  7C 7D 1B 78 */	mr r29, r3
/* 804F9308  7C 9E 23 78 */	mr r30, r4
/* 804F930C  4B FF F2 D1 */	bl Player_actor_Movement_Reflect_scoop
/* 804F9310  7F A3 EB 78 */	mr r3, r29
/* 804F9314  7F C4 F3 78 */	mr r4, r30
/* 804F9318  4B FD EB E5 */	bl Player_actor_Reinput_force_position_angle
/* 804F931C  7F A3 EB 78 */	mr r3, r29
/* 804F9320  38 81 00 08 */	addi r4, r1, 8
/* 804F9324  4B FF F3 15 */	bl Player_actor_CulcAnimation_Reflect_scoop
/* 804F9328  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F932C  7C 7F 1B 78 */	mr r31, r3
/* 804F9330  7F A3 EB 78 */	mr r3, r29
/* 804F9334  7F C4 F3 78 */	mr r4, r30
/* 804F9338  4B FF FD E9 */	bl Player_actor_SearchAnimation_Reflect_scoop
/* 804F933C  7F A3 EB 78 */	mr r3, r29
/* 804F9340  4B FD DD B5 */	bl Player_actor_recover_lean_angle
/* 804F9344  7F A3 EB 78 */	mr r3, r29
/* 804F9348  4B FD C1 FD */	bl Player_actor_set_tex_anime_pattern
/* 804F934C  7F A3 EB 78 */	mr r3, r29
/* 804F9350  7F C4 F3 78 */	mr r4, r30
/* 804F9354  4B FF FE 4D */	bl Player_actor_ObjCheck_Reflect_scoop
/* 804F9358  7F A3 EB 78 */	mr r3, r29
/* 804F935C  4B FF FE 65 */	bl Player_actor_BGcheck_Reflect_scoop
/* 804F9360  7F A3 EB 78 */	mr r3, r29
/* 804F9364  7F C4 F3 78 */	mr r4, r30
/* 804F9368  4B FE A9 91 */	bl Player_actor_Item_main
/* 804F936C  7F A3 EB 78 */	mr r3, r29
/* 804F9370  7F C4 F3 78 */	mr r4, r30
/* 804F9374  7F E5 FB 78 */	mr r5, r31
/* 804F9378  4B FF FE 69 */	bl Player_actor_request_proc_index_fromReflect_scoop
/* 804F937C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9380  4B BA 1B A1 */	bl func_8009AF20
/* 804F9384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9388  7C 08 03 A6 */	mtlr r0
/* 804F938C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9390  4E 80 00 20 */	blr 
