lbl_8042ED3C:
/* 8042ED3C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8042ED40  7C 08 02 A6 */	mflr r0
/* 8042ED44  90 01 00 94 */	stw r0, 0x94(r1)
/* 8042ED48  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8042ED4C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8042ED50  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8042ED54  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8042ED58  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8042ED5C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8042ED60  39 61 00 60 */	addi r11, r1, 0x60
/* 8042ED64  4B C6 C1 5D */	bl func_8009AEC0
/* 8042ED68  7C 7A 1B 78 */	mr r26, r3
/* 8042ED6C  7C 9B 23 78 */	mr r27, r4
/* 8042ED70  7F 44 D3 78 */	mr r4, r26
/* 8042ED74  38 60 00 08 */	li r3, 8
/* 8042ED78  4B F6 B4 ED */	bl mDemo_Check
/* 8042ED7C  2C 03 00 00 */	cmpwi r3, 0
/* 8042ED80  41 82 00 E0 */	beq lbl_8042EE60
/* 8042ED84  7F 63 DB 78 */	mr r3, r27
/* 8042ED88  4B FA A8 B9 */	bl get_player_actor_withoutCheck
/* 8042ED8C  3C 80 80 64 */	lis r4, data_806441B4@ha /* 0x806441B4@ha */
/* 8042ED90  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8042ED94  38 C4 41 B4 */	addi r6, r4, data_806441B4@l /* 0x806441B4@l */
/* 8042ED98  3C A0 80 64 */	lis r5, lit_508@ha /* 0x806441BC@ha */
/* 8042ED9C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8042EDA0  38 C5 41 BC */	addi r6, r5, lit_508@l /* 0x806441BC@l */
/* 8042EDA4  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806441C4@ha */
/* 8042EDA8  C8 86 00 00 */	lfd f4, 0(r6)
/* 8042EDAC  FC 40 28 34 */	frsqrte f2, f5
/* 8042EDB0  38 A4 41 C4 */	addi r5, r4, lit_509@l /* 0x806441C4@l */
/* 8042EDB4  C8 65 00 00 */	lfd f3, 0(r5)
/* 8042EDB8  3C 80 80 64 */	lis r4, lit_510@ha /* 0x806441CC@ha */
/* 8042EDBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042EDC0  38 A0 08 00 */	li r5, 0x800
/* 8042EDC4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8042EDC8  A0 03 00 E0 */	lhz r0, 0xe0(r3)
/* 8042EDCC  C0 04 41 CC */	lfs f0, lit_510@l(r4)  /* 0x806441CC@l */
/* 8042EDD0  38 61 00 12 */	addi r3, r1, 0x12
/* 8042EDD4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8042EDD8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8042EDDC  FC 25 00 72 */	fmul f1, f5, f1
/* 8042EDE0  A8 9A 01 74 */	lha r4, 0x174(r26)
/* 8042EDE4  38 C0 00 00 */	li r6, 0
/* 8042EDE8  FC 23 08 28 */	fsub f1, f3, f1
/* 8042EDEC  FC 42 00 72 */	fmul f2, f2, f1
/* 8042EDF0  FC 22 00 B2 */	fmul f1, f2, f2
/* 8042EDF4  FC 44 00 B2 */	fmul f2, f4, f2
/* 8042EDF8  FC 25 00 72 */	fmul f1, f5, f1
/* 8042EDFC  FC 23 08 28 */	fsub f1, f3, f1
/* 8042EE00  FC 42 00 72 */	fmul f2, f2, f1
/* 8042EE04  FC 22 00 B2 */	fmul f1, f2, f2
/* 8042EE08  FC 44 00 B2 */	fmul f2, f4, f2
/* 8042EE0C  FC 25 00 72 */	fmul f1, f5, f1
/* 8042EE10  FC 23 08 28 */	fsub f1, f3, f1
/* 8042EE14  FC 22 00 72 */	fmul f1, f2, f1
/* 8042EE18  FC 25 00 72 */	fmul f1, f5, f1
/* 8042EE1C  FC 20 08 18 */	frsp f1, f1
/* 8042EE20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8042EE24  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8042EE28  EC 20 08 28 */	fsubs f1, f0, f1
/* 8042EE2C  4B F8 C4 E5 */	bl add_calc_short_angle2
/* 8042EE30  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8042EE34  83 03 52 F0 */	lwz r24, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8042EE38  7F 03 C3 78 */	mr r3, r24
/* 8042EE3C  4B FA A8 05 */	bl get_player_actor_withoutCheck
/* 8042EE40  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 8042EE44  7F 03 C3 78 */	mr r3, r24
/* 8042EE48  38 A1 00 10 */	addi r5, r1, 0x10
/* 8042EE4C  38 80 00 00 */	li r4, 0
/* 8042EE50  38 C0 00 20 */	li r6, 0x20
/* 8042EE54  7D 89 03 A6 */	mtctr r12
/* 8042EE58  4E 80 04 21 */	bctrl 
/* 8042EE5C  48 00 01 FC */	b lbl_8042F058
lbl_8042EE60:
/* 8042EE60  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8042EE64  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8042EE68  4B F6 70 A9 */	bl chkTrigger
/* 8042EE6C  2C 03 00 00 */	cmpwi r3, 0
/* 8042EE70  41 82 01 E8 */	beq lbl_8042F058
/* 8042EE74  4B F6 95 85 */	bl mDemo_Get_talk_actor
/* 8042EE78  28 03 00 00 */	cmplwi r3, 0
/* 8042EE7C  40 82 01 DC */	bne lbl_8042F058
/* 8042EE80  3C C0 80 64 */	lis r6, lit_511@ha /* 0x806441D0@ha */
/* 8042EE84  3C 80 80 64 */	lis r4, lit_512@ha /* 0x806441D4@ha */
/* 8042EE88  3C 60 80 64 */	lis r3, lit_515@ha /* 0x806441DC@ha */
/* 8042EE8C  3C A0 80 68 */	lis r5, aMF_fossil_data_table@ha /* 0x80684C6C@ha */
/* 8042EE90  38 E6 41 D0 */	addi r7, r6, lit_511@l /* 0x806441D0@l */
/* 8042EE94  38 C4 41 D4 */	addi r6, r4, lit_512@l /* 0x806441D4@l */
/* 8042EE98  38 83 41 DC */	addi r4, r3, lit_515@l /* 0x806441DC@l */
/* 8042EE9C  3C 60 80 64 */	lis r3, lit_513@ha /* 0x806441D8@ha */
/* 8042EEA0  C3 A7 00 00 */	lfs f29, 0(r7)
/* 8042EEA4  3B C5 4C 6C */	addi r30, r5, aMF_fossil_data_table@l /* 0x80684C6C@l */
/* 8042EEA8  C3 C6 00 00 */	lfs f30, 0(r6)
/* 8042EEAC  3B 03 41 D8 */	addi r24, r3, lit_513@l /* 0x806441D8@l */
/* 8042EEB0  CB E4 00 00 */	lfd f31, 0(r4)
/* 8042EEB4  3B 80 00 00 */	li r28, 0
/* 8042EEB8  3B 20 00 00 */	li r25, 0
/* 8042EEBC  3F E0 43 30 */	lis r31, 0x4330
lbl_8042EEC0:
/* 8042EEC0  7F 83 E3 78 */	mr r3, r28
/* 8042EEC4  4B F9 85 15 */	bl func_803C73D8
/* 8042EEC8  7C BE CA 14 */	add r5, r30, r25
/* 8042EECC  7C 7D 1B 78 */	mr r29, r3
/* 8042EED0  A8 85 00 00 */	lha r4, 0(r5)
/* 8042EED4  7F 66 DB 78 */	mr r6, r27
/* 8042EED8  A8 05 00 02 */	lha r0, 2(r5)
/* 8042EEDC  38 61 00 08 */	addi r3, r1, 8
/* 8042EEE0  54 84 07 3E */	clrlwi r4, r4, 0x1c
/* 8042EEE4  93 E1 00 28 */	stw r31, 0x28(r1)
/* 8042EEE8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8042EEEC  80 A5 00 04 */	lwz r5, 4(r5)
/* 8042EEF0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8042EEF4  93 E1 00 30 */	stw r31, 0x30(r1)
/* 8042EEF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042EEFC  C0 38 00 00 */	lfs f1, 0(r24)
/* 8042EF00  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8042EF04  38 81 00 18 */	addi r4, r1, 0x18
/* 8042EF08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042EF0C  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 8042EF10  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8042EF14  EC 42 F8 28 */	fsubs f2, f2, f31
/* 8042EF18  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 8042EF1C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8042EF20  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8042EF24  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8042EF28  EC 5D 10 2A */	fadds f2, f29, f2
/* 8042EF2C  EC 1D 00 2A */	fadds f0, f29, f0
/* 8042EF30  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8042EF34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8042EF38  4B FB 7E A1 */	bl mRmTp_CheckTalkAble
/* 8042EF3C  2C 03 00 00 */	cmpwi r3, 0
/* 8042EF40  41 82 01 08 */	beq lbl_8042F048
/* 8042EF44  2C 1D 00 00 */	cmpwi r29, 0
/* 8042EF48  40 82 00 0C */	bne lbl_8042EF54
/* 8042EF4C  38 00 2F A1 */	li r0, 0x2fa1
/* 8042EF50  48 00 00 14 */	b lbl_8042EF64
lbl_8042EF54:
/* 8042EF54  20 1D 00 05 */	subfic r0, r29, 5
/* 8042EF58  7C 00 00 34 */	cntlzw r0, r0
/* 8042EF5C  54 03 D9 7E */	srwi r3, r0, 5
/* 8042EF60  38 03 2F 9F */	addi r0, r3, 0x2f9f
lbl_8042EF64:
/* 8042EF64  90 1A 01 78 */	stw r0, 0x178(r26)
/* 8042EF68  3C 60 80 43 */	lis r3, aMF_SetTalkInfo@ha /* 0x8042ECE4@ha */
/* 8042EF6C  38 A3 EC E4 */	addi r5, r3, aMF_SetTalkInfo@l /* 0x8042ECE4@l */
/* 8042EF70  7F 44 D3 78 */	mr r4, r26
/* 8042EF74  A8 01 00 08 */	lha r0, 8(r1)
/* 8042EF78  38 60 00 08 */	li r3, 8
/* 8042EF7C  B0 1A 01 74 */	sth r0, 0x174(r26)
/* 8042EF80  4B F6 B1 DD */	bl mDemo_Request
/* 8042EF84  2C 03 00 00 */	cmpwi r3, 0
/* 8042EF88  41 82 00 C0 */	beq lbl_8042F048
/* 8042EF8C  2C 1D 00 01 */	cmpwi r29, 1
/* 8042EF90  41 80 00 C8 */	blt lbl_8042F058
/* 8042EF94  2C 1D 00 05 */	cmpwi r29, 5
/* 8042EF98  41 81 00 C0 */	bgt lbl_8042F058
/* 8042EF9C  2C 1C 00 00 */	cmpwi r28, 0
/* 8042EFA0  38 00 00 00 */	li r0, 0
/* 8042EFA4  41 80 00 10 */	blt lbl_8042EFB4
/* 8042EFA8  2C 1C 00 19 */	cmpwi r28, 0x19
/* 8042EFAC  40 80 00 08 */	bge lbl_8042EFB4
/* 8042EFB0  38 00 00 01 */	li r0, 1
lbl_8042EFB4:
/* 8042EFB4  2C 00 00 00 */	cmpwi r0, 0
/* 8042EFB8  38 00 1E EC */	li r0, 0x1eec
/* 8042EFBC  41 82 00 10 */	beq lbl_8042EFCC
/* 8042EFC0  57 83 14 3A */	rlwinm r3, r28, 2, 0x10, 0x1d
/* 8042EFC4  38 03 1E EC */	addi r0, r3, 0x1eec
/* 8042EFC8  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8042EFCC:
/* 8042EFCC  3C 60 81 1D */	lis r3, item_name@ha /* 0x811CDF98@ha */
/* 8042EFD0  54 18 04 3E */	clrlwi r24, r0, 0x10
/* 8042EFD4  38 63 DF 98 */	addi r3, r3, item_name@l /* 0x811CDF98@l */
/* 8042EFD8  7F 04 C3 78 */	mr r4, r24
/* 8042EFDC  4B F8 69 C9 */	bl mIN_copy_name_str
/* 8042EFE0  7F 03 C3 78 */	mr r3, r24
/* 8042EFE4  4B F8 6B 35 */	bl mIN_get_item_article
/* 8042EFE8  7C 79 1B 78 */	mr r25, r3
/* 8042EFEC  4B F9 06 BD */	bl func_803BF6A8
/* 8042EFF0  3C 80 81 1D */	lis r4, item_name@ha /* 0x811CDF98@ha */
/* 8042EFF4  7F 27 CB 78 */	mr r7, r25
/* 8042EFF8  38 A4 DF 98 */	addi r5, r4, item_name@l /* 0x811CDF98@l */
/* 8042EFFC  38 C0 00 10 */	li r6, 0x10
/* 8042F000  38 80 00 00 */	li r4, 0
/* 8042F004  4B F9 0E 4D */	bl mMsg_Set_item_str_art
/* 8042F008  2C 1D 00 01 */	cmpwi r29, 1
/* 8042F00C  41 80 00 4C */	blt lbl_8042F058
/* 8042F010  2C 1D 00 04 */	cmpwi r29, 4
/* 8042F014  41 81 00 44 */	bgt lbl_8042F058
/* 8042F018  4B F9 06 91 */	bl func_803BF6A8
/* 8042F01C  38 1D FF FF */	addi r0, r29, -1
/* 8042F020  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8042F024  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8042F028  38 80 00 00 */	li r4, 0
/* 8042F02C  1C E0 24 40 */	mulli r7, r0, 0x2440
/* 8042F030  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 8042F034  38 C0 00 08 */	li r6, 8
/* 8042F038  7C A0 3A 14 */	add r5, r0, r7
/* 8042F03C  38 A5 00 20 */	addi r5, r5, 0x20
/* 8042F040  4B F9 0C 15 */	bl mMsg_Set_free_str
/* 8042F044  48 00 00 14 */	b lbl_8042F058
lbl_8042F048:
/* 8042F048  3B 9C 00 01 */	addi r28, r28, 1
/* 8042F04C  3B 39 00 08 */	addi r25, r25, 8
/* 8042F050  2C 1C 00 19 */	cmpwi r28, 0x19
/* 8042F054  41 80 FE 6C */	blt lbl_8042EEC0
lbl_8042F058:
/* 8042F058  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8042F05C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8042F060  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8042F064  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8042F068  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8042F06C  39 61 00 60 */	addi r11, r1, 0x60
/* 8042F070  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8042F074  4B C6 BE 99 */	bl func_8009AF0C
/* 8042F078  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8042F07C  7C 08 03 A6 */	mtlr r0
/* 8042F080  38 21 00 90 */	addi r1, r1, 0x90
/* 8042F084  4E 80 00 20 */	blr 
