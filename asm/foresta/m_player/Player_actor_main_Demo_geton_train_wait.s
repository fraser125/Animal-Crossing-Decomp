lbl_804FDE68:
/* 804FDE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDE6C  7C 08 02 A6 */	mflr r0
/* 804FDE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FDE78  7C 9F 23 78 */	mr r31, r4
/* 804FDE7C  93 C1 00 08 */	stw r30, 8(r1)
/* 804FDE80  7C 7E 1B 78 */	mr r30, r3
/* 804FDE84  4B FF FF 9D */	bl Player_actor_Movement_Demo_geton_train_wait
/* 804FDE88  7F C3 F3 78 */	mr r3, r30
/* 804FDE8C  7F E4 FB 78 */	mr r4, r31
/* 804FDE90  4B FD A0 6D */	bl Player_actor_Reinput_force_position_angle
/* 804FDE94  7F C3 F3 78 */	mr r3, r30
/* 804FDE98  4B FF FF AD */	bl Player_actor_CulcAnimation_Demo_geton_train_wait
/* 804FDE9C  7F C3 F3 78 */	mr r3, r30
/* 804FDEA0  4B FD 92 55 */	bl Player_actor_recover_lean_angle
/* 804FDEA4  7F C3 F3 78 */	mr r3, r30
/* 804FDEA8  4B FD 75 71 */	bl Player_actor_set_eye_pattern_normal
/* 804FDEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FDEB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FDEB8  7C 08 03 A6 */	mtlr r0
/* 804FDEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDEC0  4E 80 00 20 */	blr 
