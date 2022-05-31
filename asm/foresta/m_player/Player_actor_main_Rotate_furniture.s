lbl_804EB20C:
/* 804EB20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB210  7C 08 02 A6 */	mflr r0
/* 804EB214  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EB21C  7C 9F 23 78 */	mr r31, r4
/* 804EB220  93 C1 00 08 */	stw r30, 8(r1)
/* 804EB224  7C 7E 1B 78 */	mr r30, r3
/* 804EB228  4B FF FE 35 */	bl Player_actor_Movement_Rotate_furniture
/* 804EB22C  7F C3 F3 78 */	mr r3, r30
/* 804EB230  7F E4 FB 78 */	mr r4, r31
/* 804EB234  4B FE CC C9 */	bl Player_actor_Reinput_force_position_angle
/* 804EB238  7F C3 F3 78 */	mr r3, r30
/* 804EB23C  4B FF FE 45 */	bl Player_actor_CulcAnimation_rotate_furniture
/* 804EB240  7C 60 1B 78 */	mr r0, r3
/* 804EB244  7F C3 F3 78 */	mr r3, r30
/* 804EB248  7C 05 03 78 */	mr r5, r0
/* 804EB24C  7F E4 FB 78 */	mr r4, r31
/* 804EB250  4B FF FE 55 */	bl Player_actor_ChangeAnimationHold_rotate_furniture
/* 804EB254  7F C3 F3 78 */	mr r3, r30
/* 804EB258  4B FE BE 9D */	bl Player_actor_recover_lean_angle
/* 804EB25C  7F C3 F3 78 */	mr r3, r30
/* 804EB260  4B FE A1 B9 */	bl Player_actor_set_eye_pattern_normal
/* 804EB264  7F C3 F3 78 */	mr r3, r30
/* 804EB268  7F E4 FB 78 */	mr r4, r31
/* 804EB26C  4B FF FE AD */	bl Player_actor_ObjCheck_rotate_furniture
/* 804EB270  7F C3 F3 78 */	mr r3, r30
/* 804EB274  4B FF FE C5 */	bl Player_actor_BGcheck_rotate_furniture
/* 804EB278  7F C3 F3 78 */	mr r3, r30
/* 804EB27C  7F E4 FB 78 */	mr r4, r31
/* 804EB280  4B FF 8A 79 */	bl Player_actor_Item_main
/* 804EB284  7F C3 F3 78 */	mr r3, r30
/* 804EB288  7F E4 FB 78 */	mr r4, r31
/* 804EB28C  4B FF FE CD */	bl Player_actor_request_proc_index_fromRotate_furniture
/* 804EB290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EB298  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EB29C  7C 08 03 A6 */	mtlr r0
/* 804EB2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB2A4  4E 80 00 20 */	blr 
