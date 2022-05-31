lbl_804F5F8C:
/* 804F5F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F5F90  7C 08 02 A6 */	mflr r0
/* 804F5F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F5F98  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804F5F9C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804F5FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5FA4  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5FA8  7C 7E 1B 78 */	mr r30, r3
/* 804F5FAC  7C 9F 23 78 */	mr r31, r4
/* 804F5FB0  C3 E3 0A 28 */	lfs f31, 0xa28(r3)
/* 804F5FB4  4B FE A9 8D */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F5FB8  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F5FBC  FC 40 F8 90 */	fmr f2, f31
/* 804F5FC0  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804F5FC4  7C 64 07 74 */	extsb r4, r3
/* 804F5FC8  7F C3 F3 78 */	mr r3, r30
/* 804F5FCC  38 A0 00 11 */	li r5, 0x11
/* 804F5FD0  38 C0 00 11 */	li r6, 0x11
/* 804F5FD4  38 E0 00 01 */	li r7, 1
/* 804F5FD8  4B FE 40 45 */	bl Player_actor_SetupItem_Base2
/* 804F5FDC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F5FE0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F5FE4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F5FE8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F5FEC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F5FF0  3C 60 80 65 */	lis r3, lit_9485@ha /* 0x806484C8@ha */
/* 804F5FF4  C0 83 84 C8 */	lfs f4, lit_9485@l(r3)  /* 0x806484C8@l */
/* 804F5FF8  7F C3 F3 78 */	mr r3, r30
/* 804F5FFC  FC 40 08 90 */	fmr f2, f1
/* 804F6000  7F E4 FB 78 */	mr r4, r31
/* 804F6004  38 A0 00 45 */	li r5, 0x45
/* 804F6008  38 C0 00 45 */	li r6, 0x45
/* 804F600C  38 E0 00 01 */	li r7, 1
/* 804F6010  39 00 00 00 */	li r8, 0
/* 804F6014  4B FE 07 FD */	bl Player_actor_InitAnimation_Base2
/* 804F6018  7F C3 F3 78 */	mr r3, r30
/* 804F601C  7F E4 FB 78 */	mr r4, r31
/* 804F6020  4B FD F8 D9 */	bl Player_actor_setup_main_Base
/* 804F6024  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804F6028  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F602C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804F6030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F6034  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F6038  7C 08 03 A6 */	mtlr r0
/* 804F603C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6040  4E 80 00 20 */	blr 
