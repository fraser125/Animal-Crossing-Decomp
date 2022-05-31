lbl_804E9088:
/* 804E9088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E908C  7C 08 02 A6 */	mflr r0
/* 804E9090  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9098  7C 9F 23 78 */	mr r31, r4
/* 804E909C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E90A0  7C 7E 1B 78 */	mr r30, r3
/* 804E90A4  4B FF FF DD */	bl Player_actor_Request_Wade
/* 804E90A8  2C 03 00 00 */	cmpwi r3, 0
/* 804E90AC  41 82 00 68 */	beq lbl_804E9114
/* 804E90B0  7F C3 F3 78 */	mr r3, r30
/* 804E90B4  7F E4 FB 78 */	mr r4, r31
/* 804E90B8  4B FF 6E 1D */	bl Player_actor_main_Wade_other_func1
/* 804E90BC  7F C3 F3 78 */	mr r3, r30
/* 804E90C0  4B FF FE 31 */	bl Player_actor_Movement_Wade
/* 804E90C4  7F C3 F3 78 */	mr r3, r30
/* 804E90C8  7F E4 FB 78 */	mr r4, r31
/* 804E90CC  4B FE EE 31 */	bl Player_actor_Reinput_force_position_angle
/* 804E90D0  7F C3 F3 78 */	mr r3, r30
/* 804E90D4  4B FF FD F9 */	bl Player_actor_CulcAnimation_Wade
/* 804E90D8  7F C3 F3 78 */	mr r3, r30
/* 804E90DC  4B FE E0 19 */	bl Player_actor_recover_lean_angle
/* 804E90E0  7F C3 F3 78 */	mr r3, r30
/* 804E90E4  4B FE C3 35 */	bl Player_actor_set_eye_pattern_normal
/* 804E90E8  7F C3 F3 78 */	mr r3, r30
/* 804E90EC  7F E4 FB 78 */	mr r4, r31
/* 804E90F0  4B FF FE B5 */	bl Player_actor_ObjCheck_Wade
/* 804E90F4  7F C3 F3 78 */	mr r3, r30
/* 804E90F8  4B FF FE CD */	bl Player_actor_BGcheck_Wade
/* 804E90FC  7F C3 F3 78 */	mr r3, r30
/* 804E9100  7F E4 FB 78 */	mr r4, r31
/* 804E9104  4B FF AB F5 */	bl Player_actor_Item_main
/* 804E9108  7F C3 F3 78 */	mr r3, r30
/* 804E910C  7F E4 FB 78 */	mr r4, r31
/* 804E9110  4B FF FF 09 */	bl Player_actor_request_proc_index_fromWade
lbl_804E9114:
/* 804E9114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E911C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9120  7C 08 03 A6 */	mtlr r0
/* 804E9124  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9128  4E 80 00 20 */	blr 
