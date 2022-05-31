lbl_8050201C:
/* 8050201C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80502020  7C 08 02 A6 */	mflr r0
/* 80502024  90 01 00 24 */	stw r0, 0x24(r1)
/* 80502028  39 61 00 20 */	addi r11, r1, 0x20
/* 8050202C  4B B9 8E A9 */	bl func_8009AED4
/* 80502030  7C 9E 23 78 */	mr r30, r4
/* 80502034  7C 7D 1B 78 */	mr r29, r3
/* 80502038  38 81 00 08 */	addi r4, r1, 8
/* 8050203C  4B FF FF 09 */	bl Player_actor_CulcAnimation_Fall_pitfall
/* 80502040  7C 60 1B 78 */	mr r0, r3
/* 80502044  7F A3 EB 78 */	mr r3, r29
/* 80502048  7C 1F 03 78 */	mr r31, r0
/* 8050204C  4B FF FF 19 */	bl Player_actor_Movement_Fall_pitfall
/* 80502050  7F A3 EB 78 */	mr r3, r29
/* 80502054  7F C4 F3 78 */	mr r4, r30
/* 80502058  4B FD 5E A5 */	bl Player_actor_Reinput_force_position_angle
/* 8050205C  7F A3 EB 78 */	mr r3, r29
/* 80502060  4B FD 50 95 */	bl Player_actor_recover_lean_angle
/* 80502064  7F A3 EB 78 */	mr r3, r29
/* 80502068  4B FF FF 49 */	bl Player_actor_set_eye_pattern_Fall_pitfall
/* 8050206C  7F A3 EB 78 */	mr r3, r29
/* 80502070  7F C4 F3 78 */	mr r4, r30
/* 80502074  4B FF FF 5D */	bl Player_actor_ObjCheck_Fall_pitfall
/* 80502078  7F A3 EB 78 */	mr r3, r29
/* 8050207C  7F C4 F3 78 */	mr r4, r30
/* 80502080  4B FE 1C 79 */	bl Player_actor_Item_main
/* 80502084  7F C3 F3 78 */	mr r3, r30
/* 80502088  7F E4 FB 78 */	mr r4, r31
/* 8050208C  4B FF FF 65 */	bl Player_actor_request_proc_index_fromFall_pitfall
/* 80502090  39 61 00 20 */	addi r11, r1, 0x20
/* 80502094  4B B9 8E 8D */	bl func_8009AF20
/* 80502098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050209C  7C 08 03 A6 */	mtlr r0
/* 805020A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805020A4  4E 80 00 20 */	blr 
