lbl_804EB868:
/* 804EB868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB86C  7C 08 02 A6 */	mflr r0
/* 804EB870  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EB878  7C 9F 23 78 */	mr r31, r4
/* 804EB87C  93 C1 00 08 */	stw r30, 8(r1)
/* 804EB880  7C 7E 1B 78 */	mr r30, r3
/* 804EB884  4B FF FF 7D */	bl Player_actor_Movement_Wait_open_furniture
/* 804EB888  7F C3 F3 78 */	mr r3, r30
/* 804EB88C  7F E4 FB 78 */	mr r4, r31
/* 804EB890  4B FE C6 6D */	bl Player_actor_Reinput_force_position_angle
/* 804EB894  7F C3 F3 78 */	mr r3, r30
/* 804EB898  4B FF FF 8D */	bl Player_actor_CulcAnimation_Wait_open_furniture
/* 804EB89C  7F C3 F3 78 */	mr r3, r30
/* 804EB8A0  4B FE B8 55 */	bl Player_actor_recover_lean_angle
/* 804EB8A4  7F C3 F3 78 */	mr r3, r30
/* 804EB8A8  4B FE 9B 71 */	bl Player_actor_set_eye_pattern_normal
/* 804EB8AC  7F C3 F3 78 */	mr r3, r30
/* 804EB8B0  7F E4 FB 78 */	mr r4, r31
/* 804EB8B4  4B FF FF 95 */	bl Player_actor_ObjCheck_Wait_open_furniture
/* 804EB8B8  7F C3 F3 78 */	mr r3, r30
/* 804EB8BC  7F E4 FB 78 */	mr r4, r31
/* 804EB8C0  4B FF 84 39 */	bl Player_actor_Item_main
/* 804EB8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB8C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EB8CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EB8D0  7C 08 03 A6 */	mtlr r0
/* 804EB8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB8D8  4E 80 00 20 */	blr 
