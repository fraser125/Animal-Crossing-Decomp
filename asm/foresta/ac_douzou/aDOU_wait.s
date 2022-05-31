lbl_805ADEBC:
/* 805ADEBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805ADEC0  7C 08 02 A6 */	mflr r0
/* 805ADEC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805ADEC8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805ADECC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805ADED0  39 61 00 40 */	addi r11, r1, 0x40
/* 805ADED4  4B AE CF FD */	bl func_8009AED0
/* 805ADED8  7C 7E 1B 78 */	mr r30, r3
/* 805ADEDC  7C 83 23 78 */	mr r3, r4
/* 805ADEE0  4B E2 B7 61 */	bl get_player_actor_withoutCheck
/* 805ADEE4  7C 7F 1B 78 */	mr r31, r3
/* 805ADEE8  7F C4 F3 78 */	mr r4, r30
/* 805ADEEC  38 60 00 08 */	li r3, 8
/* 805ADEF0  4B DE C3 75 */	bl mDemo_Check
/* 805ADEF4  2C 03 00 01 */	cmpwi r3, 1
/* 805ADEF8  40 82 00 C8 */	bne lbl_805ADFC0
/* 805ADEFC  83 9E 02 C0 */	lwz r28, 0x2c0(r30)
/* 805ADF00  38 61 00 20 */	addi r3, r1, 0x20
/* 805ADF04  38 9E 00 28 */	addi r4, r30, 0x28
/* 805ADF08  4B E0 CF B5 */	bl xyz_t_move
/* 805ADF0C  3C 80 80 6C */	lis r4, xpostbl@ha /* 0x806C4E24@ha */
/* 805ADF10  3C 60 80 6C */	lis r3, zpostbl@ha /* 0x806C4E14@ha */
/* 805ADF14  57 80 10 3A */	slwi r0, r28, 2
/* 805ADF18  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 805ADF1C  38 84 4E 24 */	addi r4, r4, xpostbl@l /* 0x806C4E24@l */
/* 805ADF20  38 A3 4E 14 */	addi r5, r3, zpostbl@l /* 0x806C4E14@l */
/* 805ADF24  7C 44 04 2E */	lfsx f2, r4, r0
/* 805ADF28  38 7F 00 28 */	addi r3, r31, 0x28
/* 805ADF2C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 805ADF30  38 81 00 20 */	addi r4, r1, 0x20
/* 805ADF34  7C 05 04 2E */	lfsx f0, r5, r0
/* 805ADF38  EC 43 10 2A */	fadds f2, f3, f2
/* 805ADF3C  EC 01 00 2A */	fadds f0, f1, f0
/* 805ADF40  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805ADF44  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805ADF48  4B E0 D1 E9 */	bl search_position_angleY
/* 805ADF4C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805ADF50  3C 80 80 65 */	lis r4, lit_620@ha /* 0x8064A6EC@ha */
/* 805ADF54  38 A4 A6 EC */	addi r5, r4, lit_620@l /* 0x8064A6EC@l */
/* 805ADF58  7C 66 1B 78 */	mr r6, r3
/* 805ADF5C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805ADF60  7C C4 33 78 */	mr r4, r6
/* 805ADF64  B0 01 00 08 */	sth r0, 8(r1)
/* 805ADF68  38 61 00 08 */	addi r3, r1, 8
/* 805ADF6C  38 A0 10 00 */	li r5, 0x1000
/* 805ADF70  38 C0 00 00 */	li r6, 0
/* 805ADF74  4B E0 D3 9D */	bl add_calc_short_angle2
/* 805ADF78  A8 9F 00 DC */	lha r4, 0xdc(r31)
/* 805ADF7C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805ADF80  A8 01 00 08 */	lha r0, 8(r1)
/* 805ADF84  B0 81 00 0C */	sth r4, 0xc(r1)
/* 805ADF88  83 A3 52 F0 */	lwz r29, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805ADF8C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 805ADF90  7F A3 EB 78 */	mr r3, r29
/* 805ADF94  A8 1F 00 E0 */	lha r0, 0xe0(r31)
/* 805ADF98  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805ADF9C  4B E2 B6 A5 */	bl get_player_actor_withoutCheck
/* 805ADFA0  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 805ADFA4  7F A3 EB 78 */	mr r3, r29
/* 805ADFA8  38 A1 00 0C */	addi r5, r1, 0xc
/* 805ADFAC  38 80 00 00 */	li r4, 0
/* 805ADFB0  38 C0 00 20 */	li r6, 0x20
/* 805ADFB4  7D 89 03 A6 */	mtctr r12
/* 805ADFB8  4E 80 04 21 */	bctrl 
/* 805ADFBC  48 00 01 2C */	b lbl_805AE0E8
lbl_805ADFC0:
/* 805ADFC0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805ADFC4  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805ADFC8  4B DE 7F 49 */	bl chkTrigger
/* 805ADFCC  2C 03 00 00 */	cmpwi r3, 0
/* 805ADFD0  41 82 01 18 */	beq lbl_805AE0E8
/* 805ADFD4  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 805ADFD8  7C 60 07 35 */	extsh. r0, r3
/* 805ADFDC  7C 03 00 D0 */	neg r0, r3
/* 805ADFE0  41 80 00 08 */	blt lbl_805ADFE8
/* 805ADFE4  7C 60 1B 78 */	mr r0, r3
lbl_805ADFE8:
/* 805ADFE8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 805ADFEC  41 80 00 FC */	blt lbl_805AE0E8
/* 805ADFF0  4B DE A4 09 */	bl mDemo_Get_talk_actor
/* 805ADFF4  28 03 00 00 */	cmplwi r3, 0
/* 805ADFF8  40 82 00 F0 */	bne lbl_805AE0E8
/* 805ADFFC  38 61 00 14 */	addi r3, r1, 0x14
/* 805AE000  38 9E 00 28 */	addi r4, r30, 0x28
/* 805AE004  4B E0 CE B9 */	bl xyz_t_move
/* 805AE008  3B 80 00 00 */	li r28, 0
/* 805AE00C  7F 9D E3 78 */	mr r29, r28
lbl_805AE010:
/* 805AE010  7F 83 E3 78 */	mr r3, r28
/* 805AE014  4B FF F7 0D */	bl func_805AD720
/* 805AE018  2C 03 00 00 */	cmpwi r3, 0
/* 805AE01C  41 82 00 BC */	beq lbl_805AE0D8
/* 805AE020  3C 80 80 6C */	lis r4, xpostbl@ha /* 0x806C4E24@ha */
/* 805AE024  3C 60 80 6C */	lis r3, zpostbl@ha /* 0x806C4E14@ha */
/* 805AE028  38 A4 4E 24 */	addi r5, r4, xpostbl@l /* 0x806C4E24@l */
/* 805AE02C  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805AE030  38 83 4E 14 */	addi r4, r3, zpostbl@l /* 0x806C4E14@l */
/* 805AE034  7C 45 EC 2E */	lfsx f2, r5, r29
/* 805AE038  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805AE03C  38 7F 00 28 */	addi r3, r31, 0x28
/* 805AE040  7C 04 EC 2E */	lfsx f0, r4, r29
/* 805AE044  EC 43 10 2A */	fadds f2, f3, f2
/* 805AE048  38 81 00 20 */	addi r4, r1, 0x20
/* 805AE04C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AE050  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805AE054  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805AE058  4B E0 D0 35 */	bl search_position_distanceXZ
/* 805AE05C  FF E0 08 90 */	fmr f31, f1
/* 805AE060  38 61 00 20 */	addi r3, r1, 0x20
/* 805AE064  38 9F 00 28 */	addi r4, r31, 0x28
/* 805AE068  4B E0 D0 C9 */	bl search_position_angleY
/* 805AE06C  3C 80 80 65 */	lis r4, lit_621@ha /* 0x8064A6F0@ha */
/* 805AE070  B0 61 00 08 */	sth r3, 8(r1)
/* 805AE074  C0 04 A6 F0 */	lfs f0, lit_621@l(r4)  /* 0x8064A6F0@l */
/* 805AE078  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805AE07C  41 81 00 5C */	bgt lbl_805AE0D8
/* 805AE080  7C 63 07 35 */	extsh. r3, r3
/* 805AE084  7C 03 00 D0 */	neg r0, r3
/* 805AE088  41 80 00 08 */	blt lbl_805AE090
/* 805AE08C  7C 60 1B 78 */	mr r0, r3
lbl_805AE090:
/* 805AE090  2C 00 18 00 */	cmpwi r0, 0x1800
/* 805AE094  41 81 00 44 */	bgt lbl_805AE0D8
/* 805AE098  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AE09C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AE0A0  3C 63 00 03 */	addis r3, r3, 3
/* 805AE0A4  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 805AE0A8  28 00 00 01 */	cmplwi r0, 1
/* 805AE0AC  40 82 00 10 */	bne lbl_805AE0BC
/* 805AE0B0  38 00 00 04 */	li r0, 4
/* 805AE0B4  98 03 88 69 */	stb r0, -0x7797(r3)
/* 805AE0B8  48 00 00 30 */	b lbl_805AE0E8
lbl_805AE0BC:
/* 805AE0BC  3C 60 80 5B */	lis r3, aDOU_set_talk_info@ha /* 0x805ADDE8@ha */
/* 805AE0C0  93 9E 02 C0 */	stw r28, 0x2c0(r30)
/* 805AE0C4  38 A3 DD E8 */	addi r5, r3, aDOU_set_talk_info@l /* 0x805ADDE8@l */
/* 805AE0C8  7F C4 F3 78 */	mr r4, r30
/* 805AE0CC  38 60 00 08 */	li r3, 8
/* 805AE0D0  4B DE C0 8D */	bl mDemo_Request
/* 805AE0D4  48 00 00 14 */	b lbl_805AE0E8
lbl_805AE0D8:
/* 805AE0D8  3B 9C 00 01 */	addi r28, r28, 1
/* 805AE0DC  3B BD 00 04 */	addi r29, r29, 4
/* 805AE0E0  2C 1C 00 04 */	cmpwi r28, 4
/* 805AE0E4  41 80 FF 2C */	blt lbl_805AE010
lbl_805AE0E8:
/* 805AE0E8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805AE0EC  39 61 00 40 */	addi r11, r1, 0x40
/* 805AE0F0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805AE0F4  4B AE CE 29 */	bl func_8009AF1C
/* 805AE0F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AE0FC  7C 08 03 A6 */	mtlr r0
/* 805AE100  38 21 00 50 */	addi r1, r1, 0x50
/* 805AE104  4E 80 00 20 */	blr 
