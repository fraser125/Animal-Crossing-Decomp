lbl_804A59A4:
/* 804A59A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804A59A8  7C 08 02 A6 */	mflr r0
/* 804A59AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 804A59B0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804A59B4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804A59B8  39 61 00 60 */	addi r11, r1, 0x60
/* 804A59BC  4B BF 55 0D */	bl func_8009AEC8
/* 804A59C0  7C 9A 23 78 */	mr r26, r4
/* 804A59C4  7C 7F 1B 78 */	mr r31, r3
/* 804A59C8  7F 43 D3 78 */	mr r3, r26
/* 804A59CC  4B F3 3C 75 */	bl get_player_actor_withoutCheck
/* 804A59D0  7C 60 1B 78 */	mr r0, r3
/* 804A59D4  7F E3 FB 78 */	mr r3, r31
/* 804A59D8  7C 1E 03 78 */	mr r30, r0
/* 804A59DC  4B FF EC 25 */	bl aSMAN_get_oc_actor
/* 804A59E0  7C 60 1B 78 */	mr r0, r3
/* 804A59E4  38 7E 00 28 */	addi r3, r30, 0x28
/* 804A59E8  7C 1D 03 78 */	mr r29, r0
/* 804A59EC  38 9F 00 28 */	addi r4, r31, 0x28
/* 804A59F0  4B F1 57 41 */	bl search_position_angleY
/* 804A59F4  3C A0 80 64 */	lis r5, lit_681@ha /* 0x80645CDC@ha */
/* 804A59F8  CC C5 5C DC */	lfdu f6, lit_681@l(r5)  /* 0x80645CDC@l */
/* 804A59FC  3C 80 80 64 */	lis r4, lit_682@ha /* 0x80645CE4@ha */
/* 804A5A00  3C E0 81 1C */	lis r7, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804A5A04  FC 00 30 34 */	frsqrte f0, f6
/* 804A5A08  38 C4 5C E4 */	addi r6, r4, lit_682@l /* 0x80645CE4@l */
/* 804A5A0C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804A5A10  3C 80 80 64 */	lis r4, lit_640@ha /* 0x80645CB4@ha */
/* 804A5A14  C8 86 00 00 */	lfd f4, 0(r6)
/* 804A5A18  38 A4 5C B4 */	addi r5, r4, lit_640@l /* 0x80645CB4@l */
/* 804A5A1C  FC 20 00 32 */	fmul f1, f0, f0
/* 804A5A20  3C 80 80 64 */	lis r4, lit_737@ha /* 0x80645CFC@ha */
/* 804A5A24  B0 61 00 0A */	sth r3, 0xa(r1)
/* 804A5A28  7C 60 07 34 */	extsh r0, r3
/* 804A5A2C  FC 65 00 32 */	fmul f3, f5, f0
/* 804A5A30  80 C7 52 F0 */	lwz r6, data_811C52F0@l(r7)  /* 0x811C52F0@l */
/* 804A5A34  FC 26 00 72 */	fmul f1, f6, f1
/* 804A5A38  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A5A3C  A8 A6 00 B4 */	lha r5, 0xb4(r6)
/* 804A5A40  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 804A5A44  C3 E6 00 B0 */	lfs f31, 0xb0(r6)
/* 804A5A48  38 A5 40 00 */	addi r5, r5, 0x4000
/* 804A5A4C  FC 24 08 28 */	fsub f1, f4, f1
/* 804A5A50  7C BC 07 34 */	extsh r28, r5
/* 804A5A54  7C 00 E0 50 */	subf r0, r0, r28
/* 804A5A58  C0 44 5C FC */	lfs f2, lit_737@l(r4)  /* 0x80645CFC@l */
/* 804A5A5C  7C 1B 07 34 */	extsh r27, r0
/* 804A5A60  FC 63 00 72 */	fmul f3, f3, f1
/* 804A5A64  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A5A68  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A5A6C  FC 26 00 72 */	fmul f1, f6, f1
/* 804A5A70  FC 24 08 28 */	fsub f1, f4, f1
/* 804A5A74  FC 63 00 72 */	fmul f3, f3, f1
/* 804A5A78  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A5A7C  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A5A80  FC 26 00 72 */	fmul f1, f6, f1
/* 804A5A84  FC 24 08 28 */	fsub f1, f4, f1
/* 804A5A88  FC 23 00 72 */	fmul f1, f3, f1
/* 804A5A8C  FC 26 00 72 */	fmul f1, f6, f1
/* 804A5A90  FC 20 08 18 */	frsp f1, f1
/* 804A5A94  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804A5A98  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804A5A9C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804A5AA0  4B F1 58 39 */	bl add_calc0
/* 804A5AA4  3C 60 80 64 */	lis r3, lit_1244@ha /* 0x80645D7C@ha */
/* 804A5AA8  3C 80 80 64 */	lis r4, lit_681@ha /* 0x80645CDC@ha */
/* 804A5AAC  38 A3 5D 7C */	addi r5, r3, lit_1244@l /* 0x80645D7C@l */
/* 804A5AB0  C8 E4 5C DC */	lfd f7, lit_681@l(r4)  /* 0x80645CDC@l */
/* 804A5AB4  C9 05 00 00 */	lfd f8, 0(r5)
/* 804A5AB8  3C 60 80 64 */	lis r3, lit_682@ha /* 0x80645CE4@ha */
/* 804A5ABC  39 03 5C E4 */	addi r8, r3, lit_682@l /* 0x80645CE4@l */
/* 804A5AC0  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80645C9C@ha */
/* 804A5AC4  FC 20 40 34 */	frsqrte f1, f8
/* 804A5AC8  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A5ACC  38 C3 5C B4 */	addi r6, r3, lit_640@l /* 0x80645CB4@l */
/* 804A5AD0  C8 C8 00 00 */	lfd f6, 0(r8)
/* 804A5AD4  3C 80 80 64 */	lis r4, lit_1245@ha /* 0x80645D84@ha */
/* 804A5AD8  38 E5 5C 9C */	addi r7, r5, lit_472@l /* 0x80645C9C@l */
/* 804A5ADC  FC 01 00 72 */	fmul f0, f1, f1
/* 804A5AE0  38 A4 5D 84 */	addi r5, r4, lit_1245@l /* 0x80645D84@l */
/* 804A5AE4  3C 60 80 64 */	lis r3, lit_1246@ha /* 0x80645D88@ha */
/* 804A5AE8  C0 65 00 00 */	lfs f3, 0(r5)
/* 804A5AEC  38 83 5D 88 */	addi r4, r3, lit_1246@l /* 0x80645D88@l */
/* 804A5AF0  FC A7 00 72 */	fmul f5, f7, f1
/* 804A5AF4  FC 48 00 32 */	fmul f2, f8, f0
/* 804A5AF8  C0 06 00 00 */	lfs f0, 0(r6)
/* 804A5AFC  C0 27 00 00 */	lfs f1, 0(r7)
/* 804A5B00  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 804A5B04  C0 84 00 00 */	lfs f4, 0(r4)
/* 804A5B08  FC 46 10 28 */	fsub f2, f6, f2
/* 804A5B0C  FC A5 00 B2 */	fmul f5, f5, f2
/* 804A5B10  FC 45 01 72 */	fmul f2, f5, f5
/* 804A5B14  FC A7 01 72 */	fmul f5, f7, f5
/* 804A5B18  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A5B1C  FC 46 10 28 */	fsub f2, f6, f2
/* 804A5B20  FC A5 00 B2 */	fmul f5, f5, f2
/* 804A5B24  FC 45 01 72 */	fmul f2, f5, f5
/* 804A5B28  FC A7 01 72 */	fmul f5, f7, f5
/* 804A5B2C  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A5B30  FC 46 10 28 */	fsub f2, f6, f2
/* 804A5B34  FC 45 00 B2 */	fmul f2, f5, f2
/* 804A5B38  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A5B3C  FC 40 10 18 */	frsp f2, f2
/* 804A5B40  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804A5B44  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804A5B48  EC 40 10 28 */	fsubs f2, f0, f2
/* 804A5B4C  4B F1 56 65 */	bl add_calc
/* 804A5B50  28 1D 00 00 */	cmplwi r29, 0
/* 804A5B54  41 82 00 24 */	beq lbl_804A5B78
/* 804A5B58  7F E3 FB 78 */	mr r3, r31
/* 804A5B5C  7F 44 D3 78 */	mr r4, r26
/* 804A5B60  7F A5 EB 78 */	mr r5, r29
/* 804A5B64  4B FF F0 69 */	bl aSMAN_snowman_hit_check
/* 804A5B68  2C 03 00 01 */	cmpwi r3, 1
/* 804A5B6C  40 82 00 0C */	bne lbl_804A5B78
/* 804A5B70  38 60 00 00 */	li r3, 0
/* 804A5B74  48 00 04 80 */	b lbl_804A5FF4
lbl_804A5B78:
/* 804A5B78  7F E3 FB 78 */	mr r3, r31
/* 804A5B7C  4B F3 7F E9 */	bl mPlib_Check_Label_main_wade_snowball
/* 804A5B80  2C 03 00 00 */	cmpwi r3, 0
/* 804A5B84  41 82 00 10 */	beq lbl_804A5B94
/* 804A5B88  7F E3 FB 78 */	mr r3, r31
/* 804A5B8C  48 00 04 89 */	bl aSMAN_process_player_push_scroll_init
/* 804A5B90  48 00 04 34 */	b lbl_804A5FC4
lbl_804A5B94:
/* 804A5B94  7F E3 FB 78 */	mr r3, r31
/* 804A5B98  4B F3 7F 79 */	bl mPlib_Check_Label_main_push_snowball
/* 804A5B9C  2C 03 00 00 */	cmpwi r3, 0
/* 804A5BA0  40 82 00 14 */	bne lbl_804A5BB4
/* 804A5BA4  7F E3 FB 78 */	mr r3, r31
/* 804A5BA8  4B FF FC 8D */	bl aSMAN_process_normal_init
/* 804A5BAC  38 60 00 00 */	li r3, 0
/* 804A5BB0  48 00 04 44 */	b lbl_804A5FF4
lbl_804A5BB4:
/* 804A5BB4  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 804A5BB8  7F E3 FB 78 */	mr r3, r31
/* 804A5BBC  38 81 00 38 */	addi r4, r1, 0x38
/* 804A5BC0  4B FF E7 99 */	bl aSMAN_get_norm_push_angle_distance
/* 804A5BC4  7F 60 07 35 */	extsh. r0, r27
/* 804A5BC8  7C 7D 1B 78 */	mr r29, r3
/* 804A5BCC  7C 1B 00 D0 */	neg r0, r27
/* 804A5BD0  41 80 00 08 */	blt lbl_804A5BD8
/* 804A5BD4  7F 60 DB 78 */	mr r0, r27
lbl_804A5BD8:
/* 804A5BD8  2C 00 27 1C */	cmpwi r0, 0x271c
/* 804A5BDC  41 81 00 8C */	bgt lbl_804A5C68
/* 804A5BE0  3C 60 80 64 */	lis r3, lit_639@ha /* 0x80645CB0@ha */
/* 804A5BE4  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 804A5BE8  C0 03 5C B0 */	lfs f0, lit_639@l(r3)  /* 0x80645CB0@l */
/* 804A5BEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5BF0  4C 40 13 82 */	cror 2, 0, 2
/* 804A5BF4  41 82 00 74 */	beq lbl_804A5C68
/* 804A5BF8  7F E3 FB 78 */	mr r3, r31
/* 804A5BFC  7F 44 D3 78 */	mr r4, r26
/* 804A5C00  4B FF E6 C5 */	bl aSMAN_player_push_HitWallCheck
/* 804A5C04  2C 03 00 00 */	cmpwi r3, 0
/* 804A5C08  40 82 00 60 */	bne lbl_804A5C68
/* 804A5C0C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804A5C10  3C 60 80 64 */	lis r3, lit_784@ha /* 0x80645D10@ha */
/* 804A5C14  C0 23 5D 10 */	lfs f1, lit_784@l(r3)  /* 0x80645D10@l */
/* 804A5C18  FC 00 02 10 */	fabs f0, f0
/* 804A5C1C  FC 00 00 18 */	frsp f0, f0
/* 804A5C20  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A5C24  40 80 00 18 */	bge lbl_804A5C3C
/* 804A5C28  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804A5C2C  FC 00 02 10 */	fabs f0, f0
/* 804A5C30  FC 00 00 18 */	frsp f0, f0
/* 804A5C34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A5C38  41 80 00 20 */	blt lbl_804A5C58
lbl_804A5C3C:
/* 804A5C3C  7F A0 07 35 */	extsh. r0, r29
/* 804A5C40  7F A0 07 34 */	extsh r0, r29
/* 804A5C44  7C 60 00 D0 */	neg r3, r0
/* 804A5C48  41 80 00 08 */	blt lbl_804A5C50
/* 804A5C4C  7C 03 03 78 */	mr r3, r0
lbl_804A5C50:
/* 804A5C50  2C 03 55 55 */	cmpwi r3, 0x5555
/* 804A5C54  41 80 00 14 */	blt lbl_804A5C68
lbl_804A5C58:
/* 804A5C58  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A5C5C  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A5C60  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 804A5C64  40 82 00 1C */	bne lbl_804A5C80
lbl_804A5C68:
/* 804A5C68  7F 43 D3 78 */	mr r3, r26
/* 804A5C6C  4B FF E6 19 */	bl aSMAN_player_push_free
/* 804A5C70  7F E3 FB 78 */	mr r3, r31
/* 804A5C74  4B FF FB C1 */	bl aSMAN_process_normal_init
/* 804A5C78  38 60 00 00 */	li r3, 0
/* 804A5C7C  48 00 03 78 */	b lbl_804A5FF4
lbl_804A5C80:
/* 804A5C80  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 804A5C84  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A5C88  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804A5C8C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A5C90  C0 23 5C C4 */	lfs f1, lit_644@l(r3)  /* 0x80645CC4@l */
/* 804A5C94  7F 63 DB 78 */	mr r3, r27
/* 804A5C98  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 804A5C9C  C0 44 5C 90 */	lfs f2, lit_469@l(r4)  /* 0x80645C90@l */
/* 804A5CA0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A5CA4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A5CA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A5CAC  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A5CB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A5CB4  EC 02 00 2A */	fadds f0, f2, f0
/* 804A5CB8  EC 02 00 2A */	fadds f0, f2, f0
/* 804A5CBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804A5CC0  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 804A5CC4  B0 01 00 08 */	sth r0, 8(r1)
/* 804A5CC8  4B F1 4D D5 */	bl cos_s
/* 804A5CCC  3C 60 80 64 */	lis r3, lit_679@ha /* 0x80645CD4@ha */
/* 804A5CD0  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80645CD0@ha */
/* 804A5CD4  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A5CD8  C0 43 5C D4 */	lfs f2, lit_679@l(r3)  /* 0x80645CD4@l */
/* 804A5CDC  C0 64 5C D0 */	lfs f3, lit_678@l(r4)  /* 0x80645CD0@l */
/* 804A5CE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A5CE4  EC 03 00 28 */	fsubs f0, f3, f0
/* 804A5CE8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804A5CEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A5CF0  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
/* 804A5CF4  4B F3 8A 09 */	bl mPlib_CheckButtonOnly_forDush
/* 804A5CF8  2C 03 00 00 */	cmpwi r3, 0
/* 804A5CFC  41 82 00 18 */	beq lbl_804A5D14
/* 804A5D00  3C 60 80 64 */	lis r3, lit_679@ha /* 0x80645CD4@ha */
/* 804A5D04  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 804A5D08  C0 03 5C D4 */	lfs f0, lit_679@l(r3)  /* 0x80645CD4@l */
/* 804A5D0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A5D10  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
lbl_804A5D14:
/* 804A5D14  B3 9F 00 36 */	sth r28, 0x36(r31)
/* 804A5D18  38 7F 00 68 */	addi r3, r31, 0x68
/* 804A5D1C  38 9F 00 74 */	addi r4, r31, 0x74
/* 804A5D20  38 BF 00 36 */	addi r5, r31, 0x36
/* 804A5D24  4B F5 08 21 */	bl mRlib_spdF_Angle_to_spdXZ
/* 804A5D28  7F E3 FB 78 */	mr r3, r31
/* 804A5D2C  7F 44 D3 78 */	mr r4, r26
/* 804A5D30  4B FF E7 69 */	bl aSMAN_set_speed_relations_norm_player_push
/* 804A5D34  38 61 00 2C */	addi r3, r1, 0x2c
/* 804A5D38  38 81 00 1C */	addi r4, r1, 0x1c
/* 804A5D3C  38 A1 00 0A */	addi r5, r1, 0xa
/* 804A5D40  4B F5 08 05 */	bl mRlib_spdF_Angle_to_spdXZ
/* 804A5D44  38 81 00 2C */	addi r4, r1, 0x2c
/* 804A5D48  38 7F 00 28 */	addi r3, r31, 0x28
/* 804A5D4C  7C 85 23 78 */	mr r5, r4
/* 804A5D50  4B F1 52 29 */	bl xyz_t_sub
/* 804A5D54  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 804A5D58  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A5D5C  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 804A5D60  38 A3 5C 8C */	addi r5, r3, data_80645C8C@l /* 0x80645C8C@l */
/* 804A5D64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A5D68  38 81 00 20 */	addi r4, r1, 0x20
/* 804A5D6C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 804A5D70  38 60 00 00 */	li r3, 0
/* 804A5D74  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A5D78  90 C1 00 24 */	stw r6, 0x24(r1)
/* 804A5D7C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A5D80  4B EE 99 39 */	bl func_8038F6B8
/* 804A5D84  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A5D88  3C 80 80 64 */	lis r4, lit_682@ha /* 0x80645CE4@ha */
/* 804A5D8C  38 C3 5C DC */	addi r6, r3, lit_681@l /* 0x80645CDC@l */
/* 804A5D90  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804A5D94  C8 E6 00 00 */	lfd f7, 0(r6)
/* 804A5D98  38 A4 5C E4 */	addi r5, r4, lit_682@l /* 0x80645CE4@l */
/* 804A5D9C  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A5DA0  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804A5DA4  FC A0 38 34 */	frsqrte f5, f7
/* 804A5DA8  38 83 5C B4 */	addi r4, r3, lit_640@l /* 0x80645CB4@l */
/* 804A5DAC  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A5DB0  C8 85 00 00 */	lfd f4, 0(r5)
/* 804A5DB4  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A5DB8  FC 65 01 72 */	fmul f3, f5, f5
/* 804A5DBC  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A5DC0  FC A6 01 72 */	fmul f5, f6, f5
/* 804A5DC4  FC 27 00 F2 */	fmul f1, f7, f3
/* 804A5DC8  FC 24 08 28 */	fsub f1, f4, f1
/* 804A5DCC  FC 65 00 72 */	fmul f3, f5, f1
/* 804A5DD0  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A5DD4  FC 66 00 F2 */	fmul f3, f6, f3
/* 804A5DD8  FC 27 00 72 */	fmul f1, f7, f1
/* 804A5DDC  FC 24 08 28 */	fsub f1, f4, f1
/* 804A5DE0  FC 63 00 72 */	fmul f3, f3, f1
/* 804A5DE4  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A5DE8  FC 66 00 F2 */	fmul f3, f6, f3
/* 804A5DEC  FC 27 00 72 */	fmul f1, f7, f1
/* 804A5DF0  FC 24 08 28 */	fsub f1, f4, f1
/* 804A5DF4  FC 23 00 72 */	fmul f1, f3, f1
/* 804A5DF8  FC 27 00 72 */	fmul f1, f7, f1
/* 804A5DFC  FC 20 08 18 */	frsp f1, f1
/* 804A5E00  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804A5E04  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804A5E08  EC 22 08 28 */	fsubs f1, f2, f1
/* 804A5E0C  EC 42 08 28 */	fsubs f2, f2, f1
/* 804A5E10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804A5E14  40 81 00 54 */	ble lbl_804A5E68
/* 804A5E18  FC 20 10 34 */	frsqrte f1, f2
/* 804A5E1C  FC 01 00 72 */	fmul f0, f1, f1
/* 804A5E20  FC 26 00 72 */	fmul f1, f6, f1
/* 804A5E24  FC 02 00 32 */	fmul f0, f2, f0
/* 804A5E28  FC 04 00 28 */	fsub f0, f4, f0
/* 804A5E2C  FC 21 00 32 */	fmul f1, f1, f0
/* 804A5E30  FC 01 00 72 */	fmul f0, f1, f1
/* 804A5E34  FC 26 00 72 */	fmul f1, f6, f1
/* 804A5E38  FC 02 00 32 */	fmul f0, f2, f0
/* 804A5E3C  FC 04 00 28 */	fsub f0, f4, f0
/* 804A5E40  FC 21 00 32 */	fmul f1, f1, f0
/* 804A5E44  FC 01 00 72 */	fmul f0, f1, f1
/* 804A5E48  FC 26 00 72 */	fmul f1, f6, f1
/* 804A5E4C  FC 02 00 32 */	fmul f0, f2, f0
/* 804A5E50  FC 04 00 28 */	fsub f0, f4, f0
/* 804A5E54  FC 01 00 32 */	fmul f0, f1, f0
/* 804A5E58  FC 02 00 32 */	fmul f0, f2, f0
/* 804A5E5C  FC 00 00 18 */	frsp f0, f0
/* 804A5E60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804A5E64  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_804A5E68:
/* 804A5E68  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A5E6C  A8 81 00 0A */	lha r4, 0xa(r1)
/* 804A5E70  38 A3 5C B4 */	addi r5, r3, lit_640@l /* 0x80645CB4@l */
/* 804A5E74  38 61 00 08 */	addi r3, r1, 8
/* 804A5E78  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A5E7C  38 A0 01 C7 */	li r5, 0x1c7
/* 804A5E80  38 C0 00 2D */	li r6, 0x2d
/* 804A5E84  EC 20 10 28 */	fsubs f1, f0, f2
/* 804A5E88  4B F1 54 89 */	bl add_calc_short_angle2
/* 804A5E8C  38 7F 00 28 */	addi r3, r31, 0x28
/* 804A5E90  38 9F 00 3C */	addi r4, r31, 0x3c
/* 804A5E94  4B F1 51 F9 */	bl search_position_distanceXZ
/* 804A5E98  3C 80 80 64 */	lis r4, lit_992@ha /* 0x80645D2C@ha */
/* 804A5E9C  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A5EA0  38 A4 5D 2C */	addi r5, r4, lit_992@l /* 0x80645D2C@l */
/* 804A5EA4  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A5EA8  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A5EAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 804A5EB0  A8 81 00 08 */	lha r4, 8(r1)
/* 804A5EB4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804A5EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5EBC  40 80 00 08 */	bge lbl_804A5EC4
/* 804A5EC0  48 00 00 08 */	b lbl_804A5EC8
lbl_804A5EC4:
/* 804A5EC4  FC 20 00 90 */	fmr f1, f0
lbl_804A5EC8:
/* 804A5EC8  4B F3 7E 25 */	bl mPlib_SetParam_for_push_snowball
/* 804A5ECC  3C 80 80 64 */	lis r4, lit_783@ha /* 0x80645D0C@ha */
/* 804A5ED0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A5ED4  38 A4 5D 0C */	addi r5, r4, lit_783@l /* 0x80645D0C@l */
/* 804A5ED8  C0 43 5C 8C */	lfs f2, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A5EDC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A5EE0  7F C4 F3 78 */	mr r4, r30
/* 804A5EE4  38 60 00 00 */	li r3, 0
/* 804A5EE8  38 A0 00 01 */	li r5, 1
/* 804A5EEC  38 C0 00 00 */	li r6, 0
/* 804A5EF0  38 E0 00 01 */	li r7, 1
/* 804A5EF4  4B EE 3E AD */	bl mCoBG_BgCheckControll
/* 804A5EF8  A0 1F 00 98 */	lhz r0, 0x98(r31)
/* 804A5EFC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 804A5F00  41 82 00 80 */	beq lbl_804A5F80
/* 804A5F04  7F E3 FB 78 */	mr r3, r31
/* 804A5F08  4B F5 09 FD */	bl mRlib_Get_HitWallAngleY
/* 804A5F0C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804A5F10  7C 60 18 50 */	subf r3, r0, r3
/* 804A5F14  3C 63 00 01 */	addis r3, r3, 1
/* 804A5F18  38 03 80 00 */	addi r0, r3, -32768
/* 804A5F1C  7C 03 07 34 */	extsh r3, r0
/* 804A5F20  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 804A5F24  40 80 00 50 */	bge lbl_804A5F74
/* 804A5F28  4B F1 4B 75 */	bl cos_s
/* 804A5F2C  3C 60 80 64 */	lis r3, lit_907@ha /* 0x80645D24@ha */
/* 804A5F30  EC 3F 00 72 */	fmuls f1, f31, f1
/* 804A5F34  C0 03 5D 24 */	lfs f0, lit_907@l(r3)  /* 0x80645D24@l */
/* 804A5F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5F3C  40 81 00 38 */	ble lbl_804A5F74
/* 804A5F40  A8 7F 01 FA */	lha r3, 0x1fa(r31)
/* 804A5F44  38 03 00 01 */	addi r0, r3, 1
/* 804A5F48  B0 1F 01 FA */	sth r0, 0x1fa(r31)
/* 804A5F4C  A8 1F 01 FA */	lha r0, 0x1fa(r31)
/* 804A5F50  2C 00 00 78 */	cmpwi r0, 0x78
/* 804A5F54  40 81 00 34 */	ble lbl_804A5F88
/* 804A5F58  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A5F5C  60 00 00 04 */	ori r0, r0, 4
/* 804A5F60  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A5F64  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A5F68  60 00 00 02 */	ori r0, r0, 2
/* 804A5F6C  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A5F70  48 00 00 18 */	b lbl_804A5F88
lbl_804A5F74:
/* 804A5F74  38 00 00 00 */	li r0, 0
/* 804A5F78  B0 1F 01 FA */	sth r0, 0x1fa(r31)
/* 804A5F7C  48 00 00 0C */	b lbl_804A5F88
lbl_804A5F80:
/* 804A5F80  38 00 00 00 */	li r0, 0
/* 804A5F84  B0 1F 01 FA */	sth r0, 0x1fa(r31)
lbl_804A5F88:
/* 804A5F88  7F E3 FB 78 */	mr r3, r31
/* 804A5F8C  7F 44 D3 78 */	mr r4, r26
/* 804A5F90  4B FF DC 09 */	bl aSMAN_Make_Effect_Ground
/* 804A5F94  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A5F98  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804A5F9C  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A5FA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5FA4  40 81 00 14 */	ble lbl_804A5FB8
/* 804A5FA8  7F E3 FB 78 */	mr r3, r31
/* 804A5FAC  38 BF 00 28 */	addi r5, r31, 0x28
/* 804A5FB0  38 80 00 34 */	li r4, 0x34
/* 804A5FB4  48 18 7F 91 */	bl sAdo_OngenPos
lbl_804A5FB8:
/* 804A5FB8  7F E3 FB 78 */	mr r3, r31
/* 804A5FBC  7F 44 D3 78 */	mr r4, r26
/* 804A5FC0  4B FF E4 05 */	bl aSMAN_player_push_scroll_request
lbl_804A5FC4:
/* 804A5FC4  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 804A5FC8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804A5FCC  40 82 00 14 */	bne lbl_804A5FE0
/* 804A5FD0  7F E3 FB 78 */	mr r3, r31
/* 804A5FD4  48 00 03 D1 */	bl aSMAN_process_air_init
/* 804A5FD8  7F 43 D3 78 */	mr r3, r26
/* 804A5FDC  4B FF E2 A9 */	bl aSMAN_player_push_free
lbl_804A5FE0:
/* 804A5FE0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A5FE4  7F E3 FB 78 */	mr r3, r31
/* 804A5FE8  D0 1F 01 CC */	stfs f0, 0x1cc(r31)
/* 804A5FEC  4B FF F3 FD */	bl aSMAN_calc_scale
/* 804A5FF0  38 60 00 01 */	li r3, 1
lbl_804A5FF4:
/* 804A5FF4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804A5FF8  39 61 00 60 */	addi r11, r1, 0x60
/* 804A5FFC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804A6000  4B BF 4F 15 */	bl func_8009AF14
/* 804A6004  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804A6008  7C 08 03 A6 */	mtlr r0
/* 804A600C  38 21 00 70 */	addi r1, r1, 0x70
/* 804A6010  4E 80 00 20 */	blr 
