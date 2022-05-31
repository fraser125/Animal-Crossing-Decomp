lbl_804E9588:
/* 804E9588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E958C  7C 08 02 A6 */	mflr r0
/* 804E9590  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9598  7C 9F 23 78 */	mr r31, r4
/* 804E959C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E95A0  7C 7E 1B 78 */	mr r30, r3
/* 804E95A4  4B FF FA DD */	bl Player_actor_Request_Wade
/* 804E95A8  2C 03 00 00 */	cmpwi r3, 0
/* 804E95AC  41 82 00 68 */	beq lbl_804E9614
/* 804E95B0  7F C3 F3 78 */	mr r3, r30
/* 804E95B4  7F E4 FB 78 */	mr r4, r31
/* 804E95B8  4B FF 69 65 */	bl Player_actor_main_Wade_snowball_other_func1
/* 804E95BC  7F C3 F3 78 */	mr r3, r30
/* 804E95C0  4B FF FE 29 */	bl Player_actor_Movement_Wade_snowball
/* 804E95C4  7F C3 F3 78 */	mr r3, r30
/* 804E95C8  7F E4 FB 78 */	mr r4, r31
/* 804E95CC  4B FE E9 31 */	bl Player_actor_Reinput_force_position_angle
/* 804E95D0  7F C3 F3 78 */	mr r3, r30
/* 804E95D4  7F E4 FB 78 */	mr r4, r31
/* 804E95D8  4B FF FD 3D */	bl Player_actor_ChangeAnimation_Wade_snowball
/* 804E95DC  7F C3 F3 78 */	mr r3, r30
/* 804E95E0  4B FF FD D1 */	bl Player_actor_CulcAnimation_Wade_snowball
/* 804E95E4  7F C3 F3 78 */	mr r3, r30
/* 804E95E8  4B FE DB 0D */	bl Player_actor_recover_lean_angle
/* 804E95EC  7F C3 F3 78 */	mr r3, r30
/* 804E95F0  4B FE BE 29 */	bl Player_actor_set_eye_pattern_normal
/* 804E95F4  7F C3 F3 78 */	mr r3, r30
/* 804E95F8  4B FF FE A5 */	bl Player_actor_BGcheck_Wade_snowball
/* 804E95FC  7F C3 F3 78 */	mr r3, r30
/* 804E9600  7F E4 FB 78 */	mr r4, r31
/* 804E9604  4B FF A6 F5 */	bl Player_actor_Item_main
/* 804E9608  7F C3 F3 78 */	mr r3, r30
/* 804E960C  7F E4 FB 78 */	mr r4, r31
/* 804E9610  4B FF FE E1 */	bl Player_actor_request_proc_index_fromWade_snowball
lbl_804E9614:
/* 804E9614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E961C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9620  7C 08 03 A6 */	mtlr r0
/* 804E9624  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9628  4E 80 00 20 */	blr 
