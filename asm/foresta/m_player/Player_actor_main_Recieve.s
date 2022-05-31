lbl_804FB830:
/* 804FB830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB834  7C 08 02 A6 */	mflr r0
/* 804FB838  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB83C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB840  4B B9 F6 95 */	bl func_8009AED4
/* 804FB844  7C 7D 1B 78 */	mr r29, r3
/* 804FB848  7C 9E 23 78 */	mr r30, r4
/* 804FB84C  4B FF FE ED */	bl Player_actor_Movement_Recieve
/* 804FB850  7F A3 EB 78 */	mr r3, r29
/* 804FB854  7F C4 F3 78 */	mr r4, r30
/* 804FB858  4B FD C6 A5 */	bl Player_actor_Reinput_force_position_angle
/* 804FB85C  7F A3 EB 78 */	mr r3, r29
/* 804FB860  4B FF FE FD */	bl Player_actor_CulcAnimation_Recieve
/* 804FB864  7C 60 1B 78 */	mr r0, r3
/* 804FB868  7F A3 EB 78 */	mr r3, r29
/* 804FB86C  7C 1F 03 78 */	mr r31, r0
/* 804FB870  4B FD B8 85 */	bl Player_actor_recover_lean_angle
/* 804FB874  7F A3 EB 78 */	mr r3, r29
/* 804FB878  4B FD 9B A1 */	bl Player_actor_set_eye_pattern_normal
/* 804FB87C  7F A3 EB 78 */	mr r3, r29
/* 804FB880  7F C4 F3 78 */	mr r4, r30
/* 804FB884  4B FF FE FD */	bl Player_actor_ObjCheck_Recieve
/* 804FB888  7F A3 EB 78 */	mr r3, r29
/* 804FB88C  4B FE A5 F1 */	bl Player_actor_BGcheck_Wait
/* 804FB890  7F A3 EB 78 */	mr r3, r29
/* 804FB894  4B FD BE 01 */	bl Player_actor_Set_item_matrix_set
/* 804FB898  7F A3 EB 78 */	mr r3, r29
/* 804FB89C  7F C4 F3 78 */	mr r4, r30
/* 804FB8A0  4B FE 84 59 */	bl Player_actor_Item_main
/* 804FB8A4  7F A3 EB 78 */	mr r3, r29
/* 804FB8A8  7F C4 F3 78 */	mr r4, r30
/* 804FB8AC  7F E5 FB 78 */	mr r5, r31
/* 804FB8B0  4B FF FE F1 */	bl Player_actor_request_proc_index_fromRecieve
/* 804FB8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB8B8  4B B9 F6 69 */	bl func_8009AF20
/* 804FB8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB8C0  7C 08 03 A6 */	mtlr r0
/* 804FB8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB8C8  4E 80 00 20 */	blr 
