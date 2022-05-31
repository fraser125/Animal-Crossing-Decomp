lbl_80501624:
/* 80501624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501628  7C 08 02 A6 */	mflr r0
/* 8050162C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80501634  7C 9F 23 78 */	mr r31, r4
/* 80501638  93 C1 00 08 */	stw r30, 8(r1)
/* 8050163C  7C 7E 1B 78 */	mr r30, r3
/* 80501640  4B FF FF 35 */	bl Player_actor_CulcAnimation_Mail_jump
/* 80501644  7F C3 F3 78 */	mr r3, r30
/* 80501648  4B FF FF 51 */	bl Player_actor_Movement_Mail_jump
/* 8050164C  7F C3 F3 78 */	mr r3, r30
/* 80501650  7F E4 FB 78 */	mr r4, r31
/* 80501654  4B FD 68 A9 */	bl Player_actor_Reinput_force_position_angle
/* 80501658  7F C3 F3 78 */	mr r3, r30
/* 8050165C  4B FD 5A 99 */	bl Player_actor_recover_lean_angle
/* 80501660  7F C3 F3 78 */	mr r3, r30
/* 80501664  4B FD 3D B5 */	bl Player_actor_set_eye_pattern_normal
/* 80501668  7F C3 F3 78 */	mr r3, r30
/* 8050166C  7F E4 FB 78 */	mr r4, r31
/* 80501670  4B FF FF 75 */	bl Player_actor_ObjCheck_Mail_jump
/* 80501674  7F C3 F3 78 */	mr r3, r30
/* 80501678  4B FF FF 8D */	bl Player_actor_BGcheck_Mail_jump
/* 8050167C  7F C3 F3 78 */	mr r3, r30
/* 80501680  7F E4 FB 78 */	mr r4, r31
/* 80501684  4B FE 26 75 */	bl Player_actor_Item_main
/* 80501688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050168C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80501690  83 C1 00 08 */	lwz r30, 8(r1)
/* 80501694  7C 08 03 A6 */	mtlr r0
/* 80501698  38 21 00 10 */	addi r1, r1, 0x10
/* 8050169C  4E 80 00 20 */	blr 
