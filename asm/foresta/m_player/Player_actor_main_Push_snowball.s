lbl_80504B50:
/* 80504B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80504B54  7C 08 02 A6 */	mflr r0
/* 80504B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504B5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80504B60  7C 9F 23 78 */	mr r31, r4
/* 80504B64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80504B68  7C 7E 1B 78 */	mr r30, r3
/* 80504B6C  4B FD 33 91 */	bl Player_actor_Reinput_force_position_angle
/* 80504B70  7F C3 F3 78 */	mr r3, r30
/* 80504B74  38 81 00 08 */	addi r4, r1, 8
/* 80504B78  4B FF FE C9 */	bl Player_actor_CulcAnimation_Push_snowball
/* 80504B7C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80504B80  7F C3 F3 78 */	mr r3, r30
/* 80504B84  7F E4 FB 78 */	mr r4, r31
/* 80504B88  4B FF FE F9 */	bl Player_actor_SearchAnimation_Push_snowball
/* 80504B8C  7F C3 F3 78 */	mr r3, r30
/* 80504B90  4B FD 25 65 */	bl Player_actor_recover_lean_angle
/* 80504B94  7F C3 F3 78 */	mr r3, r30
/* 80504B98  4B FD 08 81 */	bl Player_actor_set_eye_pattern_normal
/* 80504B9C  7F C3 F3 78 */	mr r3, r30
/* 80504BA0  7F E4 FB 78 */	mr r4, r31
/* 80504BA4  4B FD F1 55 */	bl Player_actor_Item_main
/* 80504BA8  7F C3 F3 78 */	mr r3, r30
/* 80504BAC  7F E4 FB 78 */	mr r4, r31
/* 80504BB0  4B FF FF 45 */	bl Player_actor_request_proc_index_fromPush_snowball
/* 80504BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504BB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80504BBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80504BC0  7C 08 03 A6 */	mtlr r0
/* 80504BC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80504BC8  4E 80 00 20 */	blr 
