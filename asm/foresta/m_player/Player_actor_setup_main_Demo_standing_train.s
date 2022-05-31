lbl_804FE280:
/* 804FE280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FE284  7C 08 02 A6 */	mflr r0
/* 804FE288  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804FE28C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FE290  38 C1 00 08 */	addi r6, r1, 8
/* 804FE294  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804FE298  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FE29C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FE2A0  7C 9F 23 78 */	mr r31, r4
/* 804FE2A4  38 80 00 00 */	li r4, 0
/* 804FE2A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FE2AC  7C 7E 1B 78 */	mr r30, r3
/* 804FE2B0  4B FD BC B1 */	bl Player_actor_SetupItem_Base1
/* 804FE2B4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FE2B8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FE2BC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FE2C0  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FE2C4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FE2C8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FE2CC  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FE2D0  7F C3 F3 78 */	mr r3, r30
/* 804FE2D4  FC 40 08 90 */	fmr f2, f1
/* 804FE2D8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FE2DC  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FE2E0  7F E4 FB 78 */	mr r4, r31
/* 804FE2E4  38 A0 00 00 */	li r5, 0
/* 804FE2E8  4B FD 84 11 */	bl Player_actor_InitAnimation_Base1
/* 804FE2EC  7F C3 F3 78 */	mr r3, r30
/* 804FE2F0  7F E4 FB 78 */	mr r4, r31
/* 804FE2F4  4B FD 76 05 */	bl Player_actor_setup_main_Base
/* 804FE2F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FE2FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FE300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FE304  7C 08 03 A6 */	mtlr r0
/* 804FE308  38 21 00 20 */	addi r1, r1, 0x20
/* 804FE30C  4E 80 00 20 */	blr 
