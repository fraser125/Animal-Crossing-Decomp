lbl_804E4C24:
/* 804E4C24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E4C28  7C 08 02 A6 */	mflr r0
/* 804E4C2C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E4C30  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E4C34  38 C1 00 08 */	addi r6, r1, 8
/* 804E4C38  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804E4C3C  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E4C40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E4C44  7C 9F 23 78 */	mr r31, r4
/* 804E4C48  38 80 00 00 */	li r4, 0
/* 804E4C4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E4C50  7C 7E 1B 78 */	mr r30, r3
/* 804E4C54  4B FF 53 0D */	bl Player_actor_SetupItem_Base1
/* 804E4C58  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E4C5C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E4C60  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 804E4C64  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804E4C68  C0 85 00 00 */	lfs f4, 0(r5)
/* 804E4C6C  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E4C70  C0 63 6C 4C */	lfs f3, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804E4C74  FC 40 08 90 */	fmr f2, f1
/* 804E4C78  D0 9E 0D 18 */	stfs f4, 0xd18(r30)
/* 804E4C7C  7F C3 F3 78 */	mr r3, r30
/* 804E4C80  7F E4 FB 78 */	mr r4, r31
/* 804E4C84  38 A0 00 00 */	li r5, 0
/* 804E4C88  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E4C8C  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E4C90  4B FF 1A 69 */	bl Player_actor_InitAnimation_Base1
/* 804E4C94  7F C3 F3 78 */	mr r3, r30
/* 804E4C98  7F E4 FB 78 */	mr r4, r31
/* 804E4C9C  4B FF 0C 5D */	bl Player_actor_setup_main_Base
/* 804E4CA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E4CA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E4CA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E4CAC  7C 08 03 A6 */	mtlr r0
/* 804E4CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 804E4CB4  4E 80 00 20 */	blr 
