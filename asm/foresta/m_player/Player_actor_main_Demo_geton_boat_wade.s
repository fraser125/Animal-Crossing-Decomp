lbl_80507A68:
/* 80507A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507A6C  7C 08 02 A6 */	mflr r0
/* 80507A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80507A78  7C 9F 23 78 */	mr r31, r4
/* 80507A7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80507A80  7C 7E 1B 78 */	mr r30, r3
/* 80507A84  4B FD 84 BD */	bl Player_actor_main_Demo_geton_boat_wade_other_func1
/* 80507A88  7F C3 F3 78 */	mr r3, r30
/* 80507A8C  4B FF FF 15 */	bl Player_actor_Movement_Demo_geton_boat_wade
/* 80507A90  7F C3 F3 78 */	mr r3, r30
/* 80507A94  7F E4 FB 78 */	mr r4, r31
/* 80507A98  4B FD 04 65 */	bl Player_actor_Reinput_force_position_angle
/* 80507A9C  7F C3 F3 78 */	mr r3, r30
/* 80507AA0  4B FF FF 21 */	bl Player_actor_CulcAnimation_Demo_geton_boat_wade
/* 80507AA4  7F C3 F3 78 */	mr r3, r30
/* 80507AA8  4B FC F6 4D */	bl Player_actor_recover_lean_angle
/* 80507AAC  7F C3 F3 78 */	mr r3, r30
/* 80507AB0  4B FC D9 69 */	bl Player_actor_set_eye_pattern_normal
/* 80507AB4  7F C3 F3 78 */	mr r3, r30
/* 80507AB8  7F E4 FB 78 */	mr r4, r31
/* 80507ABC  4B FD C2 3D */	bl Player_actor_Item_main
/* 80507AC0  7F C3 F3 78 */	mr r3, r30
/* 80507AC4  7F E4 FB 78 */	mr r4, r31
/* 80507AC8  4B FF FF 4D */	bl Player_actor_request_proc_index_fromDemo_geton_boat_wade
/* 80507ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80507AD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80507AD8  7C 08 03 A6 */	mtlr r0
/* 80507ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80507AE0  4E 80 00 20 */	blr 
