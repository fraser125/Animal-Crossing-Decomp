lbl_804E4DE8:
/* 804E4DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4DEC  7C 08 02 A6 */	mflr r0
/* 804E4DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E4DF8  7C 9F 23 78 */	mr r31, r4
/* 804E4DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E4E00  7C 7E 1B 78 */	mr r30, r3
/* 804E4E04  4B FF FE D9 */	bl Player_actor_Movement_Intro
/* 804E4E08  7F C3 F3 78 */	mr r3, r30
/* 804E4E0C  7F E4 FB 78 */	mr r4, r31
/* 804E4E10  4B FF 30 ED */	bl Player_actor_Reinput_force_position_angle
/* 804E4E14  7F C3 F3 78 */	mr r3, r30
/* 804E4E18  4B FF FE A1 */	bl Player_actor_CulcAnimation_Intro
/* 804E4E1C  7F C3 F3 78 */	mr r3, r30
/* 804E4E20  4B FF 22 D5 */	bl Player_actor_recover_lean_angle
/* 804E4E24  7F C3 F3 78 */	mr r3, r30
/* 804E4E28  4B FF 05 F1 */	bl Player_actor_set_eye_pattern_normal
/* 804E4E2C  7F C3 F3 78 */	mr r3, r30
/* 804E4E30  7F E4 FB 78 */	mr r4, r31
/* 804E4E34  4B FF FE C9 */	bl Player_actor_ObjCheck_Intro
/* 804E4E38  7F C3 F3 78 */	mr r3, r30
/* 804E4E3C  4B FF FE E1 */	bl Player_actor_BGcheck_Intro
/* 804E4E40  7F E3 FB 78 */	mr r3, r31
/* 804E4E44  4B FF FE F9 */	bl Player_actor_ResetCameraPos_Intro
/* 804E4E48  7F C3 F3 78 */	mr r3, r30
/* 804E4E4C  7F E4 FB 78 */	mr r4, r31
/* 804E4E50  4B FF EE A9 */	bl Player_actor_Item_main
/* 804E4E54  7F C3 F3 78 */	mr r3, r30
/* 804E4E58  7F E4 FB 78 */	mr r4, r31
/* 804E4E5C  4B FF FF 29 */	bl Player_actor_request_proc_index_fromIntro
/* 804E4E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E4E6C  7C 08 03 A6 */	mtlr r0
/* 804E4E70  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4E74  4E 80 00 20 */	blr 
