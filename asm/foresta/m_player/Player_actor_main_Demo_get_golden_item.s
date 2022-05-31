lbl_80508A0C:
/* 80508A0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80508A10  7C 08 02 A6 */	mflr r0
/* 80508A14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80508A18  39 61 00 20 */	addi r11, r1, 0x20
/* 80508A1C  4B B9 24 B9 */	bl func_8009AED4
/* 80508A20  7C 7D 1B 78 */	mr r29, r3
/* 80508A24  7C 9E 23 78 */	mr r30, r4
/* 80508A28  4B FF FC 55 */	bl Player_actor_CulcAnimation_Demo_get_golden_item
/* 80508A2C  7C 60 1B 78 */	mr r0, r3
/* 80508A30  7F A3 EB 78 */	mr r3, r29
/* 80508A34  7C 1F 03 78 */	mr r31, r0
/* 80508A38  4B FF FC 69 */	bl Player_actor_Movement_Demo_get_golden_item
/* 80508A3C  7F A3 EB 78 */	mr r3, r29
/* 80508A40  7F C4 F3 78 */	mr r4, r30
/* 80508A44  4B FC F4 B9 */	bl Player_actor_Reinput_force_position_angle
/* 80508A48  7F A3 EB 78 */	mr r3, r29
/* 80508A4C  4B FC E6 A9 */	bl Player_actor_recover_lean_angle
/* 80508A50  7F A3 EB 78 */	mr r3, r29
/* 80508A54  7F E4 FB 78 */	mr r4, r31
/* 80508A58  4B FF FD 15 */	bl Player_actor_set_eye_pattern_Demo_get_golden_item
/* 80508A5C  7F A3 EB 78 */	mr r3, r29
/* 80508A60  7F C4 F3 78 */	mr r4, r30
/* 80508A64  4B FF FD 39 */	bl Player_actor_ObjCheck_Demo_get_golden_item
/* 80508A68  7F A3 EB 78 */	mr r3, r29
/* 80508A6C  4B FF FD 51 */	bl Player_actor_BGcheck_Demo_get_golden_item
/* 80508A70  7F A3 EB 78 */	mr r3, r29
/* 80508A74  7F C4 F3 78 */	mr r4, r30
/* 80508A78  4B FD B2 81 */	bl Player_actor_Item_main
/* 80508A7C  7F A3 EB 78 */	mr r3, r29
/* 80508A80  7F E4 FB 78 */	mr r4, r31
/* 80508A84  4B FF FE 21 */	bl Player_actor_MessageControl_Demo_get_golden_item
/* 80508A88  7C 60 1B 78 */	mr r0, r3
/* 80508A8C  7F A3 EB 78 */	mr r3, r29
/* 80508A90  7C 05 03 78 */	mr r5, r0
/* 80508A94  7F C4 F3 78 */	mr r4, r30
/* 80508A98  4B FF FF 1D */	bl Player_actor_request_proc_index_fromDemo_get_golden_item
/* 80508A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80508AA0  4B B9 24 81 */	bl func_8009AF20
/* 80508AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80508AA8  7C 08 03 A6 */	mtlr r0
/* 80508AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80508AB0  4E 80 00 20 */	blr 
