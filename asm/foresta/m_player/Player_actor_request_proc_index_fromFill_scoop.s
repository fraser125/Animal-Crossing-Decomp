lbl_804F8298:
/* 804F8298  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F829C  7C 08 02 A6 */	mflr r0
/* 804F82A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F82A4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804F82A8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804F82AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F82B0  4B BA 2C 25 */	bl func_8009AED4
/* 804F82B4  2C 05 00 00 */	cmpwi r5, 0
/* 804F82B8  7C 7D 1B 78 */	mr r29, r3
/* 804F82BC  7C 9F 23 78 */	mr r31, r4
/* 804F82C0  41 82 00 30 */	beq lbl_804F82F0
/* 804F82C4  4B FD D0 A9 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F82C8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F82CC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F82D0  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F82D4  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F82D8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F82DC  7F E3 FB 78 */	mr r3, r31
/* 804F82E0  38 80 00 00 */	li r4, 0
/* 804F82E4  38 A0 00 01 */	li r5, 1
/* 804F82E8  4B FE D9 15 */	bl func_804E5BFC
/* 804F82EC  48 00 00 D4 */	b lbl_804F83C0
lbl_804F82F0:
/* 804F82F0  80 1D 0D B4 */	lwz r0, 0xdb4(r29)
/* 804F82F4  3B DD 01 74 */	addi r30, r29, 0x174
/* 804F82F8  2C 00 00 59 */	cmpwi r0, 0x59
/* 804F82FC  40 82 00 10 */	bne lbl_804F830C
/* 804F8300  3C 60 80 65 */	lis r3, lit_8275@ha /* 0x8064843C@ha */
/* 804F8304  C3 E3 84 3C */	lfs f31, lit_8275@l(r3)  /* 0x8064843C@l */
/* 804F8308  48 00 00 0C */	b lbl_804F8314
lbl_804F830C:
/* 804F830C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F8310  C3 E3 65 68 */	lfs f31, lit_604@l(r3)  /* 0x80646568@l */
lbl_804F8314:
/* 804F8314  3C 80 80 65 */	lis r4, lit_12514@ha /* 0x80648544@ha */
/* 804F8318  7F C3 F3 78 */	mr r3, r30
/* 804F831C  C0 04 85 44 */	lfs f0, lit_12514@l(r4)  /* 0x80648544@l */
/* 804F8320  EC 20 F8 2A */	fadds f1, f0, f31
/* 804F8324  4B FD F2 DD */	bl Player_actor_Check_AnimationFrame
/* 804F8328  2C 03 00 00 */	cmpwi r3, 0
/* 804F832C  41 82 00 1C */	beq lbl_804F8348
/* 804F8330  7F A3 EB 78 */	mr r3, r29
/* 804F8334  4B FD D0 39 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F8338  7F A3 EB 78 */	mr r3, r29
/* 804F833C  38 80 00 01 */	li r4, 1
/* 804F8340  4B FD D4 DD */	bl Player_actor_Set_status_for_bee
/* 804F8344  48 00 00 7C */	b lbl_804F83C0
lbl_804F8348:
/* 804F8348  3C 60 80 65 */	lis r3, lit_12515@ha /* 0x80648548@ha */
/* 804F834C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804F8350  C0 03 85 48 */	lfs f0, lit_12515@l(r3)  /* 0x80648548@l */
/* 804F8354  EC 00 F8 2A */	fadds f0, f0, f31
/* 804F8358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F835C  4C 41 13 82 */	cror 2, 1, 2
/* 804F8360  40 82 00 60 */	bne lbl_804F83C0
/* 804F8364  7F E3 FB 78 */	mr r3, r31
/* 804F8368  38 80 00 04 */	li r4, 4
/* 804F836C  4B FE 22 AD */	bl Player_actor_CheckAndRequest_main_scoop_all
/* 804F8370  2C 03 00 00 */	cmpwi r3, 0
/* 804F8374  40 82 00 4C */	bne lbl_804F83C0
/* 804F8378  4B FD C6 89 */	bl Player_actor_GetController_move_percentX
/* 804F837C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F8380  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F8384  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F8388  40 82 00 18 */	bne lbl_804F83A0
/* 804F838C  4B FD C6 B9 */	bl Player_actor_GetController_move_percentY
/* 804F8390  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F8394  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F8398  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F839C  41 82 00 24 */	beq lbl_804F83C0
lbl_804F83A0:
/* 804F83A0  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F83A4  7F E3 FB 78 */	mr r3, r31
/* 804F83A8  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F83AC  38 80 00 00 */	li r4, 0
/* 804F83B0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F83B4  38 A0 00 00 */	li r5, 0
/* 804F83B8  38 C0 00 01 */	li r6, 1
/* 804F83BC  4B FE DC 95 */	bl func_804E6050
lbl_804F83C0:
/* 804F83C0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804F83C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F83C8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804F83CC  4B BA 2B 55 */	bl func_8009AF20
/* 804F83D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F83D4  7C 08 03 A6 */	mtlr r0
/* 804F83D8  38 21 00 30 */	addi r1, r1, 0x30
/* 804F83DC  4E 80 00 20 */	blr 
