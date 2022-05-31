lbl_805012FC:
/* 805012FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501300  7C 08 02 A6 */	mflr r0
/* 80501304  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501308  39 61 00 20 */	addi r11, r1, 0x20
/* 8050130C  4B B9 9B C9 */	bl func_8009AED4
/* 80501310  7C 7D 1B 78 */	mr r29, r3
/* 80501314  7C 9E 23 78 */	mr r30, r4
/* 80501318  4B FF F8 ED */	bl Player_actor_Movement_Shake_tree
/* 8050131C  7F A3 EB 78 */	mr r3, r29
/* 80501320  7F C4 F3 78 */	mr r4, r30
/* 80501324  4B FD 6B D9 */	bl Player_actor_Reinput_force_position_angle
/* 80501328  7F A3 EB 78 */	mr r3, r29
/* 8050132C  38 81 00 08 */	addi r4, r1, 8
/* 80501330  4B FF F9 0D */	bl Player_actor_CulcAnimation_Shake_tree
/* 80501334  C0 21 00 08 */	lfs f1, 8(r1)
/* 80501338  7C 7F 1B 78 */	mr r31, r3
/* 8050133C  7F A3 EB 78 */	mr r3, r29
/* 80501340  7F C4 F3 78 */	mr r4, r30
/* 80501344  4B FF FD 59 */	bl Player_actor_SearchAnimation_Shake_tree
/* 80501348  7F A3 EB 78 */	mr r3, r29
/* 8050134C  4B FF FD A5 */	bl Player_actor_Check_BirthBee_Shake_tree
/* 80501350  7F A3 EB 78 */	mr r3, r29
/* 80501354  4B FD 5D A1 */	bl Player_actor_recover_lean_angle
/* 80501358  7F A3 EB 78 */	mr r3, r29
/* 8050135C  4B FD 41 E9 */	bl Player_actor_set_tex_anime_pattern
/* 80501360  7F A3 EB 78 */	mr r3, r29
/* 80501364  7F C4 F3 78 */	mr r4, r30
/* 80501368  4B FF FE 05 */	bl Player_actor_ObjCheck_Shake_tree
/* 8050136C  7F A3 EB 78 */	mr r3, r29
/* 80501370  4B FF FE 1D */	bl Player_actor_BGcheck_Shake_tree
/* 80501374  7F A3 EB 78 */	mr r3, r29
/* 80501378  7F C4 F3 78 */	mr r4, r30
/* 8050137C  4B FE 29 7D */	bl Player_actor_Item_main
/* 80501380  7F A3 EB 78 */	mr r3, r29
/* 80501384  7F C4 F3 78 */	mr r4, r30
/* 80501388  7F E5 FB 78 */	mr r5, r31
/* 8050138C  4B FF FE 21 */	bl Player_actor_request_proc_index_fromShake_tree
/* 80501390  39 61 00 20 */	addi r11, r1, 0x20
/* 80501394  4B B9 9B 8D */	bl func_8009AF20
/* 80501398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050139C  7C 08 03 A6 */	mtlr r0
/* 805013A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805013A4  4E 80 00 20 */	blr 
