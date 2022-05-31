lbl_804EA4FC:
/* 804EA4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA500  7C 08 02 A6 */	mflr r0
/* 804EA504  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EA50C  7C 9F 23 78 */	mr r31, r4
/* 804EA510  93 C1 00 08 */	stw r30, 8(r1)
/* 804EA514  7C 7E 1B 78 */	mr r30, r3
/* 804EA518  4B FF FB 2D */	bl Player_actor_Movement_Hold
/* 804EA51C  7F C3 F3 78 */	mr r3, r30
/* 804EA520  7F E4 FB 78 */	mr r4, r31
/* 804EA524  4B FE D9 D9 */	bl Player_actor_Reinput_force_position_angle
/* 804EA528  7F C3 F3 78 */	mr r3, r30
/* 804EA52C  4B FF FA F5 */	bl Player_actor_CulcAnimation_Hold
/* 804EA530  7F C3 F3 78 */	mr r3, r30
/* 804EA534  4B FE CB C1 */	bl Player_actor_recover_lean_angle
/* 804EA538  7F C3 F3 78 */	mr r3, r30
/* 804EA53C  4B FE AE DD */	bl Player_actor_set_eye_pattern_normal
/* 804EA540  7F C3 F3 78 */	mr r3, r30
/* 804EA544  7F E4 FB 78 */	mr r4, r31
/* 804EA548  4B FF FD 2D */	bl Player_actor_ObjCheck_Hold
/* 804EA54C  7F C3 F3 78 */	mr r3, r30
/* 804EA550  4B FF FD 45 */	bl Player_actor_BGcheck_Hold
/* 804EA554  7F C3 F3 78 */	mr r3, r30
/* 804EA558  7F E4 FB 78 */	mr r4, r31
/* 804EA55C  4B FF 97 9D */	bl Player_actor_Item_main
/* 804EA560  7F C3 F3 78 */	mr r3, r30
/* 804EA564  7F E4 FB 78 */	mr r4, r31
/* 804EA568  4B FF FD 4D */	bl Player_actor_request_proc_index_fromHold
/* 804EA56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EA574  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EA578  7C 08 03 A6 */	mtlr r0
/* 804EA57C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA580  4E 80 00 20 */	blr 
