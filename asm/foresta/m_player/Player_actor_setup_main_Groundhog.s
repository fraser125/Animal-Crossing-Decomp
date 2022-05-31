lbl_804FE9CC:
/* 804FE9CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FE9D0  7C 08 02 A6 */	mflr r0
/* 804FE9D4  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804FE9D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FE9DC  38 C1 00 08 */	addi r6, r1, 8
/* 804FE9E0  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804FE9E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FE9E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FE9EC  7C 9F 23 78 */	mr r31, r4
/* 804FE9F0  38 80 00 00 */	li r4, 0
/* 804FE9F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FE9F8  7C 7E 1B 78 */	mr r30, r3
/* 804FE9FC  4B FD B5 65 */	bl Player_actor_SetupItem_Base1
/* 804FEA00  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FEA04  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FEA08  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FEA0C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FEA10  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FEA14  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FEA18  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804FEA1C  7F C3 F3 78 */	mr r3, r30
/* 804FEA20  FC 40 08 90 */	fmr f2, f1
/* 804FEA24  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FEA28  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FEA2C  7F E4 FB 78 */	mr r4, r31
/* 804FEA30  38 A0 00 00 */	li r5, 0
/* 804FEA34  4B FD 7C C5 */	bl Player_actor_InitAnimation_Base1
/* 804FEA38  7F C3 F3 78 */	mr r3, r30
/* 804FEA3C  7F E4 FB 78 */	mr r4, r31
/* 804FEA40  4B FD 6E B9 */	bl Player_actor_setup_main_Base
/* 804FEA44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FEA48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FEA4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FEA50  7C 08 03 A6 */	mtlr r0
/* 804FEA54  38 21 00 20 */	addi r1, r1, 0x20
/* 804FEA58  4E 80 00 20 */	blr 
