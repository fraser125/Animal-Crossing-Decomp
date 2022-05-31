lbl_804F54C0:
/* 804F54C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F54C4  7C 08 02 A6 */	mflr r0
/* 804F54C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F54CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804F54D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804F54D4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804F54D8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804F54DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F54E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F54E4  7C 7F 1B 78 */	mr r31, r3
/* 804F54E8  7C 9E 23 78 */	mr r30, r4
/* 804F54EC  C3 E3 01 84 */	lfs f31, 0x184(r3)
/* 804F54F0  C3 C3 0A 28 */	lfs f30, 0xa28(r3)
/* 804F54F4  4B FE B4 4D */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F54F8  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F54FC  FC 40 F0 90 */	fmr f2, f30
/* 804F5500  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804F5504  7C 64 07 74 */	extsb r4, r3
/* 804F5508  7F E3 FB 78 */	mr r3, r31
/* 804F550C  38 A0 00 14 */	li r5, 0x14
/* 804F5510  38 C0 00 0E */	li r6, 0xe
/* 804F5514  38 E0 00 00 */	li r7, 0
/* 804F5518  4B FE 4B 05 */	bl Player_actor_SetupItem_Base2
/* 804F551C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F5520  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F5524  38 A4 6C 4C */	addi r5, r4, lit_2671@l /* 0x80646C4C@l */
/* 804F5528  FC 20 F8 90 */	fmr f1, f31
/* 804F552C  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804F5530  FC 40 F8 90 */	fmr f2, f31
/* 804F5534  C0 65 00 00 */	lfs f3, 0(r5)
/* 804F5538  7F E3 FB 78 */	mr r3, r31
/* 804F553C  C0 84 00 00 */	lfs f4, 0(r4)
/* 804F5540  7F C4 F3 78 */	mr r4, r30
/* 804F5544  38 A0 00 4B */	li r5, 0x4b
/* 804F5548  38 C0 00 4B */	li r6, 0x4b
/* 804F554C  38 E0 00 00 */	li r7, 0
/* 804F5550  39 00 00 00 */	li r8, 0
/* 804F5554  4B FE 12 BD */	bl Player_actor_InitAnimation_Base2
/* 804F5558  7F E3 FB 78 */	mr r3, r31
/* 804F555C  7F C4 F3 78 */	mr r4, r30
/* 804F5560  4B FE 03 99 */	bl Player_actor_setup_main_Base
/* 804F5564  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804F5568  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F556C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804F5570  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F5574  3C 63 00 02 */	addis r3, r3, 2
/* 804F5578  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F557C  90 81 00 08 */	stw r4, 8(r1)
/* 804F5580  7F C7 F3 78 */	mr r7, r30
/* 804F5584  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804F5588  38 81 00 08 */	addi r4, r1, 8
/* 804F558C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F5590  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F5594  38 60 00 4E */	li r3, 0x4e
/* 804F5598  38 A0 00 02 */	li r5, 2
/* 804F559C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804F55A0  39 40 00 00 */	li r10, 0
/* 804F55A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F55A8  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804F55AC  81 86 00 00 */	lwz r12, 0(r6)
/* 804F55B0  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804F55B4  A8 DF 00 DE */	lha r6, 0xde(r31)
/* 804F55B8  7C 09 07 34 */	extsh r9, r0
/* 804F55BC  7D 89 03 A6 */	mtctr r12
/* 804F55C0  4E 80 04 21 */	bctrl 
/* 804F55C4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804F55C8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804F55CC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804F55D0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804F55D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F55D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F55DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F55E0  7C 08 03 A6 */	mtlr r0
/* 804F55E4  38 21 00 40 */	addi r1, r1, 0x40
/* 804F55E8  4E 80 00 20 */	blr 
