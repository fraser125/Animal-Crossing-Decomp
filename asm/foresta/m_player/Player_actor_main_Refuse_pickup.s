lbl_804E52FC:
/* 804E52FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5300  7C 08 02 A6 */	mflr r0
/* 804E5304  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E530C  7C 9F 23 78 */	mr r31, r4
/* 804E5310  93 C1 00 08 */	stw r30, 8(r1)
/* 804E5314  7C 7E 1B 78 */	mr r30, r3
/* 804E5318  4B FF FE E5 */	bl Player_actor_Movement_Refuse_pickup
/* 804E531C  7F C3 F3 78 */	mr r3, r30
/* 804E5320  7F E4 FB 78 */	mr r4, r31
/* 804E5324  4B FF 2B D9 */	bl Player_actor_Reinput_force_position_angle
/* 804E5328  7F C3 F3 78 */	mr r3, r30
/* 804E532C  4B FF FE F9 */	bl Player_actor_CulcAnimation_Refuse_pickup
/* 804E5330  7F C3 F3 78 */	mr r3, r30
/* 804E5334  4B FF 1D C1 */	bl Player_actor_recover_lean_angle
/* 804E5338  7F C3 F3 78 */	mr r3, r30
/* 804E533C  4B FF 00 DD */	bl Player_actor_set_eye_pattern_normal
/* 804E5340  7F C3 F3 78 */	mr r3, r30
/* 804E5344  7F E4 FB 78 */	mr r4, r31
/* 804E5348  4B FF FF 01 */	bl Player_actor_ObjCheck_Refuse_pickup
/* 804E534C  7F C3 F3 78 */	mr r3, r30
/* 804E5350  4B FF FF 19 */	bl Player_actor_BGcheck_Refuse_pickup
/* 804E5354  7F C3 F3 78 */	mr r3, r30
/* 804E5358  7F E4 FB 78 */	mr r4, r31
/* 804E535C  4B FF E9 9D */	bl Player_actor_Item_main
/* 804E5360  7F C3 F3 78 */	mr r3, r30
/* 804E5364  7F E4 FB 78 */	mr r4, r31
/* 804E5368  4B FF FF 21 */	bl Player_actor_request_proc_index_fromRefuse_pickup
/* 804E536C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E5374  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E5378  7C 08 03 A6 */	mtlr r0
/* 804E537C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5380  4E 80 00 20 */	blr 
