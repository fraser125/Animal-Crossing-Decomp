lbl_804FC2BC:
/* 804FC2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC2C0  7C 08 02 A6 */	mflr r0
/* 804FC2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FC2CC  7C 9F 23 78 */	mr r31, r4
/* 804FC2D0  93 C1 00 08 */	stw r30, 8(r1)
/* 804FC2D4  7C 7E 1B 78 */	mr r30, r3
/* 804FC2D8  4B FF FE C5 */	bl Player_actor_Movement_Give_wait
/* 804FC2DC  7F C3 F3 78 */	mr r3, r30
/* 804FC2E0  7F E4 FB 78 */	mr r4, r31
/* 804FC2E4  4B FD BC 19 */	bl Player_actor_Reinput_force_position_angle
/* 804FC2E8  7F C3 F3 78 */	mr r3, r30
/* 804FC2EC  4B FF FE D5 */	bl Player_actor_CulcAnimation_Give_wait
/* 804FC2F0  7F C3 F3 78 */	mr r3, r30
/* 804FC2F4  4B FD AE 01 */	bl Player_actor_recover_lean_angle
/* 804FC2F8  7F C3 F3 78 */	mr r3, r30
/* 804FC2FC  4B FD 91 1D */	bl Player_actor_set_eye_pattern_normal
/* 804FC300  7F C3 F3 78 */	mr r3, r30
/* 804FC304  7F E4 FB 78 */	mr r4, r31
/* 804FC308  4B FF FE DD */	bl Player_actor_ObjCheck_Give_wait
/* 804FC30C  7F C3 F3 78 */	mr r3, r30
/* 804FC310  4B FE 9B 6D */	bl Player_actor_BGcheck_Wait
/* 804FC314  7F C3 F3 78 */	mr r3, r30
/* 804FC318  4B FF FE ED */	bl Player_actor_Set_item_matrix_set_Give_wait
/* 804FC31C  7F C3 F3 78 */	mr r3, r30
/* 804FC320  7F E4 FB 78 */	mr r4, r31
/* 804FC324  4B FE 79 D5 */	bl Player_actor_Item_main
/* 804FC328  7F C3 F3 78 */	mr r3, r30
/* 804FC32C  7F E4 FB 78 */	mr r4, r31
/* 804FC330  4B FF FF 01 */	bl Player_actor_request_proc_index_fromGive_wait
/* 804FC334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FC33C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FC340  7C 08 03 A6 */	mtlr r0
/* 804FC344  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC348  4E 80 00 20 */	blr 
