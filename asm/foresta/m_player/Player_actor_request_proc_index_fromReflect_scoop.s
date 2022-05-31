lbl_804F91E0:
/* 804F91E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F91E4  7C 08 02 A6 */	mflr r0
/* 804F91E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F91EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F91F0  4B BA 1C E5 */	bl func_8009AED4
/* 804F91F4  2C 05 00 00 */	cmpwi r5, 0
/* 804F91F8  7C 7D 1B 78 */	mr r29, r3
/* 804F91FC  7C 9E 23 78 */	mr r30, r4
/* 804F9200  41 82 00 30 */	beq lbl_804F9230
/* 804F9204  4B FD C1 69 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F9208  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F920C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F9210  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F9214  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F9218  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F921C  7F C3 F3 78 */	mr r3, r30
/* 804F9220  38 80 00 00 */	li r4, 0
/* 804F9224  38 A0 00 01 */	li r5, 1
/* 804F9228  4B FE C9 D5 */	bl func_804E5BFC
/* 804F922C  48 00 00 AC */	b lbl_804F92D8
lbl_804F9230:
/* 804F9230  3C 60 80 65 */	lis r3, lit_13052@ha /* 0x80648550@ha */
/* 804F9234  3B FD 01 74 */	addi r31, r29, 0x174
/* 804F9238  C0 23 85 50 */	lfs f1, lit_13052@l(r3)  /* 0x80648550@l */
/* 804F923C  7F E3 FB 78 */	mr r3, r31
/* 804F9240  4B FD E3 C1 */	bl Player_actor_Check_AnimationFrame
/* 804F9244  2C 03 00 00 */	cmpwi r3, 0
/* 804F9248  41 82 00 1C */	beq lbl_804F9264
/* 804F924C  7F A3 EB 78 */	mr r3, r29
/* 804F9250  4B FD C1 1D */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F9254  7F A3 EB 78 */	mr r3, r29
/* 804F9258  38 80 00 01 */	li r4, 1
/* 804F925C  4B FD C5 C1 */	bl Player_actor_Set_status_for_bee
/* 804F9260  48 00 00 78 */	b lbl_804F92D8
lbl_804F9264:
/* 804F9264  3C 60 80 65 */	lis r3, lit_6484@ha /* 0x80648090@ha */
/* 804F9268  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804F926C  C0 03 80 90 */	lfs f0, lit_6484@l(r3)  /* 0x80648090@l */
/* 804F9270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F9274  4C 41 13 82 */	cror 2, 1, 2
/* 804F9278  40 82 00 60 */	bne lbl_804F92D8
/* 804F927C  7F C3 F3 78 */	mr r3, r30
/* 804F9280  38 80 00 04 */	li r4, 4
/* 804F9284  4B FE 13 95 */	bl Player_actor_CheckAndRequest_main_scoop_all
/* 804F9288  2C 03 00 00 */	cmpwi r3, 0
/* 804F928C  40 82 00 4C */	bne lbl_804F92D8
/* 804F9290  4B FD B7 71 */	bl Player_actor_GetController_move_percentX
/* 804F9294  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F9298  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F929C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F92A0  40 82 00 18 */	bne lbl_804F92B8
/* 804F92A4  4B FD B7 A1 */	bl Player_actor_GetController_move_percentY
/* 804F92A8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F92AC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F92B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F92B4  41 82 00 24 */	beq lbl_804F92D8
lbl_804F92B8:
/* 804F92B8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F92BC  7F C3 F3 78 */	mr r3, r30
/* 804F92C0  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F92C4  38 80 00 00 */	li r4, 0
/* 804F92C8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F92CC  38 A0 00 00 */	li r5, 0
/* 804F92D0  38 C0 00 01 */	li r6, 1
/* 804F92D4  4B FE CD 7D */	bl func_804E6050
lbl_804F92D8:
/* 804F92D8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F92DC  4B BA 1C 45 */	bl func_8009AF20
/* 804F92E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F92E4  7C 08 03 A6 */	mtlr r0
/* 804F92E8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F92EC  4E 80 00 20 */	blr 
