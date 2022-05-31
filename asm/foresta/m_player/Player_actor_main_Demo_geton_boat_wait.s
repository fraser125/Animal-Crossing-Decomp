lbl_8050774C:
/* 8050774C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507750  7C 08 02 A6 */	mflr r0
/* 80507754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050775C  7C 9F 23 78 */	mr r31, r4
/* 80507760  93 C1 00 08 */	stw r30, 8(r1)
/* 80507764  7C 7E 1B 78 */	mr r30, r3
/* 80507768  4B FF FF 35 */	bl Player_actor_Movement_Demo_geton_boat_wait
/* 8050776C  7F C3 F3 78 */	mr r3, r30
/* 80507770  7F E4 FB 78 */	mr r4, r31
/* 80507774  4B FD 07 89 */	bl Player_actor_Reinput_force_position_angle
/* 80507778  7F C3 F3 78 */	mr r3, r30
/* 8050777C  4B FF FF 25 */	bl Player_actor_CulcAnimation_Demo_geton_boat_wait
/* 80507780  7F C3 F3 78 */	mr r3, r30
/* 80507784  4B FC F9 71 */	bl Player_actor_recover_lean_angle
/* 80507788  7F C3 F3 78 */	mr r3, r30
/* 8050778C  4B FC DC 8D */	bl Player_actor_set_eye_pattern_normal
/* 80507790  7F C3 F3 78 */	mr r3, r30
/* 80507794  7F E4 FB 78 */	mr r4, r31
/* 80507798  4B FD C5 61 */	bl Player_actor_Item_main
/* 8050779C  7F C3 F3 78 */	mr r3, r30
/* 805077A0  4B FF FF 25 */	bl Player_actor_request_proc_index_fromDemo_geton_boat_wait
/* 805077A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805077A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805077AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805077B0  7C 08 03 A6 */	mtlr r0
/* 805077B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805077B8  4E 80 00 20 */	blr 
