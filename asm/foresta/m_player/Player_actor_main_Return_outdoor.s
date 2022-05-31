lbl_804E588C:
/* 804E588C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5890  7C 08 02 A6 */	mflr r0
/* 804E5894  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E589C  7C 9F 23 78 */	mr r31, r4
/* 804E58A0  93 C1 00 08 */	stw r30, 8(r1)
/* 804E58A4  7C 7E 1B 78 */	mr r30, r3
/* 804E58A8  4B FF FF 19 */	bl Player_actor_Movement_Return_outdoor
/* 804E58AC  7F C3 F3 78 */	mr r3, r30
/* 804E58B0  7F E4 FB 78 */	mr r4, r31
/* 804E58B4  4B FF 26 49 */	bl Player_actor_Reinput_force_position_angle
/* 804E58B8  7F C3 F3 78 */	mr r3, r30
/* 804E58BC  4B FF FE E1 */	bl Player_actor_CulcAnimation_Return_outdoor
/* 804E58C0  7F C3 F3 78 */	mr r3, r30
/* 804E58C4  4B FF 18 31 */	bl Player_actor_recover_lean_angle
/* 804E58C8  7F C3 F3 78 */	mr r3, r30
/* 804E58CC  4B FE FB 4D */	bl Player_actor_set_eye_pattern_normal
/* 804E58D0  7F C3 F3 78 */	mr r3, r30
/* 804E58D4  7F E4 FB 78 */	mr r4, r31
/* 804E58D8  4B FF FF 09 */	bl Player_actor_ObjCheck_Return_outdoor
/* 804E58DC  7F C3 F3 78 */	mr r3, r30
/* 804E58E0  4B FF FF 21 */	bl Player_actor_BGcheck_Return_outdoor
/* 804E58E4  7F C3 F3 78 */	mr r3, r30
/* 804E58E8  7F E4 FB 78 */	mr r4, r31
/* 804E58EC  4B FF E4 0D */	bl Player_actor_Item_main
/* 804E58F0  7F C3 F3 78 */	mr r3, r30
/* 804E58F4  7F E4 FB 78 */	mr r4, r31
/* 804E58F8  4B FF FF 29 */	bl Player_actor_request_proc_index_fromReturn_outdoor
/* 804E58FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E5904  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E5908  7C 08 03 A6 */	mtlr r0
/* 804E590C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5910  4E 80 00 20 */	blr 
