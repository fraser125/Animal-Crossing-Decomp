lbl_804F3F40:
/* 804F3F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3F44  7C 08 02 A6 */	mflr r0
/* 804F3F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F3F50  7C 9F 23 78 */	mr r31, r4
/* 804F3F54  93 C1 00 08 */	stw r30, 8(r1)
/* 804F3F58  7C 7E 1B 78 */	mr r30, r3
/* 804F3F5C  4B FF FF 15 */	bl Player_actor_Movement_Stop_net
/* 804F3F60  7F C3 F3 78 */	mr r3, r30
/* 804F3F64  7F E4 FB 78 */	mr r4, r31
/* 804F3F68  4B FE 3F 95 */	bl Player_actor_Reinput_force_position_angle
/* 804F3F6C  7F C3 F3 78 */	mr r3, r30
/* 804F3F70  4B FF FF 29 */	bl Player_actor_CulcAnimation_Stop_net
/* 804F3F74  7F C3 F3 78 */	mr r3, r30
/* 804F3F78  4B FE 31 7D */	bl Player_actor_recover_lean_angle
/* 804F3F7C  7F C3 F3 78 */	mr r3, r30
/* 804F3F80  4B FE 14 99 */	bl Player_actor_set_eye_pattern_normal
/* 804F3F84  7F C3 F3 78 */	mr r3, r30
/* 804F3F88  7F E4 FB 78 */	mr r4, r31
/* 804F3F8C  4B FF FF 31 */	bl Player_actor_ObjCheck_Stop_net
/* 804F3F90  7F C3 F3 78 */	mr r3, r30
/* 804F3F94  4B FF FF 49 */	bl Player_actor_BGcheck_Stop_net
/* 804F3F98  7F C3 F3 78 */	mr r3, r30
/* 804F3F9C  7F E4 FB 78 */	mr r4, r31
/* 804F3FA0  4B FE FD 59 */	bl Player_actor_Item_main
/* 804F3FA4  7C 60 1B 78 */	mr r0, r3
/* 804F3FA8  7F E3 FB 78 */	mr r3, r31
/* 804F3FAC  7C 04 03 78 */	mr r4, r0
/* 804F3FB0  4B FF FF 4D */	bl Player_actor_request_proc_index_fromStop_net
/* 804F3FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F3FBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F3FC0  7C 08 03 A6 */	mtlr r0
/* 804F3FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3FC8  4E 80 00 20 */	blr 
