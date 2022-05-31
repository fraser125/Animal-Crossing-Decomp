lbl_804E758C:
/* 804E758C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7590  7C 08 02 A6 */	mflr r0
/* 804E7594  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E759C  7C 9F 23 78 */	mr r31, r4
/* 804E75A0  93 C1 00 08 */	stw r30, 8(r1)
/* 804E75A4  7C 7E 1B 78 */	mr r30, r3
/* 804E75A8  4B FE FF 35 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804E75AC  2C 03 00 00 */	cmpwi r3, 0
/* 804E75B0  40 82 00 38 */	bne lbl_804E75E8
/* 804E75B4  7F C3 F3 78 */	mr r3, r30
/* 804E75B8  7F E4 FB 78 */	mr r4, r31
/* 804E75BC  38 A0 00 00 */	li r5, 0
/* 804E75C0  38 C0 00 00 */	li r6, 0
/* 804E75C4  4B FF 3D 2D */	bl Player_actor_Set_FootMark_Base1
/* 804E75C8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E75CC  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804E75D0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E75D4  C0 44 7A 44 */	lfs f2, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804E75D8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E75DC  7F C3 F3 78 */	mr r3, r30
/* 804E75E0  7F E4 FB 78 */	mr r4, r31
/* 804E75E4  4B FF FE 4D */	bl Player_actor_SetEffect_Dash
lbl_804E75E8:
/* 804E75E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E75EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E75F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E75F4  7C 08 03 A6 */	mtlr r0
/* 804E75F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E75FC  4E 80 00 20 */	blr 
