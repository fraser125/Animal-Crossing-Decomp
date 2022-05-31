lbl_804F0724:
/* 804F0724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0728  7C 08 02 A6 */	mflr r0
/* 804F072C  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804F0730  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804F0734  38 E5 65 64 */	addi r7, r5, lit_603@l /* 0x80646564@l */
/* 804F0738  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F073C  C0 27 00 00 */	lfs f1, 0(r7)
/* 804F0740  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F0744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F0748  7C 9F 23 78 */	mr r31, r4
/* 804F074C  FC 40 08 90 */	fmr f2, f1
/* 804F0750  C0 66 6C 4C */	lfs f3, lit_2671@l(r6)  /* 0x80646C4C@l */
/* 804F0754  93 C1 00 08 */	stw r30, 8(r1)
/* 804F0758  7C 7E 1B 78 */	mr r30, r3
/* 804F075C  C0 85 83 54 */	lfs f4, lit_7381@l(r5)  /* 0x80648354@l */
/* 804F0760  38 A0 00 3D */	li r5, 0x3d
/* 804F0764  38 C0 00 3D */	li r6, 0x3d
/* 804F0768  38 E0 00 00 */	li r7, 0
/* 804F076C  39 00 00 00 */	li r8, 0
/* 804F0770  4B FE 60 A1 */	bl Player_actor_InitAnimation_Base2
/* 804F0774  7F C3 F3 78 */	mr r3, r30
/* 804F0778  7F E4 FB 78 */	mr r4, r31
/* 804F077C  4B FE 8F F5 */	bl Player_actor_SetEffectStart_axe_common
/* 804F0780  7F C3 F3 78 */	mr r3, r30
/* 804F0784  7F E4 FB 78 */	mr r4, r31
/* 804F0788  4B FE 51 71 */	bl Player_actor_setup_main_Base
/* 804F078C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0794  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F0798  7C 08 03 A6 */	mtlr r0
/* 804F079C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F07A0  4E 80 00 20 */	blr 
