lbl_804F8194:
/* 804F8194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8198  7C 08 02 A6 */	mflr r0
/* 804F819C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F81A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F81A4  7C 9F 23 78 */	mr r31, r4
/* 804F81A8  93 C1 00 08 */	stw r30, 8(r1)
/* 804F81AC  7C 7E 1B 78 */	mr r30, r3
/* 804F81B0  4B FD F3 2D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F81B4  2C 03 00 00 */	cmpwi r3, 0
/* 804F81B8  40 82 00 34 */	bne lbl_804F81EC
/* 804F81BC  7F C3 F3 78 */	mr r3, r30
/* 804F81C0  4B FF FC 81 */	bl Player_actor_Reset_Hole_Fill_scoop
/* 804F81C4  7F C3 F3 78 */	mr r3, r30
/* 804F81C8  7F E4 FB 78 */	mr r4, r31
/* 804F81CC  4B FF FF 25 */	bl Player_actor_SetEffect_Fill_scoop
/* 804F81D0  7F C3 F3 78 */	mr r3, r30
/* 804F81D4  4B FF FF 41 */	bl Player_actor_SetSound_Fill_scoop
/* 804F81D8  7F C3 F3 78 */	mr r3, r30
/* 804F81DC  7F E4 FB 78 */	mr r4, r31
/* 804F81E0  38 A0 00 00 */	li r5, 0
/* 804F81E4  38 C0 00 00 */	li r6, 0
/* 804F81E8  4B FE 31 09 */	bl Player_actor_Set_FootMark_Base1
lbl_804F81EC:
/* 804F81EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F81F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F81F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F81F8  7C 08 03 A6 */	mtlr r0
/* 804F81FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8200  4E 80 00 20 */	blr 
