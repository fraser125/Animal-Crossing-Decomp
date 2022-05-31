lbl_80508CF4:
/* 80508CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508CF8  7C 08 02 A6 */	mflr r0
/* 80508CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80508D04  7C 9F 23 78 */	mr r31, r4
/* 80508D08  93 C1 00 08 */	stw r30, 8(r1)
/* 80508D0C  7C 7E 1B 78 */	mr r30, r3
/* 80508D10  4B FC F1 ED */	bl Player_actor_Reinput_force_position_angle
/* 80508D14  7F C3 F3 78 */	mr r3, r30
/* 80508D18  4B FF FF 2D */	bl Player_actor_CulcAnimation_Demo_get_golden_axe_wait
/* 80508D1C  7F C3 F3 78 */	mr r3, r30
/* 80508D20  4B FC E3 D5 */	bl Player_actor_recover_lean_angle
/* 80508D24  7F C3 F3 78 */	mr r3, r30
/* 80508D28  4B FC C6 F1 */	bl Player_actor_set_eye_pattern_normal
/* 80508D2C  7F C3 F3 78 */	mr r3, r30
/* 80508D30  7F E4 FB 78 */	mr r4, r31
/* 80508D34  4B FF FF 31 */	bl Player_actor_ObjCheck_Demo_get_golden_axe_wait
/* 80508D38  7F C3 F3 78 */	mr r3, r30
/* 80508D3C  4B FF FF 49 */	bl Player_actor_BGcheck_Demo_get_golden_axe_wait
/* 80508D40  7F C3 F3 78 */	mr r3, r30
/* 80508D44  7F E4 FB 78 */	mr r4, r31
/* 80508D48  4B FD AF B1 */	bl Player_actor_Item_main
/* 80508D4C  7F C3 F3 78 */	mr r3, r30
/* 80508D50  7F E4 FB 78 */	mr r4, r31
/* 80508D54  4B FF FF 51 */	bl Player_actor_request_proc_index_fromDemo_get_golden_axe_wait
/* 80508D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80508D60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80508D64  7C 08 03 A6 */	mtlr r0
/* 80508D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80508D6C  4E 80 00 20 */	blr 
