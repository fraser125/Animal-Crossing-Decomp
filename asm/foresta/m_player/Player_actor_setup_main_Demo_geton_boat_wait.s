lbl_8050760C:
/* 8050760C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80507610  7C 08 02 A6 */	mflr r0
/* 80507614  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80507618  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050761C  38 C1 00 08 */	addi r6, r1, 8
/* 80507620  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80507624  38 A1 00 0C */	addi r5, r1, 0xc
/* 80507628  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050762C  7C 9F 23 78 */	mr r31, r4
/* 80507630  38 80 00 88 */	li r4, 0x88
/* 80507634  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80507638  7C 7E 1B 78 */	mr r30, r3
/* 8050763C  4B FD 29 25 */	bl Player_actor_SetupItem_Base1
/* 80507640  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80507644  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80507648  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 8050764C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80507650  C0 25 00 00 */	lfs f1, 0(r5)
/* 80507654  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80507658  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 8050765C  7F C3 F3 78 */	mr r3, r30
/* 80507660  FC 40 08 90 */	fmr f2, f1
/* 80507664  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80507668  80 E1 00 08 */	lwz r7, 8(r1)
/* 8050766C  7F E4 FB 78 */	mr r4, r31
/* 80507670  38 A0 00 88 */	li r5, 0x88
/* 80507674  4B FC F0 85 */	bl Player_actor_InitAnimation_Base1
/* 80507678  7F C3 F3 78 */	mr r3, r30
/* 8050767C  7F E4 FB 78 */	mr r4, r31
/* 80507680  4B FC E2 79 */	bl Player_actor_setup_main_Base
/* 80507684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80507688  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050768C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80507690  7C 08 03 A6 */	mtlr r0
/* 80507694  38 21 00 20 */	addi r1, r1, 0x20
/* 80507698  4E 80 00 20 */	blr 