lbl_80505F54:
/* 80505F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80505F58  7C 08 02 A6 */	mflr r0
/* 80505F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80505F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80505F64  4B B9 4F 71 */	bl func_8009AED4
/* 80505F68  7C 7D 1B 78 */	mr r29, r3
/* 80505F6C  7C 9E 23 78 */	mr r30, r4
/* 80505F70  4B FF FC E1 */	bl Player_actor_Movement_Notice_mosquito
/* 80505F74  7F A3 EB 78 */	mr r3, r29
/* 80505F78  4B FF FD A5 */	bl Player_actor_CulcAnimation_Notice_mosquito
/* 80505F7C  7F A3 EB 78 */	mr r3, r29
/* 80505F80  7F C4 F3 78 */	mr r4, r30
/* 80505F84  4B FD 1F 79 */	bl Player_actor_Reinput_force_position_angle
/* 80505F88  7F A3 EB 78 */	mr r3, r29
/* 80505F8C  4B FD 11 69 */	bl Player_actor_recover_lean_angle
/* 80505F90  7F A3 EB 78 */	mr r3, r29
/* 80505F94  7F C4 F3 78 */	mr r4, r30
/* 80505F98  4B FF FD A9 */	bl Player_actor_ObjCheck_Notice_mosquito
/* 80505F9C  7F A3 EB 78 */	mr r3, r29
/* 80505FA0  4B FF FD C1 */	bl Player_actor_BGcheck_Notice_mosquito
/* 80505FA4  7F A3 EB 78 */	mr r3, r29
/* 80505FA8  4B FF FE 5D */	bl Player_actor_MessageControl_Notice_mosquito
/* 80505FAC  7C 60 1B 78 */	mr r0, r3
/* 80505FB0  7F A3 EB 78 */	mr r3, r29
/* 80505FB4  7C 1F 03 78 */	mr r31, r0
/* 80505FB8  7F C4 F3 78 */	mr r4, r30
/* 80505FBC  4B FD DD 3D */	bl Player_actor_Item_main
/* 80505FC0  7F A3 EB 78 */	mr r3, r29
/* 80505FC4  7F C4 F3 78 */	mr r4, r30
/* 80505FC8  7F E5 FB 78 */	mr r5, r31
/* 80505FCC  4B FF FF 31 */	bl Player_actor_request_proc_index_fromNotice_mosquito
/* 80505FD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80505FD4  4B B9 4F 4D */	bl func_8009AF20
/* 80505FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80505FDC  7C 08 03 A6 */	mtlr r0
/* 80505FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80505FE4  4E 80 00 20 */	blr 
