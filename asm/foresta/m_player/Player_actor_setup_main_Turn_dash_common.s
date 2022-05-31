lbl_804E8598:
/* 804E8598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E859C  7C 08 02 A6 */	mflr r0
/* 804E85A0  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E85A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E85A8  38 C1 00 08 */	addi r6, r1, 8
/* 804E85AC  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804E85B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E85B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E85B8  7C 7F 1B 78 */	mr r31, r3
/* 804E85BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804E85C0  7C 9E 23 78 */	mr r30, r4
/* 804E85C4  38 80 00 14 */	li r4, 0x14
/* 804E85C8  A8 03 0D 60 */	lha r0, 0xd60(r3)
/* 804E85CC  B0 03 0D 18 */	sth r0, 0xd18(r3)
/* 804E85D0  4B FF 19 91 */	bl Player_actor_SetupItem_Base1
/* 804E85D4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E85D8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E85DC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E85E0  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E85E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E85E8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E85EC  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804E85F0  7F E3 FB 78 */	mr r3, r31
/* 804E85F4  FC 40 08 90 */	fmr f2, f1
/* 804E85F8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E85FC  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E8600  7F C4 F3 78 */	mr r4, r30
/* 804E8604  38 A0 00 14 */	li r5, 0x14
/* 804E8608  4B FE E0 F1 */	bl Player_actor_InitAnimation_Base1
/* 804E860C  7F E3 FB 78 */	mr r3, r31
/* 804E8610  7F C4 F3 78 */	mr r4, r30
/* 804E8614  4B FE D2 E5 */	bl Player_actor_setup_main_Base
/* 804E8618  7F E3 FB 78 */	mr r3, r31
/* 804E861C  4B FF 71 F1 */	bl Player_actor_sound_slip
/* 804E8620  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804E8624  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E8628  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804E862C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E8630  3C 63 00 02 */	addis r3, r3, 2
/* 804E8634  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E8638  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E863C  7F C7 F3 78 */	mr r7, r30
/* 804E8640  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E8644  38 81 00 10 */	addi r4, r1, 0x10
/* 804E8648  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E864C  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E8650  38 60 00 2F */	li r3, 0x2f
/* 804E8654  38 A0 00 02 */	li r5, 2
/* 804E8658  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804E865C  39 40 00 00 */	li r10, 0
/* 804E8660  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E8664  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804E8668  81 86 00 00 */	lwz r12, 0(r6)
/* 804E866C  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E8670  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 804E8674  7C 09 07 34 */	extsh r9, r0
/* 804E8678  7D 89 03 A6 */	mtctr r12
/* 804E867C  4E 80 04 21 */	bctrl 
/* 804E8680  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E8684  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E8688  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804E868C  7C 08 03 A6 */	mtlr r0
/* 804E8690  38 21 00 30 */	addi r1, r1, 0x30
/* 804E8694  4E 80 00 20 */	blr 
