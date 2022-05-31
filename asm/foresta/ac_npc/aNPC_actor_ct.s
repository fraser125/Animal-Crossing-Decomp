lbl_80538CAC:
/* 80538CAC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80538CB0  7C 08 02 A6 */	mflr r0
/* 80538CB4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80538CB8  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80538CBC  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80538CC0  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80538CC4  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80538CC8  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80538CCC  4B B6 21 F1 */	bl func_8009AEBC
/* 80538CD0  A0 03 00 06 */	lhz r0, 6(r3)
/* 80538CD4  7C 7C 1B 78 */	mr r28, r3
/* 80538CD8  7C 99 23 78 */	mr r25, r4
/* 80538CDC  7C BA 2B 78 */	mr r26, r5
/* 80538CE0  54 1F A7 3E */	rlwinm r31, r0, 0x14, 0x1c, 0x1f
/* 80538CE4  7C 1E 03 78 */	mr r30, r0
/* 80538CE8  2C 1F 00 0E */	cmpwi r31, 0xe
/* 80538CEC  7C 1D 03 78 */	mr r29, r0
/* 80538CF0  41 82 00 28 */	beq lbl_80538D18
/* 80538CF4  2C 1F 00 0D */	cmpwi r31, 0xd
/* 80538CF8  41 82 00 20 */	beq lbl_80538D18
/* 80538CFC  4B E3 B7 45 */	bl Actor_delete
/* 80538D00  38 00 00 00 */	li r0, 0
/* 80538D04  7F 83 E3 78 */	mr r3, r28
/* 80538D08  90 1C 01 6C */	stw r0, 0x16c(r28)
/* 80538D0C  90 1C 01 60 */	stw r0, 0x160(r28)
/* 80538D10  4B E9 74 39 */	bl mNpc_RenewalSetNpc
/* 80538D14  48 00 04 DC */	b lbl_805391F0
lbl_80538D18:
/* 80538D18  7F C4 F3 78 */	mr r4, r30
/* 80538D1C  38 61 00 20 */	addi r3, r1, 0x20
/* 80538D20  48 00 13 7D */	bl aNPC_dma_draw_data_proc
/* 80538D24  38 7C 07 78 */	addi r3, r28, 0x778
/* 80538D28  38 81 00 28 */	addi r4, r1, 0x28
/* 80538D2C  38 A0 00 4C */	li r5, 0x4c
/* 80538D30  4B E8 1C F5 */	bl func_803BAA24
/* 80538D34  A8 01 00 20 */	lha r0, 0x20(r1)
/* 80538D38  B0 1C 07 60 */	sth r0, 0x760(r28)
/* 80538D3C  A8 01 00 22 */	lha r0, 0x22(r1)
/* 80538D40  B0 1C 07 62 */	sth r0, 0x762(r28)
/* 80538D44  80 01 00 78 */	lwz r0, 0x78(r1)
/* 80538D48  98 1C 09 70 */	stb r0, 0x970(r28)
/* 80538D4C  88 01 00 7C */	lbz r0, 0x7c(r1)
/* 80538D50  98 1C 07 44 */	stb r0, 0x744(r28)
/* 80538D54  80 7C 01 7C */	lwz r3, 0x17c(r28)
/* 80538D58  28 03 00 00 */	cmplwi r3, 0
/* 80538D5C  41 82 00 10 */	beq lbl_80538D6C
/* 80538D60  88 03 08 EC */	lbz r0, 0x8ec(r3)
/* 80538D64  98 1C 08 9F */	stb r0, 0x89f(r28)
/* 80538D68  48 00 00 0C */	b lbl_80538D74
lbl_80538D6C:
/* 80538D6C  88 01 00 7D */	lbz r0, 0x7d(r1)
/* 80538D70  98 1C 08 9F */	stb r0, 0x89f(r28)
lbl_80538D74:
/* 80538D74  A8 A1 00 88 */	lha r5, 0x88(r1)
/* 80538D78  2C 05 FF FF */	cmpwi r5, -1
/* 80538D7C  41 82 00 14 */	beq lbl_80538D90
/* 80538D80  A8 C1 00 8A */	lha r6, 0x8a(r1)
/* 80538D84  7F 83 E3 78 */	mr r3, r28
/* 80538D88  7F 24 CB 78 */	mr r4, r25
/* 80538D8C  4B FF FC F9 */	bl func_80538A84
lbl_80538D90:
/* 80538D90  88 81 00 7E */	lbz r4, 0x7e(r1)
/* 80538D94  3C 00 43 30 */	lis r0, 0x4330
/* 80538D98  3C 60 80 65 */	lis r3, lit_923@ha /* 0x8064928C@ha */
/* 80538D9C  90 01 00 90 */	stw r0, 0x90(r1)
/* 80538DA0  C8 23 92 8C */	lfd f1, lit_923@l(r3)  /* 0x8064928C@l */
/* 80538DA4  38 7C 01 A8 */	addi r3, r28, 0x1a8
/* 80538DA8  90 81 00 94 */	stw r4, 0x94(r1)
/* 80538DAC  38 DC 02 18 */	addi r6, r28, 0x218
/* 80538DB0  82 E1 00 24 */	lwz r23, 0x24(r1)
/* 80538DB4  38 FC 02 BA */	addi r7, r28, 0x2ba
/* 80538DB8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80538DBC  38 A0 00 00 */	li r5, 0
/* 80538DC0  C3 E1 00 74 */	lfs f31, 0x74(r1)
/* 80538DC4  7E E4 BB 78 */	mr r4, r23
/* 80538DC8  EF C0 08 28 */	fsubs f30, f0, f1
/* 80538DCC  4B E3 7C C9 */	bl cKF_SkeletonInfo_R_ct
/* 80538DD0  7E E4 BB 78 */	mr r4, r23
/* 80538DD4  38 7C 03 64 */	addi r3, r28, 0x364
/* 80538DD8  38 DC 03 D4 */	addi r6, r28, 0x3d4
/* 80538DDC  38 FC 04 76 */	addi r7, r28, 0x476
/* 80538DE0  38 A0 00 00 */	li r5, 0
/* 80538DE4  4B E3 7C B1 */	bl cKF_SkeletonInfo_R_ct
/* 80538DE8  7E E4 BB 78 */	mr r4, r23
/* 80538DEC  38 7C 05 20 */	addi r3, r28, 0x520
/* 80538DF0  38 DC 05 90 */	addi r6, r28, 0x590
/* 80538DF4  38 FC 06 32 */	addi r7, r28, 0x632
/* 80538DF8  38 A0 00 00 */	li r5, 0
/* 80538DFC  4B E3 7C 99 */	bl cKF_SkeletonInfo_R_ct
/* 80538E00  3C A0 80 65 */	lis r5, data_80649274@ha /* 0x80649274@ha */
/* 80538E04  3C 80 80 65 */	lis r4, lit_4712@ha /* 0x80649354@ha */
/* 80538E08  39 05 92 74 */	addi r8, r5, data_80649274@l /* 0x80649274@l */
/* 80538E0C  3C 60 80 65 */	lis r3, lit_4713@ha /* 0x80649358@ha */
/* 80538E10  38 A3 93 58 */	addi r5, r3, lit_4713@l /* 0x80649358@l */
/* 80538E14  38 C4 93 54 */	addi r6, r4, lit_4712@l /* 0x80649354@l */
/* 80538E18  3C E0 80 37 */	lis r7, mAc_ActorShadowEllipse@ha /* 0x80376F88@ha */
/* 80538E1C  C0 28 00 00 */	lfs f1, 0(r8)
/* 80538E20  C0 46 00 00 */	lfs f2, 0(r6)
/* 80538E24  38 87 6F 88 */	addi r4, r7, mAc_ActorShadowEllipse@l /* 0x80376F88@l */
/* 80538E28  C0 65 00 00 */	lfs f3, 0(r5)
/* 80538E2C  7F 83 E3 78 */	mr r3, r28
/* 80538E30  4B E3 B5 C1 */	bl Shape_Info_init
/* 80538E34  3C 60 80 65 */	lis r3, lit_1025@ha /* 0x806492A0@ha */
/* 80538E38  3B 7C 09 38 */	addi r27, r28, 0x938
/* 80538E3C  38 83 92 A0 */	addi r4, r3, lit_1025@l /* 0x806492A0@l */
/* 80538E40  7F 23 CB 78 */	mr r3, r25
/* 80538E44  C0 04 00 00 */	lfs f0, 0(r4)
/* 80538E48  7F 64 DB 78 */	mr r4, r27
/* 80538E4C  D0 1C 00 E4 */	stfs f0, 0xe4(r28)
/* 80538E50  4B E5 B7 C9 */	bl ClObjPipe_ct
/* 80538E54  3C 80 80 6A */	lis r4, aNPC_CoInfoData@ha /* 0x806A1C5C@ha */
/* 80538E58  7F 23 CB 78 */	mr r3, r25
/* 80538E5C  38 C4 1C 5C */	addi r6, r4, aNPC_CoInfoData@l /* 0x806A1C5C@l */
/* 80538E60  7F 85 E3 78 */	mr r5, r28
/* 80538E64  7F 64 DB 78 */	mr r4, r27
/* 80538E68  4B E5 B8 49 */	bl ClObjPipe_set5
/* 80538E6C  3C 80 80 6A */	lis r4, aNPC_StatusData@ha /* 0x806A1C6C@ha */
/* 80538E70  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 80538E74  38 84 1C 6C */	addi r4, r4, aNPC_StatusData@l /* 0x806A1C6C@l */
/* 80538E78  4B E5 CB 51 */	bl CollisionCheck_Status_set3
/* 80538E7C  A8 01 00 84 */	lha r0, 0x84(r1)
/* 80538E80  3D 40 43 30 */	lis r10, 0x4330
/* 80538E84  3C 80 80 65 */	lis r4, lit_4714@ha /* 0x8064935C@ha */
/* 80538E88  3C 60 80 65 */	lis r3, lit_818@ha /* 0x80649284@ha */
/* 80538E8C  B0 1B 00 0E */	sth r0, 0xe(r27)
/* 80538E90  38 E4 93 5C */	addi r7, r4, lit_4714@l /* 0x8064935C@l */
/* 80538E94  38 C3 92 84 */	addi r6, r3, lit_818@l /* 0x80649284@l */
/* 80538E98  3C 60 80 65 */	lis r3, lit_802@ha /* 0x80649278@ha */
/* 80538E9C  A8 01 00 86 */	lha r0, 0x86(r1)
/* 80538EA0  39 63 92 78 */	addi r11, r3, lit_802@l /* 0x80649278@l */
/* 80538EA4  3C 80 80 65 */	lis r4, lit_1492@ha /* 0x806492B0@ha */
/* 80538EA8  3C 60 80 65 */	lis r3, lit_4715@ha /* 0x80649360@ha */
/* 80538EAC  B0 1B 00 10 */	sth r0, 0x10(r27)
/* 80538EB0  39 84 92 B0 */	addi r12, r4, lit_1492@l /* 0x806492B0@l */
/* 80538EB4  39 23 93 60 */	addi r9, r3, lit_4715@l /* 0x80649360@l */
/* 80538EB8  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064927C@ha */
/* 80538EBC  80 1A 00 00 */	lwz r0, 0(r26)
/* 80538EC0  38 A3 92 7C */	addi r5, r3, lit_803@l /* 0x8064927C@l */
/* 80538EC4  3A E0 00 F6 */	li r23, 0xf6
/* 80538EC8  38 80 00 FF */	li r4, 0xff
/* 80538ECC  90 1C 08 E8 */	stw r0, 0x8e8(r28)
/* 80538ED0  38 60 FF FF */	li r3, -1
/* 80538ED4  38 00 00 00 */	li r0, 0
/* 80538ED8  C0 47 00 00 */	lfs f2, 0(r7)
/* 80538EDC  80 FA 00 04 */	lwz r7, 4(r26)
/* 80538EE0  3B 00 00 03 */	li r24, 3
/* 80538EE4  3B 60 00 07 */	li r27, 7
/* 80538EE8  3B 20 00 08 */	li r25, 8
/* 80538EEC  90 FC 08 EC */	stw r7, 0x8ec(r28)
/* 80538EF0  39 00 00 01 */	li r8, 1
/* 80538EF4  C8 66 00 00 */	lfd f3, 0(r6)
/* 80538EF8  38 E0 02 00 */	li r7, 0x200
/* 80538EFC  92 FC 07 14 */	stw r23, 0x714(r28)
/* 80538F00  38 C0 04 00 */	li r6, 0x400
/* 80538F04  C0 8B 00 00 */	lfs f4, 0(r11)
/* 80538F08  B0 9C 07 54 */	sth r4, 0x754(r28)
/* 80538F0C  C0 AC 00 00 */	lfs f5, 0(r12)
/* 80538F10  B0 7C 07 56 */	sth r3, 0x756(r28)
/* 80538F14  C0 29 00 00 */	lfs f1, 0(r9)
/* 80538F18  98 1C 07 52 */	stb r0, 0x752(r28)
/* 80538F1C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80538F20  D0 5C 09 54 */	stfs f2, 0x954(r28)
/* 80538F24  9B 1C 09 59 */	stb r24, 0x959(r28)
/* 80538F28  D3 DC 08 2C */	stfs f30, 0x82c(r28)
/* 80538F2C  98 9C 07 F5 */	stb r4, 0x7f5(r28)
/* 80538F30  9B 7C 08 80 */	stb r27, 0x880(r28)
/* 80538F34  98 7C 03 60 */	stb r3, 0x360(r28)
/* 80538F38  98 7C 05 1C */	stb r3, 0x51c(r28)
/* 80538F3C  98 7C 06 D8 */	stb r3, 0x6d8(r28)
/* 80538F40  98 1C 07 51 */	stb r0, 0x751(r28)
/* 80538F44  80 BA 00 0C */	lwz r5, 0xc(r26)
/* 80538F48  91 41 00 98 */	stw r10, 0x98(r1)
/* 80538F4C  90 BC 09 64 */	stw r5, 0x964(r28)
/* 80538F50  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 80538F54  91 41 00 A0 */	stw r10, 0xa0(r1)
/* 80538F58  90 BC 09 68 */	stw r5, 0x968(r28)
/* 80538F5C  80 BA 00 14 */	lwz r5, 0x14(r26)
/* 80538F60  90 BC 09 6C */	stw r5, 0x96c(r28)
/* 80538F64  B0 7C 09 74 */	sth r3, 0x974(r28)
/* 80538F68  B0 7C 09 76 */	sth r3, 0x976(r28)
/* 80538F6C  9B 3C 09 71 */	stb r25, 0x971(r28)
/* 80538F70  98 1C 09 73 */	stb r0, 0x973(r28)
/* 80538F74  98 9C 07 DC */	stb r4, 0x7dc(r28)
/* 80538F78  88 BC 00 08 */	lbz r5, 8(r28)
/* 80538F7C  7C A5 07 74 */	extsb r5, r5
/* 80538F80  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80538F84  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 80538F88  C8 41 00 98 */	lfd f2, 0x98(r1)
/* 80538F8C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80538F90  EC 44 10 2A */	fadds f2, f4, f2
/* 80538F94  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80538F98  D0 5C 09 18 */	stfs f2, 0x918(r28)
/* 80538F9C  88 BC 00 09 */	lbz r5, 9(r28)
/* 80538FA0  7C A5 07 74 */	extsb r5, r5
/* 80538FA4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80538FA8  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 80538FAC  C8 41 00 A0 */	lfd f2, 0xa0(r1)
/* 80538FB0  EC 42 18 28 */	fsubs f2, f2, f3
/* 80538FB4  EC 44 10 2A */	fadds f2, f4, f2
/* 80538FB8  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80538FBC  D0 5C 09 1C */	stfs f2, 0x91c(r28)
/* 80538FC0  D0 3C 09 20 */	stfs f1, 0x920(r28)
/* 80538FC4  98 7C 09 30 */	stb r3, 0x930(r28)
/* 80538FC8  98 7C 09 31 */	stb r3, 0x931(r28)
/* 80538FCC  98 9C 07 F5 */	stb r4, 0x7f5(r28)
/* 80538FD0  98 1C 07 FD */	stb r0, 0x7fd(r28)
/* 80538FD4  90 7C 07 CC */	stw r3, 0x7cc(r28)
/* 80538FD8  99 1C 07 D0 */	stb r8, 0x7d0(r28)
/* 80538FDC  98 9C 09 7C */	stb r4, 0x97c(r28)
/* 80538FE0  99 1C 09 7D */	stb r8, 0x97d(r28)
/* 80538FE4  B0 FC 08 B8 */	sth r7, 0x8b8(r28)
/* 80538FE8  B0 DC 08 BA */	sth r6, 0x8ba(r28)
/* 80538FEC  D0 1C 07 68 */	stfs f0, 0x768(r28)
/* 80538FF0  4B E6 1E C9 */	bl mEv_CheckTitleDemo
/* 80538FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80538FF8  40 81 00 0C */	ble lbl_80539004
/* 80538FFC  38 00 00 00 */	li r0, 0
/* 80539000  98 1C 00 D6 */	stb r0, 0xd6(r28)
lbl_80539004:
/* 80539004  38 7C 08 D0 */	addi r3, r28, 0x8d0
/* 80539008  38 9C 00 28 */	addi r4, r28, 0x28
/* 8053900C  4B E8 1E B1 */	bl xyz_t_move
/* 80539010  38 7C 08 DC */	addi r3, r28, 0x8dc
/* 80539014  38 9C 00 28 */	addi r4, r28, 0x28
/* 80539018  4B E8 1E A5 */	bl xyz_t_move
/* 8053901C  7F 83 E3 78 */	mr r3, r28
/* 80539020  38 80 00 01 */	li r4, 1
/* 80539024  4B FF EC BD */	bl aNPC_set_hide_flg
/* 80539028  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8053902C  40 82 00 88 */	bne lbl_805390B4
/* 80539030  82 FC 01 7C */	lwz r23, 0x17c(r28)
/* 80539034  A0 17 08 E4 */	lhz r0, 0x8e4(r23)
/* 80539038  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8053903C  7C 18 03 78 */	mr r24, r0
/* 80539040  40 82 00 0C */	bne lbl_8053904C
/* 80539044  8B 37 08 EB */	lbz r25, 0x8eb(r23)
/* 80539048  48 00 00 08 */	b lbl_80539050
lbl_8053904C:
/* 8053904C  3B 20 00 FF */	li r25, 0xff
lbl_80539050:
/* 80539050  7F 83 E3 78 */	mr r3, r28
/* 80539054  7F 04 C3 78 */	mr r4, r24
/* 80539058  7F 25 CB 78 */	mr r5, r25
/* 8053905C  4B FF 37 C1 */	bl aNPC_setup_next_cloth
/* 80539060  7F 83 E3 78 */	mr r3, r28
/* 80539064  7F 04 C3 78 */	mr r4, r24
/* 80539068  7F 25 CB 78 */	mr r5, r25
/* 8053906C  4B FF 37 A5 */	bl aNPC_setup_chg_cloth
/* 80539070  88 97 08 E3 */	lbz r4, 0x8e3(r23)
/* 80539074  3C 60 80 53 */	lis r3, aNPC_talk_end_check@ha /* 0x80533170@ha */
/* 80539078  38 03 31 70 */	addi r0, r3, aNPC_talk_end_check@l /* 0x80533170@l */
/* 8053907C  7F 83 E3 78 */	mr r3, r28
/* 80539080  1C 84 0E 10 */	mulli r4, r4, 0xe10
/* 80539084  90 9C 08 38 */	stw r4, 0x838(r28)
/* 80539088  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 8053908C  4B FF FB 3D */	bl aNPC_set_start_pos
/* 80539090  7F 83 E3 78 */	mr r3, r28
/* 80539094  4B FF FA 85 */	bl aNPC_setP_friendship
/* 80539098  7F 83 E3 78 */	mr r3, r28
/* 8053909C  4B FF FA F5 */	bl aNPC_check_force_use_umbrella
/* 805390A0  A0 01 00 82 */	lhz r0, 0x82(r1)
/* 805390A4  B0 1C 09 78 */	sth r0, 0x978(r28)
/* 805390A8  A0 01 00 82 */	lhz r0, 0x82(r1)
/* 805390AC  B0 1C 09 7A */	sth r0, 0x97a(r28)
/* 805390B0  48 00 00 90 */	b lbl_80539140
lbl_805390B4:
/* 805390B4  7F C3 F3 78 */	mr r3, r30
/* 805390B8  4B E9 5B 31 */	bl mNpc_GetSameEventNpc
/* 805390BC  28 03 00 00 */	cmplwi r3, 0
/* 805390C0  41 82 00 30 */	beq lbl_805390F0
/* 805390C4  A0 83 00 02 */	lhz r4, 2(r3)
/* 805390C8  38 A0 00 01 */	li r5, 1
/* 805390CC  A3 A3 00 04 */	lhz r29, 4(r3)
/* 805390D0  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 805390D4  90 7C 01 88 */	stw r3, 0x188(r28)
/* 805390D8  2C 00 00 0E */	cmpwi r0, 0xe
/* 805390DC  98 A3 00 08 */	stb r5, 8(r3)
/* 805390E0  40 82 00 48 */	bne lbl_80539128
/* 805390E4  38 61 00 20 */	addi r3, r1, 0x20
/* 805390E8  48 00 0F B5 */	bl aNPC_dma_draw_data_proc
/* 805390EC  48 00 00 3C */	b lbl_80539128
lbl_805390F0:
/* 805390F0  7F C3 F3 78 */	mr r3, r30
/* 805390F4  4B E9 5D 31 */	bl mNpc_GetSameMaskNpc
/* 805390F8  28 03 00 00 */	cmplwi r3, 0
/* 805390FC  41 82 00 2C */	beq lbl_80539128
/* 80539100  A0 83 00 02 */	lhz r4, 2(r3)
/* 80539104  38 A0 00 01 */	li r5, 1
/* 80539108  90 7C 01 8C */	stw r3, 0x18c(r28)
/* 8053910C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80539110  2C 00 00 0E */	cmpwi r0, 0xe
/* 80539114  7C 9D 23 78 */	mr r29, r4
/* 80539118  98 A3 00 06 */	stb r5, 6(r3)
/* 8053911C  40 82 00 0C */	bne lbl_80539128
/* 80539120  38 61 00 20 */	addi r3, r1, 0x20
/* 80539124  48 00 0F 79 */	bl aNPC_dma_draw_data_proc
lbl_80539128:
/* 80539128  A0 61 00 82 */	lhz r3, 0x82(r1)
/* 8053912C  38 00 00 01 */	li r0, 1
/* 80539130  B0 7C 09 78 */	sth r3, 0x978(r28)
/* 80539134  A0 61 00 82 */	lhz r3, 0x82(r1)
/* 80539138  B0 7C 09 7A */	sth r3, 0x97a(r28)
/* 8053913C  98 1C 08 9E */	stb r0, 0x89e(r28)
lbl_80539140:
/* 80539140  3C 80 80 65 */	lis r4, lit_4716@ha /* 0x80649364@ha */
/* 80539144  3C 60 80 65 */	lis r3, lit_4717@ha /* 0x80649368@ha */
/* 80539148  B3 BC 01 90 */	sth r29, 0x190(r28)
/* 8053914C  C0 24 93 64 */	lfs f1, lit_4716@l(r4)  /* 0x80649364@l */
/* 80539150  C0 03 93 68 */	lfs f0, lit_4717@l(r3)  /* 0x80649368@l */
/* 80539154  38 61 00 14 */	addi r3, r1, 0x14
/* 80539158  D0 3C 00 7C */	stfs f1, 0x7c(r28)
/* 8053915C  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 80539160  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 80539164  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80539168  90 81 00 14 */	stw r4, 0x14(r1)
/* 8053916C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80539170  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80539174  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80539178  4B E6 E2 B9 */	bl mFI_GetUnitFG
/* 8053917C  28 03 00 00 */	cmplwi r3, 0
/* 80539180  41 82 00 48 */	beq lbl_805391C8
/* 80539184  A0 03 00 00 */	lhz r0, 0(r3)
/* 80539188  28 00 00 11 */	cmplwi r0, 0x11
/* 8053918C  41 80 00 0C */	blt lbl_80539198
/* 80539190  28 00 00 29 */	cmplwi r0, 0x29
/* 80539194  40 81 00 0C */	ble lbl_805391A0
lbl_80539198:
/* 80539198  28 00 00 5D */	cmplwi r0, 0x5d
/* 8053919C  40 82 00 2C */	bne lbl_805391C8
lbl_805391A0:
/* 805391A0  80 DC 00 28 */	lwz r6, 0x28(r28)
/* 805391A4  38 81 00 08 */	addi r4, r1, 8
/* 805391A8  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 805391AC  38 60 00 00 */	li r3, 0
/* 805391B0  38 A0 00 01 */	li r5, 1
/* 805391B4  90 C1 00 08 */	stw r6, 8(r1)
/* 805391B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805391BC  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 805391C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805391C4  4B E6 E6 6D */	bl mFI_SetFG_common
lbl_805391C8:
/* 805391C8  D3 FC 00 5C */	stfs f31, 0x5c(r28)
/* 805391CC  38 00 00 01 */	li r0, 1
/* 805391D0  D3 FC 00 60 */	stfs f31, 0x60(r28)
/* 805391D4  D3 FC 00 64 */	stfs f31, 0x64(r28)
/* 805391D8  98 1C 00 B4 */	stb r0, 0xb4(r28)
/* 805391DC  80 9A 00 08 */	lwz r4, 8(r26)
/* 805391E0  2C 04 00 00 */	cmpwi r4, 0
/* 805391E4  41 82 00 0C */	beq lbl_805391F0
/* 805391E8  7F 83 E3 78 */	mr r3, r28
/* 805391EC  4B FF FA 0D */	bl aNPC_actor_schedule
lbl_805391F0:
/* 805391F0  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 805391F4  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 805391F8  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 805391FC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80539200  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80539204  4B B6 1D 05 */	bl func_8009AF08
/* 80539208  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8053920C  7C 08 03 A6 */	mtlr r0
/* 80539210  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80539214  4E 80 00 20 */	blr 
