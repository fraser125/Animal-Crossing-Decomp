lbl_804FE430:
/* 804FE430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE434  7C 08 02 A6 */	mflr r0
/* 804FE438  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE43C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE440  7C 9F 23 78 */	mr r31, r4
/* 804FE444  93 C1 00 08 */	stw r30, 8(r1)
/* 804FE448  7C 7E 1B 78 */	mr r30, r3
/* 804FE44C  4B FF FE E9 */	bl Player_actor_Movement_Demo_standing_train
/* 804FE450  7F C3 F3 78 */	mr r3, r30
/* 804FE454  7F E4 FB 78 */	mr r4, r31
/* 804FE458  4B FD 9A A5 */	bl Player_actor_Reinput_force_position_angle
/* 804FE45C  7F C3 F3 78 */	mr r3, r30
/* 804FE460  4B FF FE B1 */	bl Player_actor_CulcAnimation_Demo_standing_train
/* 804FE464  7F C3 F3 78 */	mr r3, r30
/* 804FE468  4B FD 8C 8D */	bl Player_actor_recover_lean_angle
/* 804FE46C  7F C3 F3 78 */	mr r3, r30
/* 804FE470  4B FD 6F A9 */	bl Player_actor_set_eye_pattern_normal
/* 804FE474  7F C3 F3 78 */	mr r3, r30
/* 804FE478  7F E4 FB 78 */	mr r4, r31
/* 804FE47C  4B FE 58 7D */	bl Player_actor_Item_main
/* 804FE480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE488  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FE48C  7C 08 03 A6 */	mtlr r0
/* 804FE490  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE494  4E 80 00 20 */	blr 
