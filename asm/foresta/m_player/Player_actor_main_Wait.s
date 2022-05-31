lbl_804E5FC0:
/* 804E5FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5FC4  7C 08 02 A6 */	mflr r0
/* 804E5FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5FD0  7C 9F 23 78 */	mr r31, r4
/* 804E5FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 804E5FD8  7C 7E 1B 78 */	mr r30, r3
/* 804E5FDC  4B FF FD FD */	bl Player_actor_Set_RadioExerciseCommand_Wait
/* 804E5FE0  7F C3 F3 78 */	mr r3, r30
/* 804E5FE4  4B FF FE 2D */	bl Player_actor_Movement_Wait
/* 804E5FE8  7F C3 F3 78 */	mr r3, r30
/* 804E5FEC  7F E4 FB 78 */	mr r4, r31
/* 804E5FF0  4B FF 1F 0D */	bl Player_actor_Reinput_force_position_angle
/* 804E5FF4  7F C3 F3 78 */	mr r3, r30
/* 804E5FF8  4B FF FE 41 */	bl Player_actor_CulcAnimation_Wait
/* 804E5FFC  7F C3 F3 78 */	mr r3, r30
/* 804E6000  4B FF 10 F5 */	bl Player_actor_recover_lean_angle
/* 804E6004  7F C3 F3 78 */	mr r3, r30
/* 804E6008  4B FE F4 11 */	bl Player_actor_set_eye_pattern_normal
/* 804E600C  7F C3 F3 78 */	mr r3, r30
/* 804E6010  7F E4 FB 78 */	mr r4, r31
/* 804E6014  4B FF FE 49 */	bl Player_actor_ObjCheck_Wait
/* 804E6018  7F C3 F3 78 */	mr r3, r30
/* 804E601C  4B FF FE 61 */	bl Player_actor_BGcheck_Wait
/* 804E6020  7F C3 F3 78 */	mr r3, r30
/* 804E6024  7F E4 FB 78 */	mr r4, r31
/* 804E6028  4B FF DC D1 */	bl Player_actor_Item_main
/* 804E602C  7F C3 F3 78 */	mr r3, r30
/* 804E6030  7F E4 FB 78 */	mr r4, r31
/* 804E6034  4B FF FE 69 */	bl Player_actor_request_proc_index_fromWait
/* 804E6038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E603C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E6040  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E6044  7C 08 03 A6 */	mtlr r0
/* 804E6048  38 21 00 10 */	addi r1, r1, 0x10
/* 804E604C  4E 80 00 20 */	blr 
