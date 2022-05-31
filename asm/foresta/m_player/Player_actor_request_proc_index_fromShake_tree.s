lbl_805011AC:
/* 805011AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805011B0  7C 08 02 A6 */	mflr r0
/* 805011B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805011B8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805011BC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805011C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805011C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805011C8  2C 05 00 00 */	cmpwi r5, 0
/* 805011CC  7C 7E 1B 78 */	mr r30, r3
/* 805011D0  7C 9F 23 78 */	mr r31, r4
/* 805011D4  41 82 00 30 */	beq lbl_80501204
/* 805011D8  4B FD 41 95 */	bl Player_actor_SettleRequestMainIndexPriority
/* 805011DC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 805011E0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 805011E4  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 805011E8  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 805011EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805011F0  7F E3 FB 78 */	mr r3, r31
/* 805011F4  38 80 00 00 */	li r4, 0
/* 805011F8  38 A0 00 01 */	li r5, 1
/* 805011FC  4B FE 4A 01 */	bl func_804E5BFC
/* 80501200  48 00 00 DC */	b lbl_805012DC
lbl_80501204:
/* 80501204  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 80501208  38 7E 01 74 */	addi r3, r30, 0x174
/* 8050120C  C3 FE 01 84 */	lfs f31, 0x184(r30)
/* 80501210  2C 00 00 00 */	cmpwi r0, 0
/* 80501214  41 82 00 40 */	beq lbl_80501254
/* 80501218  3C 60 80 65 */	lis r3, lit_6484@ha /* 0x80648090@ha */
/* 8050121C  C0 03 80 90 */	lfs f0, lit_6484@l(r3)  /* 0x80648090@l */
/* 80501220  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80501224  4C 41 13 82 */	cror 2, 1, 2
/* 80501228  40 82 00 B4 */	bne lbl_805012DC
/* 8050122C  3C 60 80 64 */	lis r3, lit_5992@ha /* 0x80647DCC@ha */
/* 80501230  A8 9E 0D 34 */	lha r4, 0xd34(r30)
/* 80501234  38 A3 7D CC */	addi r5, r3, lit_5992@l /* 0x80647DCC@l */
/* 80501238  7F E3 FB 78 */	mr r3, r31
/* 8050123C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80501240  38 A0 00 01 */	li r5, 1
/* 80501244  38 C0 00 00 */	li r6, 0
/* 80501248  38 E0 00 15 */	li r7, 0x15
/* 8050124C  48 00 25 81 */	bl func_805037CC
/* 80501250  48 00 00 8C */	b lbl_805012DC
lbl_80501254:
/* 80501254  3C 80 80 65 */	lis r4, lit_13052@ha /* 0x80648550@ha */
/* 80501258  C0 24 85 50 */	lfs f1, lit_13052@l(r4)  /* 0x80648550@l */
/* 8050125C  4B FD 63 A5 */	bl Player_actor_Check_AnimationFrame
/* 80501260  2C 03 00 00 */	cmpwi r3, 0
/* 80501264  41 82 00 1C */	beq lbl_80501280
/* 80501268  7F C3 F3 78 */	mr r3, r30
/* 8050126C  4B FD 41 01 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80501270  7F C3 F3 78 */	mr r3, r30
/* 80501274  38 80 00 01 */	li r4, 1
/* 80501278  4B FD 45 A5 */	bl Player_actor_Set_status_for_bee
/* 8050127C  48 00 00 60 */	b lbl_805012DC
lbl_80501280:
/* 80501280  3C 60 80 65 */	lis r3, lit_6484@ha /* 0x80648090@ha */
/* 80501284  C0 03 80 90 */	lfs f0, lit_6484@l(r3)  /* 0x80648090@l */
/* 80501288  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8050128C  4C 41 13 82 */	cror 2, 1, 2
/* 80501290  40 82 00 4C */	bne lbl_805012DC
/* 80501294  4B FD 37 6D */	bl Player_actor_GetController_move_percentX
/* 80501298  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 8050129C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805012A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805012A4  40 82 00 18 */	bne lbl_805012BC
/* 805012A8  4B FD 37 9D */	bl Player_actor_GetController_move_percentY
/* 805012AC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805012B0  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805012B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805012B8  41 82 00 24 */	beq lbl_805012DC
lbl_805012BC:
/* 805012BC  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 805012C0  7F E3 FB 78 */	mr r3, r31
/* 805012C4  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 805012C8  38 80 00 00 */	li r4, 0
/* 805012CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805012D0  38 A0 00 00 */	li r5, 0
/* 805012D4  38 C0 00 01 */	li r6, 1
/* 805012D8  4B FE 4D 79 */	bl func_804E6050
lbl_805012DC:
/* 805012DC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805012E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805012E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805012E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805012EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805012F0  7C 08 03 A6 */	mtlr r0
/* 805012F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805012F8  4E 80 00 20 */	blr 
