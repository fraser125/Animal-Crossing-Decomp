lbl_80506F8C:
/* 80506F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80506F90  7C 08 02 A6 */	mflr r0
/* 80506F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80506F98  39 61 00 20 */	addi r11, r1, 0x20
/* 80506F9C  4B B9 3F 39 */	bl func_8009AED4
/* 80506FA0  7C 7D 1B 78 */	mr r29, r3
/* 80506FA4  7C 9E 23 78 */	mr r30, r4
/* 80506FA8  4B FF FC BD */	bl Player_actor_Set_RadioExerciseCommand_Radio_exercise
/* 80506FAC  7F A3 EB 78 */	mr r3, r29
/* 80506FB0  4B FF FC ED */	bl Player_actor_Movement_Radio_exercise
/* 80506FB4  7F A3 EB 78 */	mr r3, r29
/* 80506FB8  7F C4 F3 78 */	mr r4, r30
/* 80506FBC  4B FD 0F 41 */	bl Player_actor_Reinput_force_position_angle
/* 80506FC0  7F A3 EB 78 */	mr r3, r29
/* 80506FC4  4B FF FD 01 */	bl Player_actor_CulcAnimation_Radio_exercise
/* 80506FC8  7C 60 1B 78 */	mr r0, r3
/* 80506FCC  7F A3 EB 78 */	mr r3, r29
/* 80506FD0  7C 1F 03 78 */	mr r31, r0
/* 80506FD4  4B FD 01 21 */	bl Player_actor_recover_lean_angle
/* 80506FD8  7F A3 EB 78 */	mr r3, r29
/* 80506FDC  4B FC E4 3D */	bl Player_actor_set_eye_pattern_normal
/* 80506FE0  7F A3 EB 78 */	mr r3, r29
/* 80506FE4  7F C4 F3 78 */	mr r4, r30
/* 80506FE8  4B FF FE 25 */	bl Player_actor_ObjCheck_Radio_exercise
/* 80506FEC  7F A3 EB 78 */	mr r3, r29
/* 80506FF0  4B FF FE 3D */	bl Player_actor_BGcheck_Radio_exercise
/* 80506FF4  7F A3 EB 78 */	mr r3, r29
/* 80506FF8  7F C4 F3 78 */	mr r4, r30
/* 80506FFC  4B FD CC FD */	bl Player_actor_Item_main
/* 80507000  7F A3 EB 78 */	mr r3, r29
/* 80507004  7F C4 F3 78 */	mr r4, r30
/* 80507008  7F E5 FB 78 */	mr r5, r31
/* 8050700C  4B FF FE 41 */	bl Player_actor_request_proc_index_fromRadio_exercise
/* 80507010  39 61 00 20 */	addi r11, r1, 0x20
/* 80507014  4B B9 3F 0D */	bl func_8009AF20
/* 80507018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050701C  7C 08 03 A6 */	mtlr r0
/* 80507020  38 21 00 20 */	addi r1, r1, 0x20
/* 80507024  4E 80 00 20 */	blr 
