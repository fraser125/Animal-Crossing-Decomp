lbl_804F7AE8:
/* 804F7AE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F7AEC  7C 08 02 A6 */	mflr r0
/* 804F7AF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F7AF4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804F7AF8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804F7AFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7B00  4B BA 33 D5 */	bl func_8009AED4
/* 804F7B04  2C 05 00 00 */	cmpwi r5, 0
/* 804F7B08  7C 7D 1B 78 */	mr r29, r3
/* 804F7B0C  7C 9F 23 78 */	mr r31, r4
/* 804F7B10  41 82 00 30 */	beq lbl_804F7B40
/* 804F7B14  4B FD D8 59 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F7B18  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F7B1C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F7B20  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F7B24  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F7B28  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F7B2C  7F E3 FB 78 */	mr r3, r31
/* 804F7B30  38 80 00 00 */	li r4, 0
/* 804F7B34  38 A0 00 01 */	li r5, 1
/* 804F7B38  4B FE E0 C5 */	bl func_804E5BFC
/* 804F7B3C  48 00 00 D4 */	b lbl_804F7C10
lbl_804F7B40:
/* 804F7B40  80 1D 0D B4 */	lwz r0, 0xdb4(r29)
/* 804F7B44  3B DD 01 74 */	addi r30, r29, 0x174
/* 804F7B48  2C 00 00 58 */	cmpwi r0, 0x58
/* 804F7B4C  40 82 00 10 */	bne lbl_804F7B5C
/* 804F7B50  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804F7B54  C3 E3 6C 44 */	lfs f31, lit_2591@l(r3)  /* 0x80646C44@l */
/* 804F7B58  48 00 00 0C */	b lbl_804F7B64
lbl_804F7B5C:
/* 804F7B5C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F7B60  C3 E3 65 68 */	lfs f31, lit_604@l(r3)  /* 0x80646568@l */
lbl_804F7B64:
/* 804F7B64  3C 80 80 65 */	lis r4, lit_12372@ha /* 0x80648540@ha */
/* 804F7B68  7F C3 F3 78 */	mr r3, r30
/* 804F7B6C  C0 04 85 40 */	lfs f0, lit_12372@l(r4)  /* 0x80648540@l */
/* 804F7B70  EC 20 F8 2A */	fadds f1, f0, f31
/* 804F7B74  4B FD FA 8D */	bl Player_actor_Check_AnimationFrame
/* 804F7B78  2C 03 00 00 */	cmpwi r3, 0
/* 804F7B7C  41 82 00 1C */	beq lbl_804F7B98
/* 804F7B80  7F A3 EB 78 */	mr r3, r29
/* 804F7B84  4B FD D7 E9 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F7B88  7F A3 EB 78 */	mr r3, r29
/* 804F7B8C  38 80 00 01 */	li r4, 1
/* 804F7B90  4B FD DC 8D */	bl Player_actor_Set_status_for_bee
/* 804F7B94  48 00 00 7C */	b lbl_804F7C10
lbl_804F7B98:
/* 804F7B98  3C 60 80 64 */	lis r3, lit_1374@ha /* 0x80646A2C@ha */
/* 804F7B9C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804F7BA0  C0 03 6A 2C */	lfs f0, lit_1374@l(r3)  /* 0x80646A2C@l */
/* 804F7BA4  EC 00 F8 2A */	fadds f0, f0, f31
/* 804F7BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F7BAC  4C 41 13 82 */	cror 2, 1, 2
/* 804F7BB0  40 82 00 60 */	bne lbl_804F7C10
/* 804F7BB4  7F E3 FB 78 */	mr r3, r31
/* 804F7BB8  38 80 00 04 */	li r4, 4
/* 804F7BBC  4B FE 2A 5D */	bl Player_actor_CheckAndRequest_main_scoop_all
/* 804F7BC0  2C 03 00 00 */	cmpwi r3, 0
/* 804F7BC4  40 82 00 4C */	bne lbl_804F7C10
/* 804F7BC8  4B FD CE 39 */	bl Player_actor_GetController_move_percentX
/* 804F7BCC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F7BD0  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F7BD4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F7BD8  40 82 00 18 */	bne lbl_804F7BF0
/* 804F7BDC  4B FD CE 69 */	bl Player_actor_GetController_move_percentY
/* 804F7BE0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F7BE4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F7BE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F7BEC  41 82 00 24 */	beq lbl_804F7C10
lbl_804F7BF0:
/* 804F7BF0  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F7BF4  7F E3 FB 78 */	mr r3, r31
/* 804F7BF8  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F7BFC  38 80 00 00 */	li r4, 0
/* 804F7C00  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F7C04  38 A0 00 00 */	li r5, 0
/* 804F7C08  38 C0 00 01 */	li r6, 1
/* 804F7C0C  4B FE E4 45 */	bl func_804E6050
lbl_804F7C10:
/* 804F7C10  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804F7C14  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7C18  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804F7C1C  4B BA 33 05 */	bl func_8009AF20
/* 804F7C20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F7C24  7C 08 03 A6 */	mtlr r0
/* 804F7C28  38 21 00 30 */	addi r1, r1, 0x30
/* 804F7C2C  4E 80 00 20 */	blr 
