lbl_804E9868:
/* 804E9868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E986C  7C 08 02 A6 */	mflr r0
/* 804E9870  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E9874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E9878  7C 9F 23 78 */	mr r31, r4
/* 804E987C  38 81 00 08 */	addi r4, r1, 8
/* 804E9880  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E9884  7C 7E 1B 78 */	mr r30, r3
/* 804E9888  4B FF FF 4D */	bl Player_actor_CulcAnimation_Door
/* 804E988C  7F C3 F3 78 */	mr r3, r30
/* 804E9890  4B FF FF 65 */	bl Player_actor_Movement_Door
/* 804E9894  7F C3 F3 78 */	mr r3, r30
/* 804E9898  7F E4 FB 78 */	mr r4, r31
/* 804E989C  4B FE E6 61 */	bl Player_actor_Reinput_force_position_angle
/* 804E98A0  7F C3 F3 78 */	mr r3, r30
/* 804E98A4  4B FE D8 51 */	bl Player_actor_recover_lean_angle
/* 804E98A8  7F C3 F3 78 */	mr r3, r30
/* 804E98AC  4B FE BB 6D */	bl Player_actor_set_eye_pattern_normal
/* 804E98B0  7F C3 F3 78 */	mr r3, r30
/* 804E98B4  7F E4 FB 78 */	mr r4, r31
/* 804E98B8  4B FF FF 91 */	bl Player_actor_ObjCheck_Door
/* 804E98BC  7F C3 F3 78 */	mr r3, r30
/* 804E98C0  7F E4 FB 78 */	mr r4, r31
/* 804E98C4  4B FF A4 35 */	bl Player_actor_Item_main
/* 804E98C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E98CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E98D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E98D4  7C 08 03 A6 */	mtlr r0
/* 804E98D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804E98DC  4E 80 00 20 */	blr 
