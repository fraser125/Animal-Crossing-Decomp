lbl_804F9120:
/* 804F9120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9124  7C 08 02 A6 */	mflr r0
/* 804F9128  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F912C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9130  7C 9F 23 78 */	mr r31, r4
/* 804F9134  93 C1 00 08 */	stw r30, 8(r1)
/* 804F9138  7C 7E 1B 78 */	mr r30, r3
/* 804F913C  4B FD E3 A1 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F9140  2C 03 00 00 */	cmpwi r3, 0
/* 804F9144  40 82 00 44 */	bne lbl_804F9188
/* 804F9148  7F C3 F3 78 */	mr r3, r30
/* 804F914C  7F E4 FB 78 */	mr r4, r31
/* 804F9150  4B FF FA 45 */	bl Player_actor_SetEffect_Reflect_scoop
/* 804F9154  7F C3 F3 78 */	mr r3, r30
/* 804F9158  4B FF FA 5D */	bl Player_actor_SetAngleSpeedF_Reflect_scoop
/* 804F915C  7F C3 F3 78 */	mr r3, r30
/* 804F9160  4B FF FA B1 */	bl Player_actor_SetOrderNPC_Reflect_scoop
/* 804F9164  7F C3 F3 78 */	mr r3, r30
/* 804F9168  4B FF FA F1 */	bl Player_actor_SetSound_Reflect_scoop
/* 804F916C  7F C3 F3 78 */	mr r3, r30
/* 804F9170  7F E4 FB 78 */	mr r4, r31
/* 804F9174  38 A0 00 00 */	li r5, 0
/* 804F9178  38 C0 00 00 */	li r6, 0
/* 804F917C  4B FE 21 75 */	bl Player_actor_Set_FootMark_Base1
/* 804F9180  7F C3 F3 78 */	mr r3, r30
/* 804F9184  4B FF FE ED */	bl Player_actor_informed_insects_Reflect_scoop
lbl_804F9188:
/* 804F9188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F918C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9190  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F9194  7C 08 03 A6 */	mtlr r0
/* 804F9198  38 21 00 10 */	addi r1, r1, 0x10
/* 804F919C  4E 80 00 20 */	blr 
