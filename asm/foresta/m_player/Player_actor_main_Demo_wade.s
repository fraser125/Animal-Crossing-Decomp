lbl_804FE820:
/* 804FE820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE824  7C 08 02 A6 */	mflr r0
/* 804FE828  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE830  7C 9F 23 78 */	mr r31, r4
/* 804FE834  93 C1 00 08 */	stw r30, 8(r1)
/* 804FE838  7C 7E 1B 78 */	mr r30, r3
/* 804FE83C  4B FE 16 BD */	bl Player_actor_main_Demo_wade_other_func1
/* 804FE840  7F C3 F3 78 */	mr r3, r30
/* 804FE844  4B FF FE 3D */	bl Player_actor_Movement_Demo_wade
/* 804FE848  7F C3 F3 78 */	mr r3, r30
/* 804FE84C  7F E4 FB 78 */	mr r4, r31
/* 804FE850  4B FD 96 AD */	bl Player_actor_Reinput_force_position_angle
/* 804FE854  7F C3 F3 78 */	mr r3, r30
/* 804FE858  4B FF FE 05 */	bl Player_actor_CulcAnimation_Demo_wade
/* 804FE85C  7F C3 F3 78 */	mr r3, r30
/* 804FE860  4B FD 88 95 */	bl Player_actor_recover_lean_angle
/* 804FE864  7F C3 F3 78 */	mr r3, r30
/* 804FE868  4B FD 6B B1 */	bl Player_actor_set_eye_pattern_normal
/* 804FE86C  7F C3 F3 78 */	mr r3, r30
/* 804FE870  7F E4 FB 78 */	mr r4, r31
/* 804FE874  4B FF FE C1 */	bl Player_actor_ObjCheck_Demo_wade
/* 804FE878  7F C3 F3 78 */	mr r3, r30
/* 804FE87C  4B FF FE D9 */	bl Player_actor_BGcheck_Demo_wade
/* 804FE880  7F C3 F3 78 */	mr r3, r30
/* 804FE884  7F E4 FB 78 */	mr r4, r31
/* 804FE888  4B FE 54 71 */	bl Player_actor_Item_main
/* 804FE88C  7F C3 F3 78 */	mr r3, r30
/* 804FE890  7F E4 FB 78 */	mr r4, r31
/* 804FE894  4B FF FF 15 */	bl Player_actor_request_proc_index_fromDemo_wade
/* 804FE898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE8A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FE8A4  7C 08 03 A6 */	mtlr r0
/* 804FE8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE8AC  4E 80 00 20 */	blr 
