lbl_804EADF8:
/* 804EADF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EADFC  7C 08 02 A6 */	mflr r0
/* 804EAE00  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EAE04  39 61 00 20 */	addi r11, r1, 0x20
/* 804EAE08  4B BB 00 CD */	bl func_8009AED4
/* 804EAE0C  7C 9E 23 78 */	mr r30, r4
/* 804EAE10  7C 7D 1B 78 */	mr r29, r3
/* 804EAE14  38 81 00 08 */	addi r4, r1, 8
/* 804EAE18  4B FF FD 99 */	bl Player_actor_CulcAnimation_Pull
/* 804EAE1C  7C 60 1B 78 */	mr r0, r3
/* 804EAE20  7F A3 EB 78 */	mr r3, r29
/* 804EAE24  7C 1F 03 78 */	mr r31, r0
/* 804EAE28  4B FF FD A9 */	bl Player_actor_Movement_Pull
/* 804EAE2C  7F A3 EB 78 */	mr r3, r29
/* 804EAE30  7F C4 F3 78 */	mr r4, r30
/* 804EAE34  4B FE D0 C9 */	bl Player_actor_Reinput_force_position_angle
/* 804EAE38  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EAE3C  7F A3 EB 78 */	mr r3, r29
/* 804EAE40  7F C4 F3 78 */	mr r4, r30
/* 804EAE44  4B FF FE B1 */	bl Player_actor_SearchAnimation_Pull
/* 804EAE48  7F A3 EB 78 */	mr r3, r29
/* 804EAE4C  4B FE C2 A9 */	bl Player_actor_recover_lean_angle
/* 804EAE50  7F A3 EB 78 */	mr r3, r29
/* 804EAE54  4B FE A5 C5 */	bl Player_actor_set_eye_pattern_normal
/* 804EAE58  7F A3 EB 78 */	mr r3, r29
/* 804EAE5C  7F C4 F3 78 */	mr r4, r30
/* 804EAE60  4B FF FE E9 */	bl Player_actor_ObjCheck_Pull
/* 804EAE64  7F A3 EB 78 */	mr r3, r29
/* 804EAE68  4B FF FF 01 */	bl Player_actor_BGcheck_Pull
/* 804EAE6C  7F A3 EB 78 */	mr r3, r29
/* 804EAE70  7F C4 F3 78 */	mr r4, r30
/* 804EAE74  4B FF 8E 85 */	bl Player_actor_Item_main
/* 804EAE78  7F A3 EB 78 */	mr r3, r29
/* 804EAE7C  7F C4 F3 78 */	mr r4, r30
/* 804EAE80  7F E5 FB 78 */	mr r5, r31
/* 804EAE84  4B FF FF 05 */	bl Player_actor_request_proc_index_fromPull
/* 804EAE88  39 61 00 20 */	addi r11, r1, 0x20
/* 804EAE8C  4B BB 00 95 */	bl func_8009AF20
/* 804EAE90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EAE94  7C 08 03 A6 */	mtlr r0
/* 804EAE98  38 21 00 20 */	addi r1, r1, 0x20
/* 804EAE9C  4E 80 00 20 */	blr 
