lbl_804F6E34:
/* 804F6E34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F6E38  7C 08 02 A6 */	mflr r0
/* 804F6E3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F6E40  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6E44  4B BA 40 91 */	bl func_8009AED4
/* 804F6E48  7C 7D 1B 78 */	mr r29, r3
/* 804F6E4C  7C 9E 23 78 */	mr r30, r4
/* 804F6E50  4B FF F8 51 */	bl Player_actor_Movement_Notice_rod
/* 804F6E54  7F A3 EB 78 */	mr r3, r29
/* 804F6E58  38 81 00 08 */	addi r4, r1, 8
/* 804F6E5C  4B FF F9 11 */	bl Player_actor_CulcAnimation_Notice_rod
/* 804F6E60  7C 60 1B 78 */	mr r0, r3
/* 804F6E64  7F A3 EB 78 */	mr r3, r29
/* 804F6E68  7C 1F 03 78 */	mr r31, r0
/* 804F6E6C  7F C4 F3 78 */	mr r4, r30
/* 804F6E70  4B FE 10 8D */	bl Player_actor_Reinput_force_position_angle
/* 804F6E74  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F6E78  7F A3 EB 78 */	mr r3, r29
/* 804F6E7C  7F C4 F3 78 */	mr r4, r30
/* 804F6E80  4B FF F9 7D */	bl Player_actor_SearchAnimation_Notice_rod
/* 804F6E84  7F A3 EB 78 */	mr r3, r29
/* 804F6E88  4B FE 02 6D */	bl Player_actor_recover_lean_angle
/* 804F6E8C  7F A3 EB 78 */	mr r3, r29
/* 804F6E90  7F E4 FB 78 */	mr r4, r31
/* 804F6E94  4B FF F8 F9 */	bl Player_actor_set_eye_pattern_Notice_rod
/* 804F6E98  7F A3 EB 78 */	mr r3, r29
/* 804F6E9C  7F C4 F3 78 */	mr r4, r30
/* 804F6EA0  4B FF F9 1D */	bl Player_actor_ObjCheck_Notice_rod
/* 804F6EA4  7F A3 EB 78 */	mr r3, r29
/* 804F6EA8  4B FF F9 35 */	bl Player_actor_BGcheck_Notice_rod
/* 804F6EAC  7F A3 EB 78 */	mr r3, r29
/* 804F6EB0  7F C4 F3 78 */	mr r4, r30
/* 804F6EB4  7F E5 FB 78 */	mr r5, r31
/* 804F6EB8  4B FF FC 29 */	bl Player_actor_MessageControl_Notice_rod
/* 804F6EBC  7C 60 1B 78 */	mr r0, r3
/* 804F6EC0  7F A3 EB 78 */	mr r3, r29
/* 804F6EC4  7C 1F 03 78 */	mr r31, r0
/* 804F6EC8  7F C4 F3 78 */	mr r4, r30
/* 804F6ECC  4B FE CE 2D */	bl Player_actor_Item_main
/* 804F6ED0  7F A3 EB 78 */	mr r3, r29
/* 804F6ED4  7F C4 F3 78 */	mr r4, r30
/* 804F6ED8  7F E5 FB 78 */	mr r5, r31
/* 804F6EDC  4B FF FE BD */	bl Player_actor_request_proc_index_fromNotice_rod
/* 804F6EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6EE4  4B BA 40 3D */	bl func_8009AF20
/* 804F6EE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F6EEC  7C 08 03 A6 */	mtlr r0
/* 804F6EF0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6EF4  4E 80 00 20 */	blr 
