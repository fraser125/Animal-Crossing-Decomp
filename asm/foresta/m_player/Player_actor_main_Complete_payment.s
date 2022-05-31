lbl_805053AC:
/* 805053AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805053B0  7C 08 02 A6 */	mflr r0
/* 805053B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805053B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805053BC  4B B9 5B 19 */	bl func_8009AED4
/* 805053C0  7C 9E 23 78 */	mr r30, r4
/* 805053C4  7C 7D 1B 78 */	mr r29, r3
/* 805053C8  38 81 00 08 */	addi r4, r1, 8
/* 805053CC  4B FF FC 8D */	bl Player_actor_CulcAnimation_Complete_payment
/* 805053D0  7C 60 1B 78 */	mr r0, r3
/* 805053D4  7F A3 EB 78 */	mr r3, r29
/* 805053D8  7C 1F 03 78 */	mr r31, r0
/* 805053DC  4B FF FC 9D */	bl Player_actor_Movement_Complete_payment
/* 805053E0  7F A3 EB 78 */	mr r3, r29
/* 805053E4  7F C4 F3 78 */	mr r4, r30
/* 805053E8  4B FD 2B 15 */	bl Player_actor_Reinput_force_position_angle
/* 805053EC  7F A3 EB 78 */	mr r3, r29
/* 805053F0  4B FD 1D 05 */	bl Player_actor_recover_lean_angle
/* 805053F4  7F A3 EB 78 */	mr r3, r29
/* 805053F8  7F E4 FB 78 */	mr r4, r31
/* 805053FC  4B FF FD 49 */	bl Player_actor_set_eye_pattern_Complete_payment
/* 80505400  7F A3 EB 78 */	mr r3, r29
/* 80505404  7F C4 F3 78 */	mr r4, r30
/* 80505408  4B FF FD 6D */	bl Player_actor_ObjCheck_Complete_payment
/* 8050540C  7F A3 EB 78 */	mr r3, r29
/* 80505410  4B FF FD 85 */	bl Player_actor_BGcheck_Complete_payment
/* 80505414  7F A3 EB 78 */	mr r3, r29
/* 80505418  7F E4 FB 78 */	mr r4, r31
/* 8050541C  4B FF FE 3D */	bl Player_actor_MessageControl_Complete_payment
/* 80505420  7C 60 1B 78 */	mr r0, r3
/* 80505424  7F C3 F3 78 */	mr r3, r30
/* 80505428  7C 04 03 78 */	mr r4, r0
/* 8050542C  4B FF FF 3D */	bl Player_actor_request_proc_index_fromComplete_payment
/* 80505430  39 61 00 20 */	addi r11, r1, 0x20
/* 80505434  4B B9 5A ED */	bl func_8009AF20
/* 80505438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050543C  7C 08 03 A6 */	mtlr r0
/* 80505440  38 21 00 20 */	addi r1, r1, 0x20
/* 80505444  4E 80 00 20 */	blr 
