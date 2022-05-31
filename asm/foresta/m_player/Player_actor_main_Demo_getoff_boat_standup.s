lbl_80507F08:
/* 80507F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80507F0C  7C 08 02 A6 */	mflr r0
/* 80507F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80507F14  39 61 00 20 */	addi r11, r1, 0x20
/* 80507F18  4B B9 2F BD */	bl func_8009AED4
/* 80507F1C  7C 9E 23 78 */	mr r30, r4
/* 80507F20  7C 7D 1B 78 */	mr r29, r3
/* 80507F24  38 81 00 08 */	addi r4, r1, 8
/* 80507F28  4B FF FD B5 */	bl Player_actor_CulcAnimation_Demo_getoff_boat_standup
/* 80507F2C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80507F30  7C 7F 1B 78 */	mr r31, r3
/* 80507F34  7F A3 EB 78 */	mr r3, r29
/* 80507F38  4B FF FE 41 */	bl Player_actor_SearchAnimation_Demo_getoff_boat_standup
/* 80507F3C  7F A3 EB 78 */	mr r3, r29
/* 80507F40  4B FF FE 75 */	bl Player_actor_Movement_Demo_getoff_boat_standup
/* 80507F44  7F A3 EB 78 */	mr r3, r29
/* 80507F48  4B FC FE F1 */	bl Player_actor_Reset_force_position_angle
/* 80507F4C  7F A3 EB 78 */	mr r3, r29
/* 80507F50  4B FC F1 A5 */	bl Player_actor_recover_lean_angle
/* 80507F54  7F A3 EB 78 */	mr r3, r29
/* 80507F58  4B FC D4 C1 */	bl Player_actor_set_eye_pattern_normal
/* 80507F5C  7F A3 EB 78 */	mr r3, r29
/* 80507F60  7F C4 F3 78 */	mr r4, r30
/* 80507F64  4B FF FF 31 */	bl Player_actor_ObjCheck_Demo_getoff_boat_standup
/* 80507F68  7F A3 EB 78 */	mr r3, r29
/* 80507F6C  7F C4 F3 78 */	mr r4, r30
/* 80507F70  4B FD BD 89 */	bl Player_actor_Item_main
/* 80507F74  7F A3 EB 78 */	mr r3, r29
/* 80507F78  7F C4 F3 78 */	mr r4, r30
/* 80507F7C  7F E5 FB 78 */	mr r5, r31
/* 80507F80  4B FF FF 35 */	bl Player_actor_request_proc_index_fromDemo_getoff_boat_standup
/* 80507F84  39 61 00 20 */	addi r11, r1, 0x20
/* 80507F88  4B B9 2F 99 */	bl func_8009AF20
/* 80507F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80507F90  7C 08 03 A6 */	mtlr r0
/* 80507F94  38 21 00 20 */	addi r1, r1, 0x20
/* 80507F98  4E 80 00 20 */	blr 
