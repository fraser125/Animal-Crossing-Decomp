lbl_80506628:
/* 80506628  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050662C  7C 08 02 A6 */	mflr r0
/* 80506630  90 01 00 34 */	stw r0, 0x34(r1)
/* 80506634  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80506638  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8050663C  39 61 00 20 */	addi r11, r1, 0x20
/* 80506640  4B B9 48 95 */	bl func_8009AED4
/* 80506644  3C A0 80 65 */	lis r5, lit_7783@ha /* 0x80648364@ha */
/* 80506648  7C 7D 1B 78 */	mr r29, r3
/* 8050664C  3B FD 01 74 */	addi r31, r29, 0x174
/* 80506650  C0 25 83 64 */	lfs f1, lit_7783@l(r5)  /* 0x80648364@l */
/* 80506654  7C 9E 23 78 */	mr r30, r4
/* 80506658  7F E3 FB 78 */	mr r3, r31
/* 8050665C  4B FD 0F A5 */	bl Player_actor_Check_AnimationFrame
/* 80506660  2C 03 00 00 */	cmpwi r3, 0
/* 80506664  41 82 00 1C */	beq lbl_80506680
/* 80506668  7F A3 EB 78 */	mr r3, r29
/* 8050666C  4B FC ED 01 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80506670  7F A3 EB 78 */	mr r3, r29
/* 80506674  38 80 00 01 */	li r4, 1
/* 80506678  4B FC F1 A5 */	bl Player_actor_Set_status_for_bee
/* 8050667C  48 00 00 C8 */	b lbl_80506744
lbl_80506680:
/* 80506680  3C 60 80 64 */	lis r3, lit_4467@ha /* 0x80647B18@ha */
/* 80506684  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80506688  C0 03 7B 18 */	lfs f0, lit_4467@l(r3)  /* 0x80647B18@l */
/* 8050668C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80506690  4C 41 13 82 */	cror 2, 1, 2
/* 80506694  40 82 00 B0 */	bne lbl_80506744
/* 80506698  7F C3 F3 78 */	mr r3, r30
/* 8050669C  38 80 00 00 */	li r4, 0
/* 805066A0  38 A0 00 00 */	li r5, 0
/* 805066A4  38 C0 00 04 */	li r6, 4
/* 805066A8  4B FD 30 5D */	bl Player_actor_CheckAndRequest_main_fan_all
/* 805066AC  2C 03 00 00 */	cmpwi r3, 0
/* 805066B0  40 82 00 94 */	bne lbl_80506744
/* 805066B4  4B FC E3 4D */	bl Player_actor_GetController_move_percentX
/* 805066B8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805066BC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805066C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805066C4  40 82 00 18 */	bne lbl_805066DC
/* 805066C8  4B FC E3 7D */	bl Player_actor_GetController_move_percentY
/* 805066CC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805066D0  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805066D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805066D8  41 82 00 24 */	beq lbl_805066FC
lbl_805066DC:
/* 805066DC  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 805066E0  7F C3 F3 78 */	mr r3, r30
/* 805066E4  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 805066E8  38 80 00 00 */	li r4, 0
/* 805066EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805066F0  38 A0 00 00 */	li r5, 0
/* 805066F4  38 C0 00 01 */	li r6, 1
/* 805066F8  4B FD F9 59 */	bl func_804E6050
lbl_805066FC:
/* 805066FC  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 80506700  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80506704  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 80506708  EC 01 00 28 */	fsubs f0, f1, f0
/* 8050670C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80506710  4C 41 13 82 */	cror 2, 1, 2
/* 80506714  40 82 00 30 */	bne lbl_80506744
/* 80506718  C3 FD 01 F4 */	lfs f31, 0x1f4(r29)
/* 8050671C  7F A3 EB 78 */	mr r3, r29
/* 80506720  4B FC EC 4D */	bl Player_actor_SettleRequestMainIndexPriority
/* 80506724  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80506728  FC 40 F8 90 */	fmr f2, f31
/* 8050672C  38 83 83 54 */	addi r4, r3, lit_7381@l /* 0x80648354@l */
/* 80506730  7F C3 F3 78 */	mr r3, r30
/* 80506734  C0 24 00 00 */	lfs f1, 0(r4)
/* 80506738  38 80 00 02 */	li r4, 2
/* 8050673C  38 A0 00 01 */	li r5, 1
/* 80506740  4B FD F4 BD */	bl func_804E5BFC
lbl_80506744:
/* 80506744  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80506748  39 61 00 20 */	addi r11, r1, 0x20
/* 8050674C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80506750  4B B9 47 D1 */	bl func_8009AF20
/* 80506754  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80506758  7C 08 03 A6 */	mtlr r0
/* 8050675C  38 21 00 30 */	addi r1, r1, 0x30
/* 80506760  4E 80 00 20 */	blr 
