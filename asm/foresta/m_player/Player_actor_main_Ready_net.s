lbl_804F21A4:
/* 804F21A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F21A8  7C 08 02 A6 */	mflr r0
/* 804F21AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F21B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F21B4  7C 9F 23 78 */	mr r31, r4
/* 804F21B8  93 C1 00 08 */	stw r30, 8(r1)
/* 804F21BC  7C 7E 1B 78 */	mr r30, r3
/* 804F21C0  4B FF FE 59 */	bl Player_actor_Movement_Ready_net
/* 804F21C4  7F C3 F3 78 */	mr r3, r30
/* 804F21C8  7F E4 FB 78 */	mr r4, r31
/* 804F21CC  4B FE 5D 31 */	bl Player_actor_Reinput_force_position_angle
/* 804F21D0  7F C3 F3 78 */	mr r3, r30
/* 804F21D4  4B FF FE 6D */	bl Player_actor_CulcAnimation_Ready_net
/* 804F21D8  7F C3 F3 78 */	mr r3, r30
/* 804F21DC  4B FE 4F 19 */	bl Player_actor_recover_lean_angle
/* 804F21E0  7F C3 F3 78 */	mr r3, r30
/* 804F21E4  4B FE 32 35 */	bl Player_actor_set_eye_pattern_normal
/* 804F21E8  7F C3 F3 78 */	mr r3, r30
/* 804F21EC  7F E4 FB 78 */	mr r4, r31
/* 804F21F0  4B FF FE 75 */	bl Player_actor_ObjCheck_Ready_net
/* 804F21F4  7F C3 F3 78 */	mr r3, r30
/* 804F21F8  4B FF FE 8D */	bl Player_actor_BGcheck_Ready_net
/* 804F21FC  7F C3 F3 78 */	mr r3, r30
/* 804F2200  7F E4 FB 78 */	mr r4, r31
/* 804F2204  4B FF 1A F5 */	bl Player_actor_Item_main
/* 804F2208  7F C3 F3 78 */	mr r3, r30
/* 804F220C  7F E4 FB 78 */	mr r4, r31
/* 804F2210  4B FF FE 95 */	bl Player_actor_request_proc_index_fromReady_net
/* 804F2214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F221C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F2220  7C 08 03 A6 */	mtlr r0
/* 804F2224  38 21 00 10 */	addi r1, r1, 0x10
/* 804F2228  4E 80 00 20 */	blr 
