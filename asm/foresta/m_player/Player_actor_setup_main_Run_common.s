lbl_804E6C8C:
/* 804E6C8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E6C90  7C 08 02 A6 */	mflr r0
/* 804E6C94  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E6C98  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E6C9C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E6CA0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804E6CA4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804E6CA8  39 61 00 20 */	addi r11, r1, 0x20
/* 804E6CAC  4B BB 42 29 */	bl func_8009AED4
/* 804E6CB0  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804E6CB4  7C 9E 23 78 */	mr r30, r4
/* 804E6CB8  C3 E3 0D 60 */	lfs f31, 0xd60(r3)
/* 804E6CBC  7C 7D 1B 78 */	mr r29, r3
/* 804E6CC0  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804E6CC4  38 80 00 03 */	li r4, 3
/* 804E6CC8  83 E3 0D 64 */	lwz r31, 0xd64(r3)
/* 804E6CCC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E6CD0  C3 C3 01 84 */	lfs f30, 0x184(r3)
/* 804E6CD4  4C 41 13 82 */	cror 2, 1, 2
/* 804E6CD8  40 82 00 0C */	bne lbl_804E6CE4
/* 804E6CDC  FC 00 F8 90 */	fmr f0, f31
/* 804E6CE0  48 00 00 08 */	b lbl_804E6CE8
lbl_804E6CE4:
/* 804E6CE4  FC 00 F8 50 */	fneg f0, f31
lbl_804E6CE8:
/* 804E6CE8  FC 20 00 50 */	fneg f1, f0
/* 804E6CEC  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E6CF0  38 C1 00 08 */	addi r6, r1, 8
/* 804E6CF4  4B FF 33 ED */	bl Player_actor_SetupItem_Base3
/* 804E6CF8  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E6CFC  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E6D00  38 A4 65 64 */	addi r5, r4, lit_603@l /* 0x80646564@l */
/* 804E6D04  FC 20 F0 90 */	fmr f1, f30
/* 804E6D08  38 83 6C 4C */	addi r4, r3, lit_2671@l /* 0x80646C4C@l */
/* 804E6D0C  FC 80 F8 90 */	fmr f4, f31
/* 804E6D10  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E6D14  7F A3 EB 78 */	mr r3, r29
/* 804E6D18  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E6D1C  C0 64 00 00 */	lfs f3, 0(r4)
/* 804E6D20  7F C4 F3 78 */	mr r4, r30
/* 804E6D24  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E6D28  38 A0 00 03 */	li r5, 3
/* 804E6D2C  4B FE F9 CD */	bl Player_actor_InitAnimation_Base1
/* 804E6D30  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 804E6D34  41 82 00 10 */	beq lbl_804E6D44
/* 804E6D38  7F A3 EB 78 */	mr r3, r29
/* 804E6D3C  7F C4 F3 78 */	mr r4, r30
/* 804E6D40  4B FF 40 B5 */	bl Player_actor_SetEffect_forTakeout_item
lbl_804E6D44:
/* 804E6D44  7F A3 EB 78 */	mr r3, r29
/* 804E6D48  7F C4 F3 78 */	mr r4, r30
/* 804E6D4C  4B FE EB AD */	bl Player_actor_setup_main_Base
/* 804E6D50  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E6D54  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E6D58  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804E6D5C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E6D60  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804E6D64  4B BB 41 BD */	bl func_8009AF20
/* 804E6D68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E6D6C  7C 08 03 A6 */	mtlr r0
/* 804E6D70  38 21 00 40 */	addi r1, r1, 0x40
/* 804E6D74  4E 80 00 20 */	blr 
