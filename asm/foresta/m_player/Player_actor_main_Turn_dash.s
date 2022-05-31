lbl_804E8904:
/* 804E8904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8908  7C 08 02 A6 */	mflr r0
/* 804E890C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E8910  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8914  4B BB 25 BD */	bl func_8009AED0
/* 804E8918  7C 7C 1B 78 */	mr r28, r3
/* 804E891C  7C 9D 23 78 */	mr r29, r4
/* 804E8920  4B FF FE 29 */	bl Player_actor_Movement_Turn_dash
/* 804E8924  7C 60 1B 78 */	mr r0, r3
/* 804E8928  7F 83 E3 78 */	mr r3, r28
/* 804E892C  7C 1F 03 78 */	mr r31, r0
/* 804E8930  7F A4 EB 78 */	mr r4, r29
/* 804E8934  4B FE F5 C9 */	bl Player_actor_Reinput_force_position_angle
/* 804E8938  7F 83 E3 78 */	mr r3, r28
/* 804E893C  4B FF FE 35 */	bl Player_actor_ChangeDirection_Turn_dash
/* 804E8940  7C 60 1B 78 */	mr r0, r3
/* 804E8944  7F 83 E3 78 */	mr r3, r28
/* 804E8948  7C 1E 03 78 */	mr r30, r0
/* 804E894C  4B FF FE D9 */	bl Player_actor_CulcAnimation_Turn_dash
/* 804E8950  7F 83 E3 78 */	mr r3, r28
/* 804E8954  4B FE E7 A1 */	bl Player_actor_recover_lean_angle
/* 804E8958  7F 83 E3 78 */	mr r3, r28
/* 804E895C  4B FE CA BD */	bl Player_actor_set_eye_pattern_normal
/* 804E8960  7F 83 E3 78 */	mr r3, r28
/* 804E8964  7F A4 EB 78 */	mr r4, r29
/* 804E8968  4B FF FE DD */	bl Player_actor_ObjCheck_Turn_dash
/* 804E896C  7F 83 E3 78 */	mr r3, r28
/* 804E8970  4B FF FE F5 */	bl Player_actor_BGcheck_Turn_dash
/* 804E8974  7F 83 E3 78 */	mr r3, r28
/* 804E8978  7F A4 EB 78 */	mr r4, r29
/* 804E897C  4B FF B3 7D */	bl Player_actor_Item_main
/* 804E8980  7F 83 E3 78 */	mr r3, r28
/* 804E8984  7F A4 EB 78 */	mr r4, r29
/* 804E8988  7F E5 FB 78 */	mr r5, r31
/* 804E898C  7F C6 F3 78 */	mr r6, r30
/* 804E8990  4B FF FF 55 */	bl Player_actor_request_proc_index_fromTurn_dash
/* 804E8994  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8998  4B BB 25 85 */	bl func_8009AF1C
/* 804E899C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E89A0  7C 08 03 A6 */	mtlr r0
/* 804E89A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804E89A8  4E 80 00 20 */	blr 
