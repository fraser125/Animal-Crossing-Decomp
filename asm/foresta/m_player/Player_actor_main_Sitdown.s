lbl_804EF2D0:
/* 804EF2D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EF2D4  7C 08 02 A6 */	mflr r0
/* 804EF2D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EF2DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF2E0  4B BA BB F5 */	bl func_8009AED4
/* 804EF2E4  7C 9E 23 78 */	mr r30, r4
/* 804EF2E8  7C 7D 1B 78 */	mr r29, r3
/* 804EF2EC  38 81 00 08 */	addi r4, r1, 8
/* 804EF2F0  4B FF FE 79 */	bl Player_actor_CulcAnimation_Sitdown
/* 804EF2F4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EF2F8  7C 7F 1B 78 */	mr r31, r3
/* 804EF2FC  7F A3 EB 78 */	mr r3, r29
/* 804EF300  4B FF FE D5 */	bl Player_actor_SearchAnimation_Sitdown
/* 804EF304  7F A3 EB 78 */	mr r3, r29
/* 804EF308  4B FF FF 25 */	bl Player_actor_Movement_Sitdown
/* 804EF30C  7F A3 EB 78 */	mr r3, r29
/* 804EF310  7F C4 F3 78 */	mr r4, r30
/* 804EF314  4B FE 8B E9 */	bl Player_actor_Reinput_force_position_angle
/* 804EF318  7F A3 EB 78 */	mr r3, r29
/* 804EF31C  4B FE 7D D9 */	bl Player_actor_recover_lean_angle
/* 804EF320  7F A3 EB 78 */	mr r3, r29
/* 804EF324  4B FE 60 F5 */	bl Player_actor_set_eye_pattern_normal
/* 804EF328  7F A3 EB 78 */	mr r3, r29
/* 804EF32C  7F C4 F3 78 */	mr r4, r30
/* 804EF330  4B FF FF 49 */	bl Player_actor_ObjCheck_Sitdown
/* 804EF334  7F A3 EB 78 */	mr r3, r29
/* 804EF338  7F C4 F3 78 */	mr r4, r30
/* 804EF33C  4B FF 49 BD */	bl Player_actor_Item_main
/* 804EF340  7F A3 EB 78 */	mr r3, r29
/* 804EF344  7F C4 F3 78 */	mr r4, r30
/* 804EF348  7F E5 FB 78 */	mr r5, r31
/* 804EF34C  4B FF FF 4D */	bl Player_actor_request_proc_index_fromSitdown
/* 804EF350  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF354  4B BA BB CD */	bl func_8009AF20
/* 804EF358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EF35C  7C 08 03 A6 */	mtlr r0
/* 804EF360  38 21 00 20 */	addi r1, r1, 0x20
/* 804EF364  4E 80 00 20 */	blr 
