lbl_804FB224:
/* 804FB224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB228  7C 08 02 A6 */	mflr r0
/* 804FB22C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FB234  7C 9F 23 78 */	mr r31, r4
/* 804FB238  93 C1 00 08 */	stw r30, 8(r1)
/* 804FB23C  7C 7E 1B 78 */	mr r30, r3
/* 804FB240  4B FF FE F1 */	bl Player_actor_Movement_Recieve_wait
/* 804FB244  7F C3 F3 78 */	mr r3, r30
/* 804FB248  7F E4 FB 78 */	mr r4, r31
/* 804FB24C  4B FD CC B1 */	bl Player_actor_Reinput_force_position_angle
/* 804FB250  7F C3 F3 78 */	mr r3, r30
/* 804FB254  4B FF FF 01 */	bl Player_actor_CulcAnimation_Recieve_wait
/* 804FB258  7F C3 F3 78 */	mr r3, r30
/* 804FB25C  4B FD BE 99 */	bl Player_actor_recover_lean_angle
/* 804FB260  7F C3 F3 78 */	mr r3, r30
/* 804FB264  4B FD A1 B5 */	bl Player_actor_set_eye_pattern_normal
/* 804FB268  7F C3 F3 78 */	mr r3, r30
/* 804FB26C  7F E4 FB 78 */	mr r4, r31
/* 804FB270  4B FF FF 09 */	bl Player_actor_ObjCheck_Recieve_wait
/* 804FB274  7F C3 F3 78 */	mr r3, r30
/* 804FB278  4B FE AC 05 */	bl Player_actor_BGcheck_Wait
/* 804FB27C  7F C3 F3 78 */	mr r3, r30
/* 804FB280  7F E4 FB 78 */	mr r4, r31
/* 804FB284  4B FE 8A 75 */	bl Player_actor_Item_main
/* 804FB288  7F C3 F3 78 */	mr r3, r30
/* 804FB28C  7F E4 FB 78 */	mr r4, r31
/* 804FB290  4B FF FF 09 */	bl Player_actor_request_proc_index_fromRecieve_wait
/* 804FB294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FB29C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FB2A0  7C 08 03 A6 */	mtlr r0
/* 804FB2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB2A8  4E 80 00 20 */	blr 
