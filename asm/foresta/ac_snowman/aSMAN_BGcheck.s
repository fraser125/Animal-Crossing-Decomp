lbl_804A4874:
/* 804A4874  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A4878  7C 08 02 A6 */	mflr r0
/* 804A487C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A4880  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804A4884  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804A4888  39 61 00 30 */	addi r11, r1, 0x30
/* 804A488C  4B BF 66 41 */	bl func_8009AECC
/* 804A4890  3C 80 80 64 */	lis r4, lit_644@ha /* 0x80645CC4@ha */
/* 804A4894  7C 7F 1B 78 */	mr r31, r3
/* 804A4898  38 64 5C C4 */	addi r3, r4, lit_644@l /* 0x80645CC4@l */
/* 804A489C  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A48A0  C0 23 00 00 */	lfs f1, 0(r3)
/* 804A48A4  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A48A8  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A48AC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804A48B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A48B4  C0 24 5C 90 */	lfs f1, lit_469@l(r4)  /* 0x80645C90@l */
/* 804A48B8  EC 21 00 2A */	fadds f1, f1, f0
/* 804A48BC  40 82 00 28 */	bne lbl_804A48E4
/* 804A48C0  3C 60 80 4A */	lis r3, aSMAN_process_combine_head_jump@ha /* 0x804A6BC8@ha */
/* 804A48C4  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 804A48C8  38 03 6B C8 */	addi r0, r3, aSMAN_process_combine_head_jump@l /* 0x804A6BC8@l */
/* 804A48CC  7C 04 00 40 */	cmplw r4, r0
/* 804A48D0  41 82 00 14 */	beq lbl_804A48E4
/* 804A48D4  3C 60 80 4A */	lis r3, aSMAN_process_combine_body@ha /* 0x804A7384@ha */
/* 804A48D8  38 03 73 84 */	addi r0, r3, aSMAN_process_combine_body@l /* 0x804A7384@l */
/* 804A48DC  7C 04 00 40 */	cmplw r4, r0
/* 804A48E0  40 82 00 0C */	bne lbl_804A48EC
lbl_804A48E4:
/* 804A48E4  38 60 00 00 */	li r3, 0
/* 804A48E8  48 00 02 C4 */	b lbl_804A4BAC
lbl_804A48EC:
/* 804A48EC  3C 60 80 4A */	lis r3, aSMAN_process_swim@ha /* 0x804A61BC@ha */
/* 804A48F0  38 03 61 BC */	addi r0, r3, aSMAN_process_swim@l /* 0x804A61BC@l */
/* 804A48F4  7C 04 00 40 */	cmplw r4, r0
/* 804A48F8  40 82 00 44 */	bne lbl_804A493C
/* 804A48FC  FC 40 08 50 */	fneg f2, f1
/* 804A4900  7F E4 FB 78 */	mr r4, r31
/* 804A4904  38 7F 01 A4 */	addi r3, r31, 0x1a4
/* 804A4908  38 A0 00 00 */	li r5, 0
/* 804A490C  38 C0 00 01 */	li r6, 1
/* 804A4910  38 E0 00 00 */	li r7, 0
/* 804A4914  4B EE 54 8D */	bl mCoBG_BgCheckControll
/* 804A4918  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804A491C  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 804A4920  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4924  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804A4928  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804A492C  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 804A4930  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4934  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804A4938  48 00 00 7C */	b lbl_804A49B4
lbl_804A493C:
/* 804A493C  FC 40 08 50 */	fneg f2, f1
/* 804A4940  7F E4 FB 78 */	mr r4, r31
/* 804A4944  38 7F 01 A4 */	addi r3, r31, 0x1a4
/* 804A4948  38 A0 00 00 */	li r5, 0
/* 804A494C  38 C0 00 00 */	li r6, 0
/* 804A4950  38 E0 00 00 */	li r7, 0
/* 804A4954  4B EE 54 4D */	bl mCoBG_BgCheckControll
/* 804A4958  7F E3 FB 78 */	mr r3, r31
/* 804A495C  4B F5 20 09 */	bl mRlib_Station_step_modify_to_wall
/* 804A4960  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 804A4964  3C 60 80 64 */	lis r3, lit_609@ha /* 0x80645CAC@ha */
/* 804A4968  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804A496C  C0 03 5C AC */	lfs f0, lit_609@l(r3)  /* 0x80645CAC@l */
/* 804A4970  EC 22 08 28 */	fsubs f1, f2, f1
/* 804A4974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4978  40 81 00 3C */	ble lbl_804A49B4
/* 804A497C  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 804A4980  38 60 00 00 */	li r3, 0
/* 804A4984  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 804A4988  90 9F 00 28 */	stw r4, 0x28(r31)
/* 804A498C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 804A4990  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 804A4994  90 1F 00 30 */	stw r0, 0x30(r31)
/* 804A4998  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A499C  60 00 00 04 */	ori r0, r0, 4
/* 804A49A0  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A49A4  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A49A8  60 00 00 02 */	ori r0, r0, 2
/* 804A49AC  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A49B0  48 00 01 FC */	b lbl_804A4BAC
lbl_804A49B4:
/* 804A49B4  A0 1F 00 98 */	lhz r0, 0x98(r31)
/* 804A49B8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 804A49BC  41 82 01 EC */	beq lbl_804A4BA8
/* 804A49C0  7F E3 FB 78 */	mr r3, r31
/* 804A49C4  4B F5 1F 41 */	bl mRlib_Get_HitWallAngleY
/* 804A49C8  7C 7E 1B 78 */	mr r30, r3
/* 804A49CC  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 804A49D0  7F DD 07 34 */	extsh r29, r30
/* 804A49D4  38 1D C0 00 */	addi r0, r29, -16384
/* 804A49D8  7C 03 00 50 */	subf r0, r3, r0
/* 804A49DC  7C 1C 07 34 */	extsh r28, r0
/* 804A49E0  7F 83 E3 78 */	mr r3, r28
/* 804A49E4  4B F1 61 0D */	bl sin_s
/* 804A49E8  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804A49EC  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A49F0  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A49F4  EF E2 00 72 */	fmuls f31, f2, f1
/* 804A49F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A49FC  4C 41 13 82 */	cror 2, 1, 2
/* 804A4A00  40 82 00 0C */	bne lbl_804A4A0C
/* 804A4A04  FC 20 F8 90 */	fmr f1, f31
/* 804A4A08  48 00 00 08 */	b lbl_804A4A10
lbl_804A4A0C:
/* 804A4A0C  FC 20 F8 50 */	fneg f1, f31
lbl_804A4A10:
/* 804A4A10  3C 60 80 64 */	lis r3, lit_906@ha /* 0x80645D20@ha */
/* 804A4A14  C0 03 5D 20 */	lfs f0, lit_906@l(r3)  /* 0x80645D20@l */
/* 804A4A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4A1C  40 81 00 24 */	ble lbl_804A4A40
/* 804A4A20  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A4A24  38 60 00 00 */	li r3, 0
/* 804A4A28  60 00 00 04 */	ori r0, r0, 4
/* 804A4A2C  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A4A30  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A4A34  60 00 00 02 */	ori r0, r0, 2
/* 804A4A38  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A4A3C  48 00 01 70 */	b lbl_804A4BAC
lbl_804A4A40:
/* 804A4A40  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4A44  3C 9D 00 01 */	addis r4, r29, 1
/* 804A4A48  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4A4C  38 64 80 00 */	addi r3, r4, -32768
/* 804A4A50  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804A4A54  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A4A58  7F 63 00 50 */	subf r27, r3, r0
/* 804A4A5C  40 81 00 F0 */	ble lbl_804A4B4C
/* 804A4A60  7F 83 E3 78 */	mr r3, r28
/* 804A4A64  4B F1 60 39 */	bl cos_s
/* 804A4A68  3C 60 80 64 */	lis r3, lit_907@ha /* 0x80645D24@ha */
/* 804A4A6C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804A4A70  C0 03 5D 24 */	lfs f0, lit_907@l(r3)  /* 0x80645D24@l */
/* 804A4A74  7C 1B E8 50 */	subf r0, r27, r29
/* 804A4A78  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A4A7C  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4A80  EF FF 00 32 */	fmuls f31, f31, f0
/* 804A4A84  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4A88  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804A4A8C  EC 21 00 72 */	fmuls f1, f1, f1
/* 804A4A90  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 804A4A94  EC 82 08 2A */	fadds f4, f2, f1
/* 804A4A98  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804A4A9C  40 81 00 68 */	ble lbl_804A4B04
/* 804A4AA0  FC 20 20 34 */	frsqrte f1, f4
/* 804A4AA4  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A4AA8  38 83 5C DC */	addi r4, r3, lit_681@l /* 0x80645CDC@l */
/* 804A4AAC  3C 60 80 64 */	lis r3, lit_682@ha /* 0x80645CE4@ha */
/* 804A4AB0  C8 64 00 00 */	lfd f3, 0(r4)
/* 804A4AB4  FC 01 00 72 */	fmul f0, f1, f1
/* 804A4AB8  C8 43 5C E4 */	lfd f2, lit_682@l(r3)  /* 0x80645CE4@l */
/* 804A4ABC  FC 23 00 72 */	fmul f1, f3, f1
/* 804A4AC0  FC 04 00 32 */	fmul f0, f4, f0
/* 804A4AC4  FC 02 00 28 */	fsub f0, f2, f0
/* 804A4AC8  FC 21 00 32 */	fmul f1, f1, f0
/* 804A4ACC  FC 01 00 72 */	fmul f0, f1, f1
/* 804A4AD0  FC 23 00 72 */	fmul f1, f3, f1
/* 804A4AD4  FC 04 00 32 */	fmul f0, f4, f0
/* 804A4AD8  FC 02 00 28 */	fsub f0, f2, f0
/* 804A4ADC  FC 21 00 32 */	fmul f1, f1, f0
/* 804A4AE0  FC 01 00 72 */	fmul f0, f1, f1
/* 804A4AE4  FC 23 00 72 */	fmul f1, f3, f1
/* 804A4AE8  FC 04 00 32 */	fmul f0, f4, f0
/* 804A4AEC  FC 02 00 28 */	fsub f0, f2, f0
/* 804A4AF0  FC 01 00 32 */	fmul f0, f1, f0
/* 804A4AF4  FC 04 00 32 */	fmul f0, f4, f0
/* 804A4AF8  FC 00 00 18 */	frsp f0, f0
/* 804A4AFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A4B00  C0 81 00 08 */	lfs f4, 8(r1)
lbl_804A4B04:
/* 804A4B04  D0 9F 00 74 */	stfs f4, 0x74(r31)
/* 804A4B08  3C 60 80 4A */	lis r3, aSMAN_process_player_push@ha /* 0x804A59A4@ha */
/* 804A4B0C  38 03 59 A4 */	addi r0, r3, aSMAN_process_player_push@l /* 0x804A59A4@l */
/* 804A4B10  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 804A4B14  7C 03 00 40 */	cmplw r3, r0
/* 804A4B18  41 82 00 80 */	beq lbl_804A4B98
/* 804A4B1C  88 1F 00 9A */	lbz r0, 0x9a(r31)
/* 804A4B20  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 804A4B24  40 82 00 74 */	bne lbl_804A4B98
/* 804A4B28  3C 60 80 64 */	lis r3, lit_680@ha /* 0x80645CD8@ha */
/* 804A4B2C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804A4B30  C0 03 5C D8 */	lfs f0, lit_680@l(r3)  /* 0x80645CD8@l */
/* 804A4B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4B38  40 81 00 60 */	ble lbl_804A4B98
/* 804A4B3C  38 9F 00 28 */	addi r4, r31, 0x28
/* 804A4B40  38 60 01 03 */	li r3, 0x103
/* 804A4B44  48 18 99 4D */	bl sAdo_OngenTrgStartSpeed
/* 804A4B48  48 00 00 50 */	b lbl_804A4B98
lbl_804A4B4C:
/* 804A4B4C  3C 60 80 4A */	lis r3, aSMAN_process_air@ha /* 0x804A649C@ha */
/* 804A4B50  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 804A4B54  38 03 64 9C */	addi r0, r3, aSMAN_process_air@l /* 0x804A649C@l */
/* 804A4B58  7C 04 00 40 */	cmplw r4, r0
/* 804A4B5C  40 82 00 3C */	bne lbl_804A4B98
/* 804A4B60  FC 20 10 90 */	fmr f1, f2
/* 804A4B64  38 9F 00 28 */	addi r4, r31, 0x28
/* 804A4B68  38 60 01 03 */	li r3, 0x103
/* 804A4B6C  48 18 99 25 */	bl sAdo_OngenTrgStartSpeed
/* 804A4B70  B3 DF 00 36 */	sth r30, 0x36(r31)
/* 804A4B74  3C 60 80 64 */	lis r3, lit_908@ha /* 0x80645D28@ha */
/* 804A4B78  38 83 5D 28 */	addi r4, r3, lit_908@l /* 0x80645D28@l */
/* 804A4B7C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804A4B80  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4B84  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A4B88  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4B8C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A4B90  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 804A4B94  D0 1F 00 6C */	stfs f0, 0x6c(r31)
lbl_804A4B98:
/* 804A4B98  38 7F 00 68 */	addi r3, r31, 0x68
/* 804A4B9C  38 9F 00 74 */	addi r4, r31, 0x74
/* 804A4BA0  38 BF 00 36 */	addi r5, r31, 0x36
/* 804A4BA4  4B F5 19 A1 */	bl mRlib_spdF_Angle_to_spdXZ
lbl_804A4BA8:
/* 804A4BA8  38 60 00 01 */	li r3, 1
lbl_804A4BAC:
/* 804A4BAC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804A4BB0  39 61 00 30 */	addi r11, r1, 0x30
/* 804A4BB4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804A4BB8  4B BF 63 61 */	bl func_8009AF18
/* 804A4BBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A4BC0  7C 08 03 A6 */	mtlr r0
/* 804A4BC4  38 21 00 40 */	addi r1, r1, 0x40
/* 804A4BC8  4E 80 00 20 */	blr 
