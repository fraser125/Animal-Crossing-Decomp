lbl_804FB50C:
/* 804FB50C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB510  7C 08 02 A6 */	mflr r0
/* 804FB514  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB518  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB51C  4B B9 F9 B9 */	bl func_8009AED4
/* 804FB520  7C 7D 1B 78 */	mr r29, r3
/* 804FB524  7C 9E 23 78 */	mr r30, r4
/* 804FB528  4B FF FF 0D */	bl Player_actor_Movement_Recieve_stretch
/* 804FB52C  7F A3 EB 78 */	mr r3, r29
/* 804FB530  7F C4 F3 78 */	mr r4, r30
/* 804FB534  4B FD C9 C9 */	bl Player_actor_Reinput_force_position_angle
/* 804FB538  7F A3 EB 78 */	mr r3, r29
/* 804FB53C  4B FF FF 1D */	bl Player_actor_CulcAnimation_Recieve_stretch
/* 804FB540  7C 60 1B 78 */	mr r0, r3
/* 804FB544  7F A3 EB 78 */	mr r3, r29
/* 804FB548  7C 1F 03 78 */	mr r31, r0
/* 804FB54C  4B FD BB A9 */	bl Player_actor_recover_lean_angle
/* 804FB550  7F A3 EB 78 */	mr r3, r29
/* 804FB554  4B FD 9E C5 */	bl Player_actor_set_eye_pattern_normal
/* 804FB558  7F A3 EB 78 */	mr r3, r29
/* 804FB55C  7F C4 F3 78 */	mr r4, r30
/* 804FB560  4B FF FF 1D */	bl Player_actor_ObjCheck_Recieve_stretch
/* 804FB564  7F A3 EB 78 */	mr r3, r29
/* 804FB568  4B FE A9 15 */	bl Player_actor_BGcheck_Wait
/* 804FB56C  7F A3 EB 78 */	mr r3, r29
/* 804FB570  7F C4 F3 78 */	mr r4, r30
/* 804FB574  4B FE 87 85 */	bl Player_actor_Item_main
/* 804FB578  7F A3 EB 78 */	mr r3, r29
/* 804FB57C  7F C4 F3 78 */	mr r4, r30
/* 804FB580  7F E5 FB 78 */	mr r5, r31
/* 804FB584  4B FF FF 19 */	bl Player_actor_request_proc_index_fromRecieve_stretch
/* 804FB588  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB58C  4B B9 F9 95 */	bl func_8009AF20
/* 804FB590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB594  7C 08 03 A6 */	mtlr r0
/* 804FB598  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB59C  4E 80 00 20 */	blr 
