lbl_804E9DE8:
/* 804E9DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9DEC  7C 08 02 A6 */	mflr r0
/* 804E9DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9DF8  7C 9F 23 78 */	mr r31, r4
/* 804E9DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9E00  7C 7E 1B 78 */	mr r30, r3
/* 804E9E04  4B FF FF 61 */	bl Player_actor_Movement_Invade
/* 804E9E08  7F C3 F3 78 */	mr r3, r30
/* 804E9E0C  7F E4 FB 78 */	mr r4, r31
/* 804E9E10  4B FE E0 ED */	bl Player_actor_Reinput_force_position_angle
/* 804E9E14  7F C3 F3 78 */	mr r3, r30
/* 804E9E18  4B FF FF 6D */	bl Player_actor_CulcAnimation_Invade
/* 804E9E1C  7F C3 F3 78 */	mr r3, r30
/* 804E9E20  4B FE D2 D5 */	bl Player_actor_recover_lean_angle
/* 804E9E24  7F C3 F3 78 */	mr r3, r30
/* 804E9E28  4B FE B5 F1 */	bl Player_actor_set_eye_pattern_normal
/* 804E9E2C  7F C3 F3 78 */	mr r3, r30
/* 804E9E30  7F E4 FB 78 */	mr r4, r31
/* 804E9E34  4B FF FF 75 */	bl Player_actor_ObjCheck_Invade
/* 804E9E38  7F C3 F3 78 */	mr r3, r30
/* 804E9E3C  4B FF FF 8D */	bl Player_actor_BGcheck_Invade
/* 804E9E40  7F C3 F3 78 */	mr r3, r30
/* 804E9E44  7F E4 FB 78 */	mr r4, r31
/* 804E9E48  4B FF 9E B1 */	bl Player_actor_Item_main
/* 804E9E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E9E54  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9E58  7C 08 03 A6 */	mtlr r0
/* 804E9E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9E60  4E 80 00 20 */	blr 
