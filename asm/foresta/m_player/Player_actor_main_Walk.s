lbl_804E6B64:
/* 804E6B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E6B68  7C 08 02 A6 */	mflr r0
/* 804E6B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E6B70  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E6B74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E6B78  7C 9F 23 78 */	mr r31, r4
/* 804E6B7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E6B80  7C 7E 1B 78 */	mr r30, r3
/* 804E6B84  4B FF FA DD */	bl Player_actor_Movement_Walk
/* 804E6B88  7F C3 F3 78 */	mr r3, r30
/* 804E6B8C  7F E4 FB 78 */	mr r4, r31
/* 804E6B90  4B FF 13 6D */	bl Player_actor_Reinput_force_position_angle
/* 804E6B94  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E6B98  7F C3 F3 78 */	mr r3, r30
/* 804E6B9C  38 81 00 08 */	addi r4, r1, 8
/* 804E6BA0  4B FF F7 31 */	bl Player_actor_CulcAnimation_Walk
/* 804E6BA4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E6BA8  7F C3 F3 78 */	mr r3, r30
/* 804E6BAC  7F E4 FB 78 */	mr r4, r31
/* 804E6BB0  4B FF FA 3D */	bl Player_actor_SearchAnimation_Walk
/* 804E6BB4  7F C3 F3 78 */	mr r3, r30
/* 804E6BB8  4B FF 04 51 */	bl Player_actor_set_lean_angle
/* 804E6BBC  7F C3 F3 78 */	mr r3, r30
/* 804E6BC0  4B FE E8 59 */	bl Player_actor_set_eye_pattern_normal
/* 804E6BC4  7F C3 F3 78 */	mr r3, r30
/* 804E6BC8  7F E4 FB 78 */	mr r4, r31
/* 804E6BCC  4B FF FD AD */	bl Player_actor_ObjCheck_Walk
/* 804E6BD0  7F C3 F3 78 */	mr r3, r30
/* 804E6BD4  4B FF FD C5 */	bl Player_actor_BGcheck_Walk
/* 804E6BD8  7F C3 F3 78 */	mr r3, r30
/* 804E6BDC  7F E4 FB 78 */	mr r4, r31
/* 804E6BE0  4B FF D1 19 */	bl Player_actor_Item_main
/* 804E6BE4  7F C3 F3 78 */	mr r3, r30
/* 804E6BE8  7F E4 FB 78 */	mr r4, r31
/* 804E6BEC  4B FF FD CD */	bl Player_actor_request_proc_index_fromWalk
/* 804E6BF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E6BF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E6BF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E6BFC  7C 08 03 A6 */	mtlr r0
/* 804E6C00  38 21 00 20 */	addi r1, r1, 0x20
/* 804E6C04  4E 80 00 20 */	blr 
