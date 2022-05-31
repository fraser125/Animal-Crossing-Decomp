lbl_804FB070:
/* 804FB070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB074  7C 08 02 A6 */	mflr r0
/* 804FB078  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804FB07C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB080  38 C1 00 08 */	addi r6, r1, 8
/* 804FB084  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804FB088  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FB08C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FB090  7C 9F 23 78 */	mr r31, r4
/* 804FB094  38 80 00 00 */	li r4, 0
/* 804FB098  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FB09C  7C 7E 1B 78 */	mr r30, r3
/* 804FB0A0  4B FD EE C1 */	bl Player_actor_SetupItem_Base1
/* 804FB0A4  80 1E 0D 60 */	lwz r0, 0xd60(r30)
/* 804FB0A8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FB0AC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FB0B0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FB0B4  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804FB0B8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FB0BC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FB0C0  38 A4 6C 4C */	addi r5, r4, lit_2671@l /* 0x80646C4C@l */
/* 804FB0C4  80 1E 0D 64 */	lwz r0, 0xd64(r30)
/* 804FB0C8  38 83 83 54 */	addi r4, r3, lit_7381@l /* 0x80648354@l */
/* 804FB0CC  FC 40 08 90 */	fmr f2, f1
/* 804FB0D0  C0 65 00 00 */	lfs f3, 0(r5)
/* 804FB0D4  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804FB0D8  7F C3 F3 78 */	mr r3, r30
/* 804FB0DC  C0 84 00 00 */	lfs f4, 0(r4)
/* 804FB0E0  7F E4 FB 78 */	mr r4, r31
/* 804FB0E4  80 1E 0D 68 */	lwz r0, 0xd68(r30)
/* 804FB0E8  38 A0 00 00 */	li r5, 0
/* 804FB0EC  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804FB0F0  A0 1E 0D 6C */	lhz r0, 0xd6c(r30)
/* 804FB0F4  B0 1E 0D 24 */	sth r0, 0xd24(r30)
/* 804FB0F8  80 1E 0D 70 */	lwz r0, 0xd70(r30)
/* 804FB0FC  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 804FB100  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FB104  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FB108  4B FD B5 F1 */	bl Player_actor_InitAnimation_Base1
/* 804FB10C  7F C3 F3 78 */	mr r3, r30
/* 804FB110  7F E4 FB 78 */	mr r4, r31
/* 804FB114  4B FD A7 E5 */	bl Player_actor_setup_main_Base
/* 804FB118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB11C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FB120  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FB124  7C 08 03 A6 */	mtlr r0
/* 804FB128  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB12C  4E 80 00 20 */	blr 
