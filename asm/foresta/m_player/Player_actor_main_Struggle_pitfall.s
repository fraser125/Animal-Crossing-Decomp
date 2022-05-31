lbl_8050249C:
/* 8050249C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805024A0  7C 08 02 A6 */	mflr r0
/* 805024A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805024A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805024AC  4B B9 8A 29 */	bl func_8009AED4
/* 805024B0  7C 7D 1B 78 */	mr r29, r3
/* 805024B4  7C 9E 23 78 */	mr r30, r4
/* 805024B8  4B FF FD 55 */	bl Player_actor_Movement_Struggle_pitfall
/* 805024BC  7F A3 EB 78 */	mr r3, r29
/* 805024C0  7F C4 F3 78 */	mr r4, r30
/* 805024C4  4B FD 5A 39 */	bl Player_actor_Reinput_force_position_angle
/* 805024C8  7F A3 EB 78 */	mr r3, r29
/* 805024CC  4B FF FD 65 */	bl Player_actor_ControlAnimationSpeed_Struggle_pitfall
/* 805024D0  7C 60 1B 78 */	mr r0, r3
/* 805024D4  7F A3 EB 78 */	mr r3, r29
/* 805024D8  7C 1F 03 78 */	mr r31, r0
/* 805024DC  4B FF FF 19 */	bl Player_actor_CulcAnimation_Struggle_pitfall
/* 805024E0  7F A3 EB 78 */	mr r3, r29
/* 805024E4  4B FD 4C 11 */	bl Player_actor_recover_lean_angle
/* 805024E8  7F A3 EB 78 */	mr r3, r29
/* 805024EC  4B FF FF 2D */	bl Player_actor_set_eye_pattern_Struggle_pitfall
/* 805024F0  7F A3 EB 78 */	mr r3, r29
/* 805024F4  7F C4 F3 78 */	mr r4, r30
/* 805024F8  4B FF FF 59 */	bl Player_actor_ObjCheck_Struggle_pitfall
/* 805024FC  7F A3 EB 78 */	mr r3, r29
/* 80502500  7F C4 F3 78 */	mr r4, r30
/* 80502504  4B FE 17 F5 */	bl Player_actor_Item_main
/* 80502508  7F C3 F3 78 */	mr r3, r30
/* 8050250C  7F E4 FB 78 */	mr r4, r31
/* 80502510  4B FF FF 61 */	bl Player_actor_request_proc_index_fromStruggle_pitfall
/* 80502514  39 61 00 20 */	addi r11, r1, 0x20
/* 80502518  4B B9 8A 09 */	bl func_8009AF20
/* 8050251C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80502520  7C 08 03 A6 */	mtlr r0
/* 80502524  38 21 00 20 */	addi r1, r1, 0x20
/* 80502528  4E 80 00 20 */	blr 
