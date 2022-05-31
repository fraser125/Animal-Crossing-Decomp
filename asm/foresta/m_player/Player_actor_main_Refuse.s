lbl_804E4FF0:
/* 804E4FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4FF4  7C 08 02 A6 */	mflr r0
/* 804E4FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4FFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5000  7C 9F 23 78 */	mr r31, r4
/* 804E5004  93 C1 00 08 */	stw r30, 8(r1)
/* 804E5008  7C 7E 1B 78 */	mr r30, r3
/* 804E500C  4B FF FF 61 */	bl Player_actor_Movement_Refuse
/* 804E5010  7F C3 F3 78 */	mr r3, r30
/* 804E5014  7F E4 FB 78 */	mr r4, r31
/* 804E5018  4B FF 2E E5 */	bl Player_actor_Reinput_force_position_angle
/* 804E501C  7F C3 F3 78 */	mr r3, r30
/* 804E5020  4B FF FF 6D */	bl Player_actor_CulcAnimation_Refuse
/* 804E5024  7F C3 F3 78 */	mr r3, r30
/* 804E5028  4B FF 20 CD */	bl Player_actor_recover_lean_angle
/* 804E502C  7F C3 F3 78 */	mr r3, r30
/* 804E5030  4B FF 03 E9 */	bl Player_actor_set_eye_pattern_normal
/* 804E5034  7F C3 F3 78 */	mr r3, r30
/* 804E5038  7F E4 FB 78 */	mr r4, r31
/* 804E503C  4B FF FF 75 */	bl Player_actor_ObjCheck_Refuse
/* 804E5040  7F C3 F3 78 */	mr r3, r30
/* 804E5044  4B FF FF 8D */	bl Player_actor_BGcheck_Refuse
/* 804E5048  7F C3 F3 78 */	mr r3, r30
/* 804E504C  7F E4 FB 78 */	mr r4, r31
/* 804E5050  4B FF EC A9 */	bl Player_actor_Item_main
/* 804E5054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E505C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E5060  7C 08 03 A6 */	mtlr r0
/* 804E5064  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5068  4E 80 00 20 */	blr 
