lbl_804E7174:
/* 804E7174  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E7178  7C 08 02 A6 */	mflr r0
/* 804E717C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E7180  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E7184  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E7188  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804E718C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804E7190  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7194  4B BB 3D 41 */	bl func_8009AED4
/* 804E7198  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804E719C  7C 9E 23 78 */	mr r30, r4
/* 804E71A0  C3 E3 0D 60 */	lfs f31, 0xd60(r3)
/* 804E71A4  7C 7D 1B 78 */	mr r29, r3
/* 804E71A8  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804E71AC  38 80 00 13 */	li r4, 0x13
/* 804E71B0  83 E3 0D 64 */	lwz r31, 0xd64(r3)
/* 804E71B4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E71B8  C3 C3 01 84 */	lfs f30, 0x184(r3)
/* 804E71BC  4C 41 13 82 */	cror 2, 1, 2
/* 804E71C0  40 82 00 0C */	bne lbl_804E71CC
/* 804E71C4  FC 00 F8 90 */	fmr f0, f31
/* 804E71C8  48 00 00 08 */	b lbl_804E71D0
lbl_804E71CC:
/* 804E71CC  FC 00 F8 50 */	fneg f0, f31
lbl_804E71D0:
/* 804E71D0  FC 20 00 50 */	fneg f1, f0
/* 804E71D4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E71D8  38 C1 00 08 */	addi r6, r1, 8
/* 804E71DC  4B FF 2F 05 */	bl Player_actor_SetupItem_Base3
/* 804E71E0  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E71E4  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E71E8  38 A4 65 64 */	addi r5, r4, lit_603@l /* 0x80646564@l */
/* 804E71EC  FC 20 F0 90 */	fmr f1, f30
/* 804E71F0  38 83 6C 4C */	addi r4, r3, lit_2671@l /* 0x80646C4C@l */
/* 804E71F4  FC 80 F8 90 */	fmr f4, f31
/* 804E71F8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E71FC  7F A3 EB 78 */	mr r3, r29
/* 804E7200  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E7204  C0 64 00 00 */	lfs f3, 0(r4)
/* 804E7208  7F C4 F3 78 */	mr r4, r30
/* 804E720C  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E7210  38 A0 00 13 */	li r5, 0x13
/* 804E7214  4B FE F4 E5 */	bl Player_actor_InitAnimation_Base1
/* 804E7218  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 804E721C  41 82 00 10 */	beq lbl_804E722C
/* 804E7220  7F A3 EB 78 */	mr r3, r29
/* 804E7224  7F C4 F3 78 */	mr r4, r30
/* 804E7228  4B FF 3B CD */	bl Player_actor_SetEffect_forTakeout_item
lbl_804E722C:
/* 804E722C  7F A3 EB 78 */	mr r3, r29
/* 804E7230  7F C4 F3 78 */	mr r4, r30
/* 804E7234  4B FE E6 C5 */	bl Player_actor_setup_main_Base
/* 804E7238  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E723C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E7240  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804E7244  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7248  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804E724C  4B BB 3C D5 */	bl func_8009AF20
/* 804E7250  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E7254  7C 08 03 A6 */	mtlr r0
/* 804E7258  38 21 00 40 */	addi r1, r1, 0x40
/* 804E725C  4E 80 00 20 */	blr 
