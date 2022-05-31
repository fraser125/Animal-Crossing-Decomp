lbl_80505760:
/* 80505760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505764  7C 08 02 A6 */	mflr r0
/* 80505768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050576C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80505770  7C 9F 23 78 */	mr r31, r4
/* 80505774  93 C1 00 08 */	stw r30, 8(r1)
/* 80505778  7C 7E 1B 78 */	mr r30, r3
/* 8050577C  4B FF FD C9 */	bl Player_actor_Movement_Fail_emu
/* 80505780  7F C3 F3 78 */	mr r3, r30
/* 80505784  4B FF FD E9 */	bl Player_actor_CulcAnimation_Fail_emu
/* 80505788  7F C3 F3 78 */	mr r3, r30
/* 8050578C  7F E4 FB 78 */	mr r4, r31
/* 80505790  4B FD 27 6D */	bl Player_actor_Reinput_force_position_angle
/* 80505794  7F C3 F3 78 */	mr r3, r30
/* 80505798  4B FD 19 5D */	bl Player_actor_recover_lean_angle
/* 8050579C  7F C3 F3 78 */	mr r3, r30
/* 805057A0  4B FC FD A5 */	bl Player_actor_set_tex_anime_pattern
/* 805057A4  7F C3 F3 78 */	mr r3, r30
/* 805057A8  7F E4 FB 78 */	mr r4, r31
/* 805057AC  4B FF FD E5 */	bl Player_actor_ObjCheck_Fail_emu
/* 805057B0  7F C3 F3 78 */	mr r3, r30
/* 805057B4  4B FF FD FD */	bl Player_actor_BGcheck_Fail_emu
/* 805057B8  7F C3 F3 78 */	mr r3, r30
/* 805057BC  4B FF FE 6D */	bl Player_actor_MessageControl_Fail_emu
/* 805057C0  7C 60 1B 78 */	mr r0, r3
/* 805057C4  7F C3 F3 78 */	mr r3, r30
/* 805057C8  7C 05 03 78 */	mr r5, r0
/* 805057CC  7F E4 FB 78 */	mr r4, r31
/* 805057D0  4B FF FF 39 */	bl Player_actor_request_proc_index_fromFail_emu
/* 805057D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805057D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805057DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805057E0  7C 08 03 A6 */	mtlr r0
/* 805057E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805057E8  4E 80 00 20 */	blr 
