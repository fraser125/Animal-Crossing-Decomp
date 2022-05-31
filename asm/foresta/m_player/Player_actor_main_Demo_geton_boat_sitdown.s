lbl_80507520:
/* 80507520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80507524  7C 08 02 A6 */	mflr r0
/* 80507528  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050752C  39 61 00 20 */	addi r11, r1, 0x20
/* 80507530  4B B9 39 A5 */	bl func_8009AED4
/* 80507534  7C 7D 1B 78 */	mr r29, r3
/* 80507538  7C 9E 23 78 */	mr r30, r4
/* 8050753C  4B FF FB E9 */	bl Player_actor_Movement_Demo_geton_boat_sitdown
/* 80507540  7F A3 EB 78 */	mr r3, r29
/* 80507544  4B FD 08 F5 */	bl Player_actor_Reset_force_position_angle
/* 80507548  7F A3 EB 78 */	mr r3, r29
/* 8050754C  38 81 00 08 */	addi r4, r1, 8
/* 80507550  4B FF FE B9 */	bl Player_actor_CulcAnimation_Demo_geton_boat_sitdown
/* 80507554  C0 21 00 08 */	lfs f1, 8(r1)
/* 80507558  7C 7F 1B 78 */	mr r31, r3
/* 8050755C  7F A3 EB 78 */	mr r3, r29
/* 80507560  4B FF FF 45 */	bl Player_actor_SearchAnimation_Demo_geton_boat_sitdown
/* 80507564  7F A3 EB 78 */	mr r3, r29
/* 80507568  4B FC FB 8D */	bl Player_actor_recover_lean_angle
/* 8050756C  7F A3 EB 78 */	mr r3, r29
/* 80507570  4B FC DE A9 */	bl Player_actor_set_eye_pattern_normal
/* 80507574  7F A3 EB 78 */	mr r3, r29
/* 80507578  7F C4 F3 78 */	mr r4, r30
/* 8050757C  4B FD C7 7D */	bl Player_actor_Item_main
/* 80507580  7F A3 EB 78 */	mr r3, r29
/* 80507584  7F C4 F3 78 */	mr r4, r30
/* 80507588  7F E5 FB 78 */	mr r5, r31
/* 8050758C  4B FF FF 55 */	bl Player_actor_request_proc_index_fromDemo_geton_boat_sitdown
/* 80507590  39 61 00 20 */	addi r11, r1, 0x20
/* 80507594  4B B9 39 8D */	bl func_8009AF20
/* 80507598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050759C  7C 08 03 A6 */	mtlr r0
/* 805075A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805075A4  4E 80 00 20 */	blr 
