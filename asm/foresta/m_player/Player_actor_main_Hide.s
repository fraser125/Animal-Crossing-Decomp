lbl_804FE934:
/* 804FE934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE938  7C 08 02 A6 */	mflr r0
/* 804FE93C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE944  7C 7F 1B 78 */	mr r31, r3
/* 804FE948  4B FD 95 B5 */	bl Player_actor_Reinput_force_position_angle
/* 804FE94C  7F E3 FB 78 */	mr r3, r31
/* 804FE950  4B FD 87 A5 */	bl Player_actor_recover_lean_angle
/* 804FE954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE95C  7C 08 03 A6 */	mtlr r0
/* 804FE960  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE964  4E 80 00 20 */	blr 
