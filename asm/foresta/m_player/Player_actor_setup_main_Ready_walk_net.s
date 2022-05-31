lbl_804F2290:
/* 804F2290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F2294  7C 08 02 A6 */	mflr r0
/* 804F2298  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F229C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F22A0  38 C1 00 08 */	addi r6, r1, 8
/* 804F22A4  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804F22A8  38 A1 00 0C */	addi r5, r1, 0xc
/* 804F22AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F22B0  7C 9F 23 78 */	mr r31, r4
/* 804F22B4  38 80 00 17 */	li r4, 0x17
/* 804F22B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F22BC  7C 7E 1B 78 */	mr r30, r3
/* 804F22C0  4B FE 7C A1 */	bl Player_actor_SetupItem_Base1
/* 804F22C4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F22C8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F22CC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F22D0  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F22D4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F22D8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F22DC  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F22E0  7F C3 F3 78 */	mr r3, r30
/* 804F22E4  FC 40 08 90 */	fmr f2, f1
/* 804F22E8  7F E4 FB 78 */	mr r4, r31
/* 804F22EC  38 A0 00 17 */	li r5, 0x17
/* 804F22F0  38 C0 00 17 */	li r6, 0x17
/* 804F22F4  38 E0 00 00 */	li r7, 0
/* 804F22F8  4B FE 44 01 */	bl Player_actor_InitAnimation_Base1
/* 804F22FC  7F C3 F3 78 */	mr r3, r30
/* 804F2300  7F E4 FB 78 */	mr r4, r31
/* 804F2304  4B FE 35 F5 */	bl Player_actor_setup_main_Base
/* 804F2308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F230C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F2310  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F2314  7C 08 03 A6 */	mtlr r0
/* 804F2318  38 21 00 20 */	addi r1, r1, 0x20
/* 804F231C  4E 80 00 20 */	blr 
