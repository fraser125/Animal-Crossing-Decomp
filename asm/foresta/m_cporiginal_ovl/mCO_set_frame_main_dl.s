lbl_805CE0A0:
/* 805CE0A0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805CE0A4  7C 08 02 A6 */	mflr r0
/* 805CE0A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805CE0AC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805CE0B0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805CE0B4  39 61 00 50 */	addi r11, r1, 0x50
/* 805CE0B8  4B AC CD F1 */	bl func_8009AEA8
/* 805CE0BC  7C 74 1B 78 */	mr r20, r3
/* 805CE0C0  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B028@ha */
/* 805CE0C4  80 F4 00 2C */	lwz r7, 0x2c(r20)
/* 805CE0C8  38 C3 B0 28 */	addi r6, r3, lit_874@l /* 0x8064B028@l */
/* 805CE0CC  7C 95 23 78 */	mr r21, r4
/* 805CE0D0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CE0D4  C0 27 09 34 */	lfs f1, 0x934(r7)
/* 805CE0D8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CE0DC  C0 07 09 38 */	lfs f0, 0x938(r7)
/* 805CE0E0  7C B6 2B 78 */	mr r22, r5
/* 805CE0E4  FC 20 08 50 */	fneg f1, f1
/* 805CE0E8  83 64 00 00 */	lwz r27, 0(r4)
/* 805CE0EC  C0 46 00 00 */	lfs f2, 0(r6)
/* 805CE0F0  FC 00 00 50 */	fneg f0, f0
/* 805CE0F4  82 FB 02 D0 */	lwz r23, 0x2d0(r27)
/* 805CE0F8  7F 63 DB 78 */	mr r3, r27
/* 805CE0FC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CE100  90 17 00 00 */	stw r0, 0(r23)
/* 805CE104  EC 02 00 32 */	fmuls f0, f2, f0
/* 805CE108  FC 20 08 1E */	fctiwz f1, f1
/* 805CE10C  FC 00 00 1E */	fctiwz f0, f0
/* 805CE110  D8 21 00 08 */	stfd f1, 8(r1)
/* 805CE114  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805CE118  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805CE11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CE120  54 93 04 3E */	clrlwi r19, r4, 0x10
/* 805CE124  54 18 04 3E */	clrlwi r24, r0, 0x10
/* 805CE128  4B E3 F2 AD */	bl _Matrix_to_Mtx_new
/* 805CE12C  3C 80 F0 8E */	lis r4, 0xF08E /* 0xF08E4010@ha */
/* 805CE130  90 77 00 04 */	stw r3, 4(r23)
/* 805CE134  38 04 40 10 */	addi r0, r4, 0x4010 /* 0xF08E4010@l */
/* 805CE138  3C E0 80 A4 */	lis r7, save_win1_w_all_model@ha /* 0x80A44600@ha */
/* 805CE13C  3C 80 80 6D */	lis r4, pallet_table@ha /* 0x806CB8C4@ha */
/* 805CE140  90 17 00 08 */	stw r0, 8(r23)
/* 805CE144  56 C0 10 3A */	slwi r0, r22, 2
/* 805CE148  3C A0 80 A4 */	lis r5, sav_mb_model@ha /* 0x80A3CFC0@ha */
/* 805CE14C  38 84 B8 C4 */	addi r4, r4, pallet_table@l /* 0x806CB8C4@l */
/* 805CE150  3D 20 DE 00 */	lis r9, 0xde00
/* 805CE154  7C 84 00 2E */	lwzx r4, r4, r0
/* 805CE158  56 60 52 2A */	rlwinm r0, r19, 0xa, 8, 0x15
/* 805CE15C  64 08 F2 00 */	oris r8, r0, 0xf200
/* 805CE160  3C 60 80 A4 */	lis r3, save_win1_w_before_model@ha /* 0x80A445C8@ha */
/* 805CE164  90 97 00 0C */	stw r4, 0xc(r23)
/* 805CE168  57 00 52 2A */	rlwinm r0, r24, 0xa, 8, 0x15
/* 805CE16C  38 83 45 C8 */	addi r4, r3, save_win1_w_before_model@l /* 0x80A445C8@l */
/* 805CE170  61 08 00 1F */	ori r8, r8, 0x1f
/* 805CE174  91 37 00 10 */	stw r9, 0x10(r23)
/* 805CE178  64 00 80 00 */	oris r0, r0, 0x8000
/* 805CE17C  60 00 00 1F */	ori r0, r0, 0x1f
/* 805CE180  38 E7 46 00 */	addi r7, r7, save_win1_w_all_model@l /* 0x80A44600@l */
/* 805CE184  90 97 00 14 */	stw r4, 0x14(r23)
/* 805CE188  3C 60 80 65 */	lis r3, lit_655@ha /* 0x8064B01C@ha */
/* 805CE18C  38 83 B0 1C */	addi r4, r3, lit_655@l /* 0x8064B01C@l */
/* 805CE190  3C C0 80 A4 */	lis r6, sav_win1_waku_model@ha /* 0x80A44100@ha */
/* 805CE194  91 17 00 18 */	stw r8, 0x18(r23)
/* 805CE198  3C 60 80 65 */	lis r3, lit_651@ha /* 0x8064B00C@ha */
/* 805CE19C  CB E4 00 00 */	lfd f31, 0(r4)
/* 805CE1A0  3B 85 CF C0 */	addi r28, r5, sav_mb_model@l /* 0x80A3CFC0@l */
/* 805CE1A4  90 17 00 1C */	stw r0, 0x1c(r23)
/* 805CE1A8  38 06 41 00 */	addi r0, r6, sav_win1_waku_model@l /* 0x80A44100@l */
/* 805CE1AC  3B E3 B0 0C */	addi r31, r3, lit_651@l /* 0x8064B00C@l */
/* 805CE1B0  3B 40 00 00 */	li r26, 0
/* 805CE1B4  91 37 00 20 */	stw r9, 0x20(r23)
/* 805CE1B8  3B 00 00 00 */	li r24, 0
/* 805CE1BC  3F A0 43 30 */	lis r29, 0x4330
/* 805CE1C0  90 F7 00 24 */	stw r7, 0x24(r23)
/* 805CE1C4  91 37 00 28 */	stw r9, 0x28(r23)
/* 805CE1C8  90 17 00 2C */	stw r0, 0x2c(r23)
/* 805CE1CC  3A F7 00 30 */	addi r23, r23, 0x30
lbl_805CE1D0:
/* 805CE1D0  7C 18 00 D0 */	neg r0, r24
/* 805CE1D4  3B 20 00 00 */	li r25, 0
/* 805CE1D8  1C 00 00 1D */	mulli r0, r0, 0x1d
/* 805CE1DC  3A 60 00 00 */	li r19, 0
/* 805CE1E0  6C 1E 80 00 */	xoris r30, r0, 0x8000
lbl_805CE1E4:
/* 805CE1E4  4B E3 DF F1 */	bl Matrix_push
/* 805CE1E8  6E 60 80 00 */	xoris r0, r19, 0x8000
/* 805CE1EC  93 A1 00 10 */	stw r29, 0x10(r1)
/* 805CE1F0  C0 7F 00 00 */	lfs f3, 0(r31)
/* 805CE1F4  38 60 00 01 */	li r3, 1
/* 805CE1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CE1FC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805CE200  93 C1 00 0C */	stw r30, 0xc(r1)
/* 805CE204  EC 20 F8 28 */	fsubs f1, f0, f31
/* 805CE208  93 A1 00 08 */	stw r29, 8(r1)
/* 805CE20C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CE210  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805CE214  4B E3 E0 ED */	bl Matrix_translate
/* 805CE218  7E 83 A3 78 */	mr r3, r20
/* 805CE21C  7E C4 B3 78 */	mr r4, r22
/* 805CE220  7F 45 D3 78 */	mr r5, r26
/* 805CE224  4B FF F0 85 */	bl mCO_check_hide_flg
/* 805CE228  2C 03 00 00 */	cmpwi r3, 0
/* 805CE22C  40 82 00 78 */	bne lbl_805CE2A4
/* 805CE230  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CE234  7E F2 BB 78 */	mr r18, r23
/* 805CE238  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CE23C  7F 63 DB 78 */	mr r3, r27
/* 805CE240  90 17 00 00 */	stw r0, 0(r23)
/* 805CE244  3A F7 00 08 */	addi r23, r23, 8
/* 805CE248  4B E3 F1 8D */	bl _Matrix_to_Mtx_new
/* 805CE24C  90 72 00 04 */	stw r3, 4(r18)
/* 805CE250  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805CE254  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805CE258  7E 83 A3 78 */	mr r3, r20
/* 805CE25C  90 17 00 00 */	stw r0, 0(r23)
/* 805CE260  7E C4 B3 78 */	mr r4, r22
/* 805CE264  7F 45 D3 78 */	mr r5, r26
/* 805CE268  4B FF F1 01 */	bl mCO_get_texture
/* 805CE26C  90 77 00 04 */	stw r3, 4(r23)
/* 805CE270  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805CE274  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 805CE278  7E 83 A3 78 */	mr r3, r20
/* 805CE27C  90 17 00 08 */	stw r0, 8(r23)
/* 805CE280  7E C4 B3 78 */	mr r4, r22
/* 805CE284  7F 45 D3 78 */	mr r5, r26
/* 805CE288  4B FF F1 89 */	bl mCO_get_pallet_no
/* 805CE28C  4B DF B9 31 */	bl mNW_PaletteIdx2Palette
/* 805CE290  90 77 00 0C */	stw r3, 0xc(r23)
/* 805CE294  3C 00 DE 00 */	lis r0, 0xde00
/* 805CE298  90 17 00 10 */	stw r0, 0x10(r23)
/* 805CE29C  93 97 00 14 */	stw r28, 0x14(r23)
/* 805CE2A0  3A F7 00 18 */	addi r23, r23, 0x18
lbl_805CE2A4:
/* 805CE2A4  4B E3 DF 71 */	bl Matrix_pull
/* 805CE2A8  3B 39 00 01 */	addi r25, r25, 1
/* 805CE2AC  3B 5A 00 01 */	addi r26, r26, 1
/* 805CE2B0  2C 19 00 03 */	cmpwi r25, 3
/* 805CE2B4  3A 73 00 20 */	addi r19, r19, 0x20
/* 805CE2B8  41 80 FF 2C */	blt lbl_805CE1E4
/* 805CE2BC  3B 18 00 01 */	addi r24, r24, 1
/* 805CE2C0  2C 18 00 04 */	cmpwi r24, 4
/* 805CE2C4  41 80 FF 0C */	blt lbl_805CE1D0
/* 805CE2C8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CE2CC  7E F2 BB 78 */	mr r18, r23
/* 805CE2D0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CE2D4  7F 63 DB 78 */	mr r3, r27
/* 805CE2D8  90 17 00 00 */	stw r0, 0(r23)
/* 805CE2DC  3A F7 00 08 */	addi r23, r23, 8
/* 805CE2E0  4B E3 F0 F5 */	bl _Matrix_to_Mtx_new
/* 805CE2E4  90 72 00 04 */	stw r3, 4(r18)
/* 805CE2E8  7E E4 BB 78 */	mr r4, r23
/* 805CE2EC  3C 00 DE 00 */	lis r0, 0xde00
/* 805CE2F0  3C 60 80 A4 */	lis r3, sav_win1_f_model@ha /* 0x80A44188@ha */
/* 805CE2F4  90 17 00 00 */	stw r0, 0(r23)
/* 805CE2F8  38 03 41 88 */	addi r0, r3, sav_win1_f_model@l /* 0x80A44188@l */
/* 805CE2FC  3A F7 00 08 */	addi r23, r23, 8
/* 805CE300  7E A3 AB 78 */	mr r3, r21
/* 805CE304  90 04 00 04 */	stw r0, 4(r4)
/* 805CE308  92 FB 02 D0 */	stw r23, 0x2d0(r27)
/* 805CE30C  48 01 BF 39 */	bl mNW_draw_sav_mark_before
/* 805CE310  3A C0 00 00 */	li r22, 0
/* 805CE314  7E D7 B3 78 */	mr r23, r22
lbl_805CE318:
/* 805CE318  7C 17 00 D0 */	neg r0, r23
/* 805CE31C  3B 00 00 00 */	li r24, 0
/* 805CE320  1C 60 00 1D */	mulli r3, r0, 0x1d
/* 805CE324  3A 63 00 2C */	addi r19, r3, 0x2c
lbl_805CE328:
/* 805CE328  7E 83 A3 78 */	mr r3, r20
/* 805CE32C  7E C4 B3 78 */	mr r4, r22
/* 805CE330  4B FF EF 29 */	bl mCO_check_mark_flg
/* 805CE334  2C 03 00 00 */	cmpwi r3, 0
/* 805CE338  41 82 00 1C */	beq lbl_805CE354
/* 805CE33C  4B E3 DE 99 */	bl Matrix_push
/* 805CE340  7E A3 AB 78 */	mr r3, r21
/* 805CE344  7E 65 9B 78 */	mr r5, r19
/* 805CE348  57 04 28 34 */	slwi r4, r24, 5
/* 805CE34C  48 01 BF 99 */	bl mNW_draw_sav_mark
/* 805CE350  4B E3 DE C5 */	bl Matrix_pull
lbl_805CE354:
/* 805CE354  3B 18 00 01 */	addi r24, r24, 1
/* 805CE358  3A D6 00 01 */	addi r22, r22, 1
/* 805CE35C  2C 18 00 03 */	cmpwi r24, 3
/* 805CE360  41 80 FF C8 */	blt lbl_805CE328
/* 805CE364  3A F7 00 01 */	addi r23, r23, 1
/* 805CE368  2C 17 00 04 */	cmpwi r23, 4
/* 805CE36C  41 80 FF AC */	blt lbl_805CE318
/* 805CE370  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805CE374  39 61 00 50 */	addi r11, r1, 0x50
/* 805CE378  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805CE37C  4B AC CB 79 */	bl func_8009AEF4
/* 805CE380  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805CE384  7C 08 03 A6 */	mtlr r0
/* 805CE388  38 21 00 60 */	addi r1, r1, 0x60
/* 805CE38C  4E 80 00 20 */	blr 
