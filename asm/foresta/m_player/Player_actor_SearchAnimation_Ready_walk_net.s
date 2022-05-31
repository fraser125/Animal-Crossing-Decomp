lbl_804F24F8:
/* 804F24F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F24FC  7C 08 02 A6 */	mflr r0
/* 804F2500  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F2504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F2508  7C 9F 23 78 */	mr r31, r4
/* 804F250C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F2510  7C 7E 1B 78 */	mr r30, r3
/* 804F2514  4B FE 4F C9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F2518  2C 03 00 00 */	cmpwi r3, 0
/* 804F251C  40 82 00 38 */	bne lbl_804F2554
/* 804F2520  7F C3 F3 78 */	mr r3, r30
/* 804F2524  7F E4 FB 78 */	mr r4, r31
/* 804F2528  38 A0 00 00 */	li r5, 0
/* 804F252C  38 C0 00 00 */	li r6, 0
/* 804F2530  4B FE 8D C1 */	bl Player_actor_Set_FootMark_Base1
/* 804F2534  3C 60 80 64 */	lis r3, lit_5247@ha /* 0x80647CE4@ha */
/* 804F2538  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804F253C  38 A3 7C E4 */	addi r5, r3, lit_5247@l /* 0x80647CE4@l */
/* 804F2540  C0 44 7A 44 */	lfs f2, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804F2544  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F2548  7F C3 F3 78 */	mr r3, r30
/* 804F254C  7F E4 FB 78 */	mr r4, r31
/* 804F2550  4B FF 3F 71 */	bl Player_actor_SetEffect_Walk
lbl_804F2554:
/* 804F2554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F255C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F2560  7C 08 03 A6 */	mtlr r0
/* 804F2564  38 21 00 10 */	addi r1, r1, 0x10
/* 804F2568  4E 80 00 20 */	blr 
