lbl_804E8C2C:
/* 804E8C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8C30  7C 08 02 A6 */	mflr r0
/* 804E8C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E8C3C  7C 9F 23 78 */	mr r31, r4
/* 804E8C40  93 C1 00 08 */	stw r30, 8(r1)
/* 804E8C44  7C 7E 1B 78 */	mr r30, r3
/* 804E8C48  4B FF FE C9 */	bl Player_actor_Movement_Fall
/* 804E8C4C  7F C3 F3 78 */	mr r3, r30
/* 804E8C50  7F E4 FB 78 */	mr r4, r31
/* 804E8C54  4B FE F2 A9 */	bl Player_actor_Reinput_force_position_angle
/* 804E8C58  7F C3 F3 78 */	mr r3, r30
/* 804E8C5C  4B FF FE 91 */	bl Player_actor_CulcAnimation_Fall
/* 804E8C60  7F C3 F3 78 */	mr r3, r30
/* 804E8C64  4B FE E4 91 */	bl Player_actor_recover_lean_angle
/* 804E8C68  7F C3 F3 78 */	mr r3, r30
/* 804E8C6C  4B FE C7 AD */	bl Player_actor_set_eye_pattern_normal
/* 804E8C70  7F C3 F3 78 */	mr r3, r30
/* 804E8C74  7F E4 FB 78 */	mr r4, r31
/* 804E8C78  4B FF FE B9 */	bl Player_actor_ObjCheck_Fall
/* 804E8C7C  7F C3 F3 78 */	mr r3, r30
/* 804E8C80  4B FF FE D1 */	bl Player_actor_BGcheck_Fall
/* 804E8C84  7F C3 F3 78 */	mr r3, r30
/* 804E8C88  7F E4 FB 78 */	mr r4, r31
/* 804E8C8C  4B FF B0 6D */	bl Player_actor_Item_main
/* 804E8C90  7F C3 F3 78 */	mr r3, r30
/* 804E8C94  7F E4 FB 78 */	mr r4, r31
/* 804E8C98  4B FF FF 75 */	bl Player_actor_request_proc_index_fromFall
/* 804E8C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E8CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E8CA8  7C 08 03 A6 */	mtlr r0
/* 804E8CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8CB0  4E 80 00 20 */	blr 
