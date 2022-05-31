lbl_804F5B00:
/* 804F5B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5B04  7C 08 02 A6 */	mflr r0
/* 804F5B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5B10  7C 9F 23 78 */	mr r31, r4
/* 804F5B14  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5B18  7C 7E 1B 78 */	mr r30, r3
/* 804F5B1C  4B FF FE 11 */	bl Player_actor_Movement_Relax_rod
/* 804F5B20  7F C3 F3 78 */	mr r3, r30
/* 804F5B24  7F E4 FB 78 */	mr r4, r31
/* 804F5B28  4B FE 23 D5 */	bl Player_actor_Reinput_force_position_angle
/* 804F5B2C  7F C3 F3 78 */	mr r3, r30
/* 804F5B30  4B FF FE 39 */	bl Player_actor_CulcAnimation_Relax_rod
/* 804F5B34  7F C3 F3 78 */	mr r3, r30
/* 804F5B38  4B FE 15 BD */	bl Player_actor_recover_lean_angle
/* 804F5B3C  7F C3 F3 78 */	mr r3, r30
/* 804F5B40  4B FD F8 D9 */	bl Player_actor_set_eye_pattern_normal
/* 804F5B44  7F C3 F3 78 */	mr r3, r30
/* 804F5B48  7F E4 FB 78 */	mr r4, r31
/* 804F5B4C  4B FF FE 41 */	bl Player_actor_ObjCheck_Relax_rod
/* 804F5B50  7F C3 F3 78 */	mr r3, r30
/* 804F5B54  4B FF FE 59 */	bl Player_actor_BGcheck_Relax_rod
/* 804F5B58  7F C3 F3 78 */	mr r3, r30
/* 804F5B5C  7F E4 FB 78 */	mr r4, r31
/* 804F5B60  4B FE E1 99 */	bl Player_actor_Item_main
/* 804F5B64  7C 60 1B 78 */	mr r0, r3
/* 804F5B68  7F C3 F3 78 */	mr r3, r30
/* 804F5B6C  7C 05 03 78 */	mr r5, r0
/* 804F5B70  7F E4 FB 78 */	mr r4, r31
/* 804F5B74  4B FF FE 59 */	bl Player_actor_request_proc_index_fromRelax_rod
/* 804F5B78  7F C3 F3 78 */	mr r3, r30
/* 804F5B7C  7F E4 FB 78 */	mr r4, r31
/* 804F5B80  4B FE A4 29 */	bl Player_actor_main_Relax_rod_other_func2
/* 804F5B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5B8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F5B90  7C 08 03 A6 */	mtlr r0
/* 804F5B94  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5B98  4E 80 00 20 */	blr 
