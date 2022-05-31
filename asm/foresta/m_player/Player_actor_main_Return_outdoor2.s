lbl_804E5B74:
/* 804E5B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5B78  7C 08 02 A6 */	mflr r0
/* 804E5B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5B84  7C 9F 23 78 */	mr r31, r4
/* 804E5B88  93 C1 00 08 */	stw r30, 8(r1)
/* 804E5B8C  7C 7E 1B 78 */	mr r30, r3
/* 804E5B90  4B FF FE F9 */	bl Player_actor_Movement_Return_outdoor2
/* 804E5B94  7F C3 F3 78 */	mr r3, r30
/* 804E5B98  7F E4 FB 78 */	mr r4, r31
/* 804E5B9C  4B FF 23 61 */	bl Player_actor_Reinput_force_position_angle
/* 804E5BA0  7F C3 F3 78 */	mr r3, r30
/* 804E5BA4  4B FF FE C1 */	bl Player_actor_CulcAnimation_Return_outdoor2
/* 804E5BA8  7F C3 F3 78 */	mr r3, r30
/* 804E5BAC  4B FF 15 49 */	bl Player_actor_recover_lean_angle
/* 804E5BB0  7F C3 F3 78 */	mr r3, r30
/* 804E5BB4  4B FE F8 65 */	bl Player_actor_set_eye_pattern_normal
/* 804E5BB8  7F C3 F3 78 */	mr r3, r30
/* 804E5BBC  7F E4 FB 78 */	mr r4, r31
/* 804E5BC0  4B FF FE E9 */	bl Player_actor_ObjCheck_Return_outdoor2
/* 804E5BC4  7F C3 F3 78 */	mr r3, r30
/* 804E5BC8  4B FF FF 01 */	bl Player_actor_BGcheck_Return_outdoor2
/* 804E5BCC  7F C3 F3 78 */	mr r3, r30
/* 804E5BD0  7F E4 FB 78 */	mr r4, r31
/* 804E5BD4  4B FF E1 25 */	bl Player_actor_Item_main
/* 804E5BD8  7F C3 F3 78 */	mr r3, r30
/* 804E5BDC  7F E4 FB 78 */	mr r4, r31
/* 804E5BE0  4B FF FF 09 */	bl Player_actor_request_proc_index_fromReturn_outdoor2
/* 804E5BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E5BEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E5BF0  7C 08 03 A6 */	mtlr r0
/* 804E5BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5BF8  4E 80 00 20 */	blr 
