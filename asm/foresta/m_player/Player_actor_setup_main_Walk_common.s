lbl_804E6120:
/* 804E6120  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E6124  7C 08 02 A6 */	mflr r0
/* 804E6128  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E612C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E6130  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E6134  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804E6138  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804E613C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E6140  4B BB 4D 95 */	bl func_8009AED4
/* 804E6144  83 A3 0D 70 */	lwz r29, 0xd70(r3)
/* 804E6148  7C 7E 1B 78 */	mr r30, r3
/* 804E614C  C3 E3 0D 6C */	lfs f31, 0xd6c(r3)
/* 804E6150  7C 9F 23 78 */	mr r31, r4
/* 804E6154  57 A0 07 BD */	rlwinm. r0, r29, 0, 0x1e, 0x1e
/* 804E6158  41 82 00 1C */	beq lbl_804E6174
/* 804E615C  80 7E 0D 60 */	lwz r3, 0xd60(r30)
/* 804E6160  80 1E 0D 64 */	lwz r0, 0xd64(r30)
/* 804E6164  90 7E 00 28 */	stw r3, 0x28(r30)
/* 804E6168  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 804E616C  80 1E 0D 68 */	lwz r0, 0xd68(r30)
/* 804E6170  90 1E 00 30 */	stw r0, 0x30(r30)
lbl_804E6174:
/* 804E6174  80 1E 0D 70 */	lwz r0, 0xd70(r30)
/* 804E6178  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804E617C  41 82 00 10 */	beq lbl_804E618C
/* 804E6180  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E6184  C3 C3 65 64 */	lfs f30, lit_603@l(r3)  /* 0x80646564@l */
/* 804E6188  48 00 00 08 */	b lbl_804E6190
lbl_804E618C:
/* 804E618C  C3 DE 01 84 */	lfs f30, 0x184(r30)
lbl_804E6190:
/* 804E6190  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E6194  7F C3 F3 78 */	mr r3, r30
/* 804E6198  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804E619C  38 80 00 01 */	li r4, 1
/* 804E61A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E61A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E61A8  4C 41 13 82 */	cror 2, 1, 2
/* 804E61AC  40 82 00 0C */	bne lbl_804E61B8
/* 804E61B0  FC 00 F8 90 */	fmr f0, f31
/* 804E61B4  48 00 00 08 */	b lbl_804E61BC
lbl_804E61B8:
/* 804E61B8  FC 00 F8 50 */	fneg f0, f31
lbl_804E61BC:
/* 804E61BC  FC 20 00 50 */	fneg f1, f0
/* 804E61C0  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E61C4  38 C1 00 08 */	addi r6, r1, 8
/* 804E61C8  4B FF 3F 19 */	bl Player_actor_SetupItem_Base3
/* 804E61CC  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E61D0  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E61D4  38 A4 65 64 */	addi r5, r4, lit_603@l /* 0x80646564@l */
/* 804E61D8  FC 20 F0 90 */	fmr f1, f30
/* 804E61DC  38 83 6C 4C */	addi r4, r3, lit_2671@l /* 0x80646C4C@l */
/* 804E61E0  FC 80 F8 90 */	fmr f4, f31
/* 804E61E4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E61E8  7F C3 F3 78 */	mr r3, r30
/* 804E61EC  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E61F0  C0 64 00 00 */	lfs f3, 0(r4)
/* 804E61F4  7F E4 FB 78 */	mr r4, r31
/* 804E61F8  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E61FC  38 A0 00 01 */	li r5, 1
/* 804E6200  4B FF 04 F9 */	bl Player_actor_InitAnimation_Base1
/* 804E6204  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 804E6208  41 82 00 10 */	beq lbl_804E6218
/* 804E620C  7F C3 F3 78 */	mr r3, r30
/* 804E6210  7F E4 FB 78 */	mr r4, r31
/* 804E6214  4B FF 4B E1 */	bl Player_actor_SetEffect_forTakeout_item
lbl_804E6218:
/* 804E6218  7F C3 F3 78 */	mr r3, r30
/* 804E621C  7F E4 FB 78 */	mr r4, r31
/* 804E6220  4B FE F6 D9 */	bl Player_actor_setup_main_Base
/* 804E6224  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E6228  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E622C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804E6230  39 61 00 20 */	addi r11, r1, 0x20
/* 804E6234  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804E6238  4B BB 4C E9 */	bl func_8009AF20
/* 804E623C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E6240  7C 08 03 A6 */	mtlr r0
/* 804E6244  38 21 00 40 */	addi r1, r1, 0x40
/* 804E6248  4E 80 00 20 */	blr 
