lbl_80543E24:
/* 80543E24  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80543E28  7C 08 02 A6 */	mflr r0
/* 80543E2C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80543E30  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80543E34  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80543E38  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80543E3C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80543E40  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80543E44  4B B5 70 79 */	bl func_8009AEBC
/* 80543E48  A0 03 00 06 */	lhz r0, 6(r3)
/* 80543E4C  7C 7C 1B 78 */	mr r28, r3
/* 80543E50  7C 99 23 78 */	mr r25, r4
/* 80543E54  7C BA 2B 78 */	mr r26, r5
/* 80543E58  54 1F A7 3E */	rlwinm r31, r0, 0x14, 0x1c, 0x1f
/* 80543E5C  7C 1E 03 78 */	mr r30, r0
/* 80543E60  2C 1F 00 0E */	cmpwi r31, 0xe
/* 80543E64  7C 1D 03 78 */	mr r29, r0
/* 80543E68  41 82 00 28 */	beq lbl_80543E90
/* 80543E6C  2C 1F 00 0D */	cmpwi r31, 0xd
/* 80543E70  41 82 00 20 */	beq lbl_80543E90
/* 80543E74  4B E3 05 CD */	bl Actor_delete
/* 80543E78  38 00 00 00 */	li r0, 0
/* 80543E7C  7F 83 E3 78 */	mr r3, r28
/* 80543E80  90 1C 01 6C */	stw r0, 0x16c(r28)
/* 80543E84  90 1C 01 60 */	stw r0, 0x160(r28)
/* 80543E88  4B E8 C2 C1 */	bl mNpc_RenewalSetNpc
/* 80543E8C  48 00 04 60 */	b lbl_805442EC
lbl_80543E90:
/* 80543E90  7F C4 F3 78 */	mr r4, r30
/* 80543E94  38 61 00 08 */	addi r3, r1, 8
/* 80543E98  48 00 10 69 */	bl aNPC_dma_draw_data_proc
/* 80543E9C  38 7C 07 78 */	addi r3, r28, 0x778
/* 80543EA0  38 81 00 10 */	addi r4, r1, 0x10
/* 80543EA4  38 A0 00 4C */	li r5, 0x4c
/* 80543EA8  4B E7 6B 7D */	bl func_803BAA24
/* 80543EAC  A8 01 00 08 */	lha r0, 8(r1)
/* 80543EB0  B0 1C 07 60 */	sth r0, 0x760(r28)
/* 80543EB4  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80543EB8  B0 1C 07 62 */	sth r0, 0x762(r28)
/* 80543EBC  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80543EC0  98 1C 09 70 */	stb r0, 0x970(r28)
/* 80543EC4  88 01 00 64 */	lbz r0, 0x64(r1)
/* 80543EC8  98 1C 07 44 */	stb r0, 0x744(r28)
/* 80543ECC  80 7C 01 7C */	lwz r3, 0x17c(r28)
/* 80543ED0  28 03 00 00 */	cmplwi r3, 0
/* 80543ED4  41 82 00 10 */	beq lbl_80543EE4
/* 80543ED8  88 03 08 EC */	lbz r0, 0x8ec(r3)
/* 80543EDC  98 1C 08 9F */	stb r0, 0x89f(r28)
/* 80543EE0  48 00 00 0C */	b lbl_80543EEC
lbl_80543EE4:
/* 80543EE4  88 01 00 65 */	lbz r0, 0x65(r1)
/* 80543EE8  98 1C 08 9F */	stb r0, 0x89f(r28)
lbl_80543EEC:
/* 80543EEC  A8 A1 00 70 */	lha r5, 0x70(r1)
/* 80543EF0  2C 05 FF FF */	cmpwi r5, -1
/* 80543EF4  41 82 00 14 */	beq lbl_80543F08
/* 80543EF8  A8 C1 00 72 */	lha r6, 0x72(r1)
/* 80543EFC  7F 83 E3 78 */	mr r3, r28
/* 80543F00  7F 24 CB 78 */	mr r4, r25
/* 80543F04  4B FF FA ED */	bl func_805439F0
lbl_80543F08:
/* 80543F08  88 81 00 66 */	lbz r4, 0x66(r1)
/* 80543F0C  3C 00 43 30 */	lis r0, 0x4330
/* 80543F10  3C 60 80 65 */	lis r3, lit_913@ha /* 0x8064938C@ha */
/* 80543F14  90 01 00 78 */	stw r0, 0x78(r1)
/* 80543F18  C8 23 93 8C */	lfd f1, lit_913@l(r3)  /* 0x8064938C@l */
/* 80543F1C  38 7C 01 A8 */	addi r3, r28, 0x1a8
/* 80543F20  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80543F24  38 DC 02 18 */	addi r6, r28, 0x218
/* 80543F28  82 E1 00 0C */	lwz r23, 0xc(r1)
/* 80543F2C  38 FC 02 BA */	addi r7, r28, 0x2ba
/* 80543F30  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80543F34  38 A0 00 00 */	li r5, 0
/* 80543F38  C3 E1 00 5C */	lfs f31, 0x5c(r1)
/* 80543F3C  7E E4 BB 78 */	mr r4, r23
/* 80543F40  EF C0 08 28 */	fsubs f30, f0, f1
/* 80543F44  4B E2 CB 51 */	bl cKF_SkeletonInfo_R_ct
/* 80543F48  7E E4 BB 78 */	mr r4, r23
/* 80543F4C  38 7C 03 64 */	addi r3, r28, 0x364
/* 80543F50  38 DC 03 D4 */	addi r6, r28, 0x3d4
/* 80543F54  38 FC 04 76 */	addi r7, r28, 0x476
/* 80543F58  38 A0 00 00 */	li r5, 0
/* 80543F5C  4B E2 CB 39 */	bl cKF_SkeletonInfo_R_ct
/* 80543F60  7E E4 BB 78 */	mr r4, r23
/* 80543F64  38 7C 05 20 */	addi r3, r28, 0x520
/* 80543F68  38 DC 05 90 */	addi r6, r28, 0x590
/* 80543F6C  38 FC 06 32 */	addi r7, r28, 0x632
/* 80543F70  38 A0 00 00 */	li r5, 0
/* 80543F74  4B E2 CB 21 */	bl cKF_SkeletonInfo_R_ct
/* 80543F78  3C A0 80 65 */	lis r5, data_80649374@ha /* 0x80649374@ha */
/* 80543F7C  3C 80 80 65 */	lis r4, lit_3519@ha /* 0x8064944C@ha */
/* 80543F80  39 05 93 74 */	addi r8, r5, data_80649374@l /* 0x80649374@l */
/* 80543F84  3C 60 80 65 */	lis r3, lit_3520@ha /* 0x80649450@ha */
/* 80543F88  38 A3 94 50 */	addi r5, r3, lit_3520@l /* 0x80649450@l */
/* 80543F8C  38 C4 94 4C */	addi r6, r4, lit_3519@l /* 0x8064944C@l */
/* 80543F90  3C E0 80 37 */	lis r7, mAc_ActorShadowEllipse@ha /* 0x80376F88@ha */
/* 80543F94  C0 28 00 00 */	lfs f1, 0(r8)
/* 80543F98  C0 46 00 00 */	lfs f2, 0(r6)
/* 80543F9C  38 87 6F 88 */	addi r4, r7, mAc_ActorShadowEllipse@l /* 0x80376F88@l */
/* 80543FA0  C0 65 00 00 */	lfs f3, 0(r5)
/* 80543FA4  7F 83 E3 78 */	mr r3, r28
/* 80543FA8  4B E3 04 49 */	bl Shape_Info_init
/* 80543FAC  3C 60 80 65 */	lis r3, lit_1015@ha /* 0x806493A0@ha */
/* 80543FB0  3B 7C 09 38 */	addi r27, r28, 0x938
/* 80543FB4  38 83 93 A0 */	addi r4, r3, lit_1015@l /* 0x806493A0@l */
/* 80543FB8  7F 23 CB 78 */	mr r3, r25
/* 80543FBC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80543FC0  7F 64 DB 78 */	mr r4, r27
/* 80543FC4  D0 1C 00 E4 */	stfs f0, 0xe4(r28)
/* 80543FC8  4B E5 06 51 */	bl ClObjPipe_ct
/* 80543FCC  3C 80 80 6A */	lis r4, aNPC_CoInfoData@ha /* 0x806A33B8@ha */
/* 80543FD0  7F 23 CB 78 */	mr r3, r25
/* 80543FD4  38 C4 33 B8 */	addi r6, r4, aNPC_CoInfoData@l /* 0x806A33B8@l */
/* 80543FD8  7F 85 E3 78 */	mr r5, r28
/* 80543FDC  7F 64 DB 78 */	mr r4, r27
/* 80543FE0  4B E5 06 D1 */	bl ClObjPipe_set5
/* 80543FE4  3C 80 80 6A */	lis r4, aNPC_StatusData@ha /* 0x806A33C8@ha */
/* 80543FE8  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 80543FEC  38 84 33 C8 */	addi r4, r4, aNPC_StatusData@l /* 0x806A33C8@l */
/* 80543FF0  4B E5 19 D9 */	bl CollisionCheck_Status_set3
/* 80543FF4  A8 01 00 6C */	lha r0, 0x6c(r1)
/* 80543FF8  3D 40 43 30 */	lis r10, 0x4330
/* 80543FFC  3C 80 80 65 */	lis r4, lit_3521@ha /* 0x80649454@ha */
/* 80544000  3C 60 80 65 */	lis r3, lit_811@ha /* 0x80649384@ha */
/* 80544004  B0 1B 00 0E */	sth r0, 0xe(r27)
/* 80544008  38 E4 94 54 */	addi r7, r4, lit_3521@l /* 0x80649454@l */
/* 8054400C  38 C3 93 84 */	addi r6, r3, lit_811@l /* 0x80649384@l */
/* 80544010  3C 60 80 65 */	lis r3, lit_795@ha /* 0x80649378@ha */
/* 80544014  A8 01 00 6E */	lha r0, 0x6e(r1)
/* 80544018  39 63 93 78 */	addi r11, r3, lit_795@l /* 0x80649378@l */
/* 8054401C  3C 80 80 65 */	lis r4, lit_3522@ha /* 0x80649458@ha */
/* 80544020  3C 60 80 65 */	lis r3, lit_3523@ha /* 0x8064945C@ha */
/* 80544024  B0 1B 00 10 */	sth r0, 0x10(r27)
/* 80544028  39 84 94 58 */	addi r12, r4, lit_3522@l /* 0x80649458@l */
/* 8054402C  39 23 94 5C */	addi r9, r3, lit_3523@l /* 0x8064945C@l */
/* 80544030  3C 60 80 65 */	lis r3, lit_796@ha /* 0x8064937C@ha */
/* 80544034  80 1A 00 00 */	lwz r0, 0(r26)
/* 80544038  38 A3 93 7C */	addi r5, r3, lit_796@l /* 0x8064937C@l */
/* 8054403C  3A E0 00 F6 */	li r23, 0xf6
/* 80544040  38 80 00 FF */	li r4, 0xff
/* 80544044  90 1C 08 E8 */	stw r0, 0x8e8(r28)
/* 80544048  38 60 FF FF */	li r3, -1
/* 8054404C  38 00 00 00 */	li r0, 0
/* 80544050  C0 47 00 00 */	lfs f2, 0(r7)
/* 80544054  80 FA 00 04 */	lwz r7, 4(r26)
/* 80544058  3B 00 00 03 */	li r24, 3
/* 8054405C  3B 60 00 07 */	li r27, 7
/* 80544060  3B 20 00 05 */	li r25, 5
/* 80544064  90 FC 08 EC */	stw r7, 0x8ec(r28)
/* 80544068  39 00 00 01 */	li r8, 1
/* 8054406C  C8 66 00 00 */	lfd f3, 0(r6)
/* 80544070  38 E0 02 00 */	li r7, 0x200
/* 80544074  92 FC 07 14 */	stw r23, 0x714(r28)
/* 80544078  38 C0 04 00 */	li r6, 0x400
/* 8054407C  C0 8B 00 00 */	lfs f4, 0(r11)
/* 80544080  B0 9C 07 54 */	sth r4, 0x754(r28)
/* 80544084  C0 AC 00 00 */	lfs f5, 0(r12)
/* 80544088  B0 7C 07 56 */	sth r3, 0x756(r28)
/* 8054408C  C0 29 00 00 */	lfs f1, 0(r9)
/* 80544090  98 1C 07 52 */	stb r0, 0x752(r28)
/* 80544094  C0 05 00 00 */	lfs f0, 0(r5)
/* 80544098  D0 5C 09 54 */	stfs f2, 0x954(r28)
/* 8054409C  9B 1C 09 59 */	stb r24, 0x959(r28)
/* 805440A0  D3 DC 08 2C */	stfs f30, 0x82c(r28)
/* 805440A4  98 9C 07 F5 */	stb r4, 0x7f5(r28)
/* 805440A8  9B 7C 08 80 */	stb r27, 0x880(r28)
/* 805440AC  98 7C 03 60 */	stb r3, 0x360(r28)
/* 805440B0  98 7C 05 1C */	stb r3, 0x51c(r28)
/* 805440B4  98 7C 06 D8 */	stb r3, 0x6d8(r28)
/* 805440B8  98 1C 07 51 */	stb r0, 0x751(r28)
/* 805440BC  80 BA 00 0C */	lwz r5, 0xc(r26)
/* 805440C0  91 41 00 80 */	stw r10, 0x80(r1)
/* 805440C4  90 BC 09 64 */	stw r5, 0x964(r28)
/* 805440C8  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 805440CC  91 41 00 88 */	stw r10, 0x88(r1)
/* 805440D0  90 BC 09 68 */	stw r5, 0x968(r28)
/* 805440D4  80 BA 00 14 */	lwz r5, 0x14(r26)
/* 805440D8  90 BC 09 6C */	stw r5, 0x96c(r28)
/* 805440DC  B0 7C 09 74 */	sth r3, 0x974(r28)
/* 805440E0  B0 7C 09 76 */	sth r3, 0x976(r28)
/* 805440E4  9B 3C 09 71 */	stb r25, 0x971(r28)
/* 805440E8  98 1C 09 73 */	stb r0, 0x973(r28)
/* 805440EC  98 9C 07 DC */	stb r4, 0x7dc(r28)
/* 805440F0  88 BC 00 08 */	lbz r5, 8(r28)
/* 805440F4  7C A5 07 74 */	extsb r5, r5
/* 805440F8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 805440FC  90 A1 00 84 */	stw r5, 0x84(r1)
/* 80544100  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 80544104  EC 42 18 28 */	fsubs f2, f2, f3
/* 80544108  EC 44 10 2A */	fadds f2, f4, f2
/* 8054410C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80544110  D0 5C 09 18 */	stfs f2, 0x918(r28)
/* 80544114  88 BC 00 09 */	lbz r5, 9(r28)
/* 80544118  7C A5 07 74 */	extsb r5, r5
/* 8054411C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80544120  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 80544124  C8 41 00 88 */	lfd f2, 0x88(r1)
/* 80544128  EC 42 18 28 */	fsubs f2, f2, f3
/* 8054412C  EC 44 10 2A */	fadds f2, f4, f2
/* 80544130  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80544134  D0 5C 09 1C */	stfs f2, 0x91c(r28)
/* 80544138  D0 3C 09 20 */	stfs f1, 0x920(r28)
/* 8054413C  98 7C 09 30 */	stb r3, 0x930(r28)
/* 80544140  98 7C 09 31 */	stb r3, 0x931(r28)
/* 80544144  98 9C 07 F5 */	stb r4, 0x7f5(r28)
/* 80544148  98 1C 07 FD */	stb r0, 0x7fd(r28)
/* 8054414C  90 7C 07 CC */	stw r3, 0x7cc(r28)
/* 80544150  99 1C 07 D0 */	stb r8, 0x7d0(r28)
/* 80544154  98 9C 09 7C */	stb r4, 0x97c(r28)
/* 80544158  99 1C 09 7D */	stb r8, 0x97d(r28)
/* 8054415C  B0 FC 08 B8 */	sth r7, 0x8b8(r28)
/* 80544160  B0 DC 08 BA */	sth r6, 0x8ba(r28)
/* 80544164  D0 1C 07 68 */	stfs f0, 0x768(r28)
/* 80544168  4B E5 6D 51 */	bl mEv_CheckTitleDemo
/* 8054416C  2C 03 00 00 */	cmpwi r3, 0
/* 80544170  40 81 00 0C */	ble lbl_8054417C
/* 80544174  38 00 00 00 */	li r0, 0
/* 80544178  98 1C 00 D6 */	stb r0, 0xd6(r28)
lbl_8054417C:
/* 8054417C  38 7C 08 D0 */	addi r3, r28, 0x8d0
/* 80544180  38 9C 00 28 */	addi r4, r28, 0x28
/* 80544184  4B E7 6D 39 */	bl xyz_t_move
/* 80544188  38 7C 08 DC */	addi r3, r28, 0x8dc
/* 8054418C  38 9C 00 28 */	addi r4, r28, 0x28
/* 80544190  4B E7 6D 2D */	bl xyz_t_move
/* 80544194  7F 83 E3 78 */	mr r3, r28
/* 80544198  38 80 00 01 */	li r4, 1
/* 8054419C  4B FF EF 09 */	bl aNPC_set_hide_flg
/* 805441A0  2C 1F 00 0E */	cmpwi r31, 0xe
/* 805441A4  40 82 00 80 */	bne lbl_80544224
/* 805441A8  82 FC 01 7C */	lwz r23, 0x17c(r28)
/* 805441AC  A0 17 08 E4 */	lhz r0, 0x8e4(r23)
/* 805441B0  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 805441B4  7C 18 03 78 */	mr r24, r0
/* 805441B8  40 82 00 0C */	bne lbl_805441C4
/* 805441BC  8B 37 08 EB */	lbz r25, 0x8eb(r23)
/* 805441C0  48 00 00 08 */	b lbl_805441C8
lbl_805441C4:
/* 805441C4  3B 20 00 FF */	li r25, 0xff
lbl_805441C8:
/* 805441C8  7F 83 E3 78 */	mr r3, r28
/* 805441CC  7F 04 C3 78 */	mr r4, r24
/* 805441D0  7F 25 CB 78 */	mr r5, r25
/* 805441D4  4B FF 72 59 */	bl aNPC_setup_next_cloth
/* 805441D8  7F 83 E3 78 */	mr r3, r28
/* 805441DC  7F 04 C3 78 */	mr r4, r24
/* 805441E0  7F 25 CB 78 */	mr r5, r25
/* 805441E4  4B FF 72 3D */	bl aNPC_setup_chg_cloth
/* 805441E8  88 97 08 E3 */	lbz r4, 0x8e3(r23)
/* 805441EC  3C 60 80 54 */	lis r3, aNPC_talk_end_check@ha /* 0x8053F9F8@ha */
/* 805441F0  38 03 F9 F8 */	addi r0, r3, aNPC_talk_end_check@l /* 0x8053F9F8@l */
/* 805441F4  7F 83 E3 78 */	mr r3, r28
/* 805441F8  1C 84 0E 10 */	mulli r4, r4, 0xe10
/* 805441FC  90 9C 08 38 */	stw r4, 0x838(r28)
/* 80544200  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80544204  4B FF FA 19 */	bl aNPC_set_start_pos
/* 80544208  7F 83 E3 78 */	mr r3, r28
/* 8054420C  4B FF F8 79 */	bl aNPC_setP_friendship
/* 80544210  A0 01 00 6A */	lhz r0, 0x6a(r1)
/* 80544214  B0 1C 09 78 */	sth r0, 0x978(r28)
/* 80544218  A0 01 00 6A */	lhz r0, 0x6a(r1)
/* 8054421C  B0 1C 09 7A */	sth r0, 0x97a(r28)
/* 80544220  48 00 00 90 */	b lbl_805442B0
lbl_80544224:
/* 80544224  7F C3 F3 78 */	mr r3, r30
/* 80544228  4B E8 A9 C1 */	bl mNpc_GetSameEventNpc
/* 8054422C  28 03 00 00 */	cmplwi r3, 0
/* 80544230  41 82 00 30 */	beq lbl_80544260
/* 80544234  A0 83 00 02 */	lhz r4, 2(r3)
/* 80544238  38 A0 00 01 */	li r5, 1
/* 8054423C  A3 A3 00 04 */	lhz r29, 4(r3)
/* 80544240  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80544244  90 7C 01 88 */	stw r3, 0x188(r28)
/* 80544248  2C 00 00 0E */	cmpwi r0, 0xe
/* 8054424C  98 A3 00 08 */	stb r5, 8(r3)
/* 80544250  40 82 00 48 */	bne lbl_80544298
/* 80544254  38 61 00 08 */	addi r3, r1, 8
/* 80544258  48 00 0C A9 */	bl aNPC_dma_draw_data_proc
/* 8054425C  48 00 00 3C */	b lbl_80544298
lbl_80544260:
/* 80544260  7F C3 F3 78 */	mr r3, r30
/* 80544264  4B E8 AB C1 */	bl mNpc_GetSameMaskNpc
/* 80544268  28 03 00 00 */	cmplwi r3, 0
/* 8054426C  41 82 00 2C */	beq lbl_80544298
/* 80544270  A0 83 00 02 */	lhz r4, 2(r3)
/* 80544274  38 A0 00 01 */	li r5, 1
/* 80544278  90 7C 01 8C */	stw r3, 0x18c(r28)
/* 8054427C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80544280  2C 00 00 0E */	cmpwi r0, 0xe
/* 80544284  7C 9D 23 78 */	mr r29, r4
/* 80544288  98 A3 00 06 */	stb r5, 6(r3)
/* 8054428C  40 82 00 0C */	bne lbl_80544298
/* 80544290  38 61 00 08 */	addi r3, r1, 8
/* 80544294  48 00 0C 6D */	bl aNPC_dma_draw_data_proc
lbl_80544298:
/* 80544298  A0 61 00 6A */	lhz r3, 0x6a(r1)
/* 8054429C  38 00 00 01 */	li r0, 1
/* 805442A0  B0 7C 09 78 */	sth r3, 0x978(r28)
/* 805442A4  A0 61 00 6A */	lhz r3, 0x6a(r1)
/* 805442A8  B0 7C 09 7A */	sth r3, 0x97a(r28)
/* 805442AC  98 1C 08 9E */	stb r0, 0x89e(r28)
lbl_805442B0:
/* 805442B0  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 805442B4  B3 BC 01 90 */	sth r29, 0x190(r28)
/* 805442B8  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 805442BC  38 00 00 01 */	li r0, 1
/* 805442C0  D0 1C 00 7C */	stfs f0, 0x7c(r28)
/* 805442C4  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 805442C8  D3 FC 00 5C */	stfs f31, 0x5c(r28)
/* 805442CC  D3 FC 00 60 */	stfs f31, 0x60(r28)
/* 805442D0  D3 FC 00 64 */	stfs f31, 0x64(r28)
/* 805442D4  98 1C 00 B4 */	stb r0, 0xb4(r28)
/* 805442D8  80 9A 00 08 */	lwz r4, 8(r26)
/* 805442DC  2C 04 00 00 */	cmpwi r4, 0
/* 805442E0  41 82 00 0C */	beq lbl_805442EC
/* 805442E4  7F 83 E3 78 */	mr r3, r28
/* 805442E8  4B FF FA 89 */	bl aNPC_actor_schedule
lbl_805442EC:
/* 805442EC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 805442F0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 805442F4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 805442F8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805442FC  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80544300  4B B5 6C 09 */	bl func_8009AF08
/* 80544304  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80544308  7C 08 03 A6 */	mtlr r0
/* 8054430C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80544310  4E 80 00 20 */	blr 
