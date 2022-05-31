lbl_804D515C:
/* 804D515C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5160  7C 08 02 A6 */	mflr r0
/* 804D5164  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D5168  39 00 00 03 */	li r8, 3
/* 804D516C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5170  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804D5174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5178  FC 60 08 90 */	fmr f3, f1
/* 804D517C  93 C1 00 08 */	stw r30, 8(r1)
/* 804D5180  7C 7E 1B 78 */	mr r30, r3
/* 804D5184  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804D5188  3B FE 0E 20 */	addi r31, r30, 0xe20
/* 804D518C  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 804D5190  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 804D5194  7F E3 FB 78 */	mr r3, r31
/* 804D5198  38 9E 00 28 */	addi r4, r30, 0x28
/* 804D519C  38 DE 00 5C */	addi r6, r30, 0x5c
/* 804D51A0  38 FE 01 74 */	addi r7, r30, 0x174
/* 804D51A4  4B E9 D8 91 */	bl cKF_SkeletonInfo_R_AnimationMove_CulcTransToWorld
/* 804D51A8  7F C3 F3 78 */	mr r3, r30
/* 804D51AC  7F E4 FB 78 */	mr r4, r31
/* 804D51B0  4B FF FF 8D */	bl Player_actor_Set_force_shadow_position
/* 804D51B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D51B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D51BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D51C0  7C 08 03 A6 */	mtlr r0
/* 804D51C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D51C8  4E 80 00 20 */	blr 
