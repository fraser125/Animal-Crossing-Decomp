lbl_804EF500:
/* 804EF500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF504  7C 08 02 A6 */	mflr r0
/* 804EF508  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF50C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF510  7C 9F 23 78 */	mr r31, r4
/* 804EF514  93 C1 00 08 */	stw r30, 8(r1)
/* 804EF518  7C 7E 1B 78 */	mr r30, r3
/* 804EF51C  4B FF FF 31 */	bl Player_actor_Movement_Sitdown_wait
/* 804EF520  7F C3 F3 78 */	mr r3, r30
/* 804EF524  7F E4 FB 78 */	mr r4, r31
/* 804EF528  4B FE 89 D5 */	bl Player_actor_Reinput_force_position_angle
/* 804EF52C  7F C3 F3 78 */	mr r3, r30
/* 804EF530  4B FF FF 41 */	bl Player_actor_CulcAnimation_Sitdown_wait
/* 804EF534  7F C3 F3 78 */	mr r3, r30
/* 804EF538  4B FE 7B BD */	bl Player_actor_recover_lean_angle
/* 804EF53C  7F C3 F3 78 */	mr r3, r30
/* 804EF540  4B FE 5E D9 */	bl Player_actor_set_eye_pattern_normal
/* 804EF544  7F C3 F3 78 */	mr r3, r30
/* 804EF548  7F E4 FB 78 */	mr r4, r31
/* 804EF54C  4B FF 47 AD */	bl Player_actor_Item_main
/* 804EF550  7F C3 F3 78 */	mr r3, r30
/* 804EF554  7F E4 FB 78 */	mr r4, r31
/* 804EF558  4B FF FF 3D */	bl Player_actor_request_proc_index_fromSitdown_wait
/* 804EF55C  7F C3 F3 78 */	mr r3, r30
/* 804EF560  7F E4 FB 78 */	mr r4, r31
/* 804EF564  4B FF 0A 01 */	bl Player_actor_main_Sitdown_wait_other_func2
/* 804EF568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF570  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EF574  7C 08 03 A6 */	mtlr r0
/* 804EF578  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF57C  4E 80 00 20 */	blr 
