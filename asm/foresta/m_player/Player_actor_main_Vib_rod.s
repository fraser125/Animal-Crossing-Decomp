lbl_804F6110:
/* 804F6110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6114  7C 08 02 A6 */	mflr r0
/* 804F6118  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F611C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F6120  7C 9F 23 78 */	mr r31, r4
/* 804F6124  93 C1 00 08 */	stw r30, 8(r1)
/* 804F6128  7C 7E 1B 78 */	mr r30, r3
/* 804F612C  4B FF FF 19 */	bl Player_actor_Movement_Vib_rod
/* 804F6130  7F C3 F3 78 */	mr r3, r30
/* 804F6134  7F E4 FB 78 */	mr r4, r31
/* 804F6138  4B FE 1D C5 */	bl Player_actor_Reinput_force_position_angle
/* 804F613C  7F C3 F3 78 */	mr r3, r30
/* 804F6140  4B FF FF 41 */	bl Player_actor_CulcAnimation_Vib_rod
/* 804F6144  7F C3 F3 78 */	mr r3, r30
/* 804F6148  4B FE 0F AD */	bl Player_actor_recover_lean_angle
/* 804F614C  7F C3 F3 78 */	mr r3, r30
/* 804F6150  4B FD F2 C9 */	bl Player_actor_set_eye_pattern_normal
/* 804F6154  7F C3 F3 78 */	mr r3, r30
/* 804F6158  7F E4 FB 78 */	mr r4, r31
/* 804F615C  4B FF FF 49 */	bl Player_actor_ObjCheck_Vib_rod
/* 804F6160  7F C3 F3 78 */	mr r3, r30
/* 804F6164  4B FF FF 61 */	bl Player_actor_BGcheck_Vib_rod
/* 804F6168  7F C3 F3 78 */	mr r3, r30
/* 804F616C  7F E4 FB 78 */	mr r4, r31
/* 804F6170  4B FE DB 89 */	bl Player_actor_Item_main
/* 804F6174  7C 60 1B 78 */	mr r0, r3
/* 804F6178  7F E3 FB 78 */	mr r3, r31
/* 804F617C  7C 04 03 78 */	mr r4, r0
/* 804F6180  4B FF FF 65 */	bl Player_actor_request_proc_index_fromVib_rod
/* 804F6184  7F C3 F3 78 */	mr r3, r30
/* 804F6188  7F E4 FB 78 */	mr r4, r31
/* 804F618C  4B FE 9E 3D */	bl Player_actor_main_Vib_rod_other_func2
/* 804F6190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F6198  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F619C  7C 08 03 A6 */	mtlr r0
/* 804F61A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F61A4  4E 80 00 20 */	blr 
