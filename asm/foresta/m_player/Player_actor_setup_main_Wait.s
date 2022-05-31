lbl_804E5CCC:
/* 804E5CCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E5CD0  7C 08 02 A6 */	mflr r0
/* 804E5CD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E5CD8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E5CDC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E5CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5CE4  4B BB 51 F1 */	bl func_8009AED4
/* 804E5CE8  83 E3 0D 68 */	lwz r31, 0xd68(r3)
/* 804E5CEC  7C 7D 1B 78 */	mr r29, r3
/* 804E5CF0  C3 E3 0D 60 */	lfs f31, 0xd60(r3)
/* 804E5CF4  7C 9E 23 78 */	mr r30, r4
/* 804E5CF8  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 804E5CFC  41 82 00 10 */	beq lbl_804E5D0C
/* 804E5D00  38 00 00 00 */	li r0, 0
/* 804E5D04  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804E5D08  48 00 00 20 */	b lbl_804E5D28
lbl_804E5D0C:
/* 804E5D0C  38 00 00 01 */	li r0, 1
/* 804E5D10  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E5D14  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804E5D18  38 00 FF FF */	li r0, -1
/* 804E5D1C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E5D20  90 1D 12 3C */	stw r0, 0x123c(r29)
/* 804E5D24  D0 1D 12 40 */	stfs f0, 0x1240(r29)
lbl_804E5D28:
/* 804E5D28  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E5D2C  7F A3 EB 78 */	mr r3, r29
/* 804E5D30  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804E5D34  38 80 00 00 */	li r4, 0
/* 804E5D38  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E5D3C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E5D40  4C 41 13 82 */	cror 2, 1, 2
/* 804E5D44  40 82 00 0C */	bne lbl_804E5D50
/* 804E5D48  FC 00 F8 90 */	fmr f0, f31
/* 804E5D4C  48 00 00 08 */	b lbl_804E5D54
lbl_804E5D50:
/* 804E5D50  FC 00 F8 50 */	fneg f0, f31
lbl_804E5D54:
/* 804E5D54  FC 20 00 50 */	fneg f1, f0
/* 804E5D58  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E5D5C  38 C1 00 08 */	addi r6, r1, 8
/* 804E5D60  4B FF 42 01 */	bl Player_actor_SetupItem_Base1
/* 804E5D64  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E5D68  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E5D6C  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804E5D70  38 83 6C 4C */	addi r4, r3, lit_2671@l /* 0x80646C4C@l */
/* 804E5D74  C0 64 00 00 */	lfs f3, 0(r4)
/* 804E5D78  FC 80 F8 90 */	fmr f4, f31
/* 804E5D7C  FC 40 08 90 */	fmr f2, f1
/* 804E5D80  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E5D84  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E5D88  7F A3 EB 78 */	mr r3, r29
/* 804E5D8C  7F C4 F3 78 */	mr r4, r30
/* 804E5D90  38 A0 00 00 */	li r5, 0
/* 804E5D94  4B FF 09 65 */	bl Player_actor_InitAnimation_Base1
/* 804E5D98  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 804E5D9C  41 82 00 10 */	beq lbl_804E5DAC
/* 804E5DA0  7F A3 EB 78 */	mr r3, r29
/* 804E5DA4  7F C4 F3 78 */	mr r4, r30
/* 804E5DA8  4B FF 50 4D */	bl Player_actor_SetEffect_forTakeout_item
lbl_804E5DAC:
/* 804E5DAC  7F A3 EB 78 */	mr r3, r29
/* 804E5DB0  7F C4 F3 78 */	mr r4, r30
/* 804E5DB4  4B FE FB 45 */	bl Player_actor_setup_main_Base
/* 804E5DB8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E5DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5DC0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E5DC4  4B BB 51 5D */	bl func_8009AF20
/* 804E5DC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E5DCC  7C 08 03 A6 */	mtlr r0
/* 804E5DD0  38 21 00 30 */	addi r1, r1, 0x30
/* 804E5DD4  4E 80 00 20 */	blr 
