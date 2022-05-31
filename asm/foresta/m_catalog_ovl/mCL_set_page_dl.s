lbl_805CB130:
/* 805CB130  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805CB134  7C 08 02 A6 */	mflr r0
/* 805CB138  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805CB13C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805CB140  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805CB144  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 805CB148  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 805CB14C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 805CB150  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 805CB154  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 805CB158  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 805CB15C  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 805CB160  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 805CB164  39 61 00 60 */	addi r11, r1, 0x60
/* 805CB168  4B AC FD 49 */	bl func_8009AEB0
/* 805CB16C  81 23 00 2C */	lwz r9, 0x2c(r3)
/* 805CB170  7C 7C 1B 78 */	mr r28, r3
/* 805CB174  1C 67 06 44 */	mulli r3, r7, 0x644
/* 805CB178  3D 40 80 6D */	lis r10, data_806C89B0@ha /* 0x806C89B0@ha */
/* 805CB17C  83 49 09 CC */	lwz r26, 0x9cc(r9)
/* 805CB180  7C 9D 23 78 */	mr r29, r4
/* 805CB184  3B 6A 89 B0 */	addi r27, r10, data_806C89B0@l /* 0x806C89B0@l */
/* 805CB188  C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 805CB18C  A8 1A 00 02 */	lha r0, 2(r26)
/* 805CB190  3F 03 00 01 */	addis r24, r3, 1
/* 805CB194  3B 18 A1 48 */	addi r24, r24, -24248
/* 805CB198  54 E3 20 36 */	slwi r3, r7, 4
/* 805CB19C  3B 3B 2B 18 */	addi r25, r27, 0x2b18
/* 805CB1A0  2C 00 00 00 */	cmpwi r0, 0
/* 805CB1A4  7C BE 2B 78 */	mr r30, r5
/* 805CB1A8  7C DF 33 78 */	mr r31, r6
/* 805CB1AC  7D 15 43 78 */	mr r21, r8
/* 805CB1B0  7F 39 1A 14 */	add r25, r25, r3
/* 805CB1B4  7F 1A C2 14 */	add r24, r26, r24
/* 805CB1B8  41 82 00 10 */	beq lbl_805CB1C8
/* 805CB1BC  88 1A 00 01 */	lbz r0, 1(r26)
/* 805CB1C0  7C 07 00 00 */	cmpw r7, r0
/* 805CB1C4  40 82 00 1C */	bne lbl_805CB1E0
lbl_805CB1C8:
/* 805CB1C8  88 1A 00 00 */	lbz r0, 0(r26)
/* 805CB1CC  C3 DD 00 1C */	lfs f30, 0x1c(r29)
/* 805CB1D0  1C 60 50 A0 */	mulli r3, r0, 0x50a0
/* 805CB1D4  3A E3 00 08 */	addi r23, r3, 8
/* 805CB1D8  7E FA BA 14 */	add r23, r26, r23
/* 805CB1DC  48 00 00 20 */	b lbl_805CB1FC
lbl_805CB1E0:
/* 805CB1E0  88 1A 00 00 */	lbz r0, 0(r26)
/* 805CB1E4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805CB1E8  68 00 00 01 */	xori r0, r0, 1
/* 805CB1EC  1C 60 50 A0 */	mulli r3, r0, 0x50a0
/* 805CB1F0  FF C0 00 50 */	fneg f30, f0
/* 805CB1F4  3A E3 00 08 */	addi r23, r3, 8
/* 805CB1F8  7E FA BA 14 */	add r23, r26, r23
lbl_805CB1FC:
/* 805CB1FC  3C 60 80 65 */	lis r3, lit_1061@ha /* 0x8064AF40@ha */
/* 805CB200  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805CB204  38 A3 AF 40 */	addi r5, r3, lit_1061@l /* 0x8064AF40@l */
/* 805CB208  C0 64 AE B8 */	lfs f3, lit_526@l(r4)  /* 0x8064AEB8@l */
/* 805CB20C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805CB210  38 60 00 00 */	li r3, 0
/* 805CB214  FC 40 08 90 */	fmr f2, f1
/* 805CB218  4B E4 11 D5 */	bl Matrix_scale
/* 805CB21C  3C 60 80 65 */	lis r3, lit_1193@ha /* 0x8064AF68@ha */
/* 805CB220  FC 20 F8 90 */	fmr f1, f31
/* 805CB224  C0 63 AF 68 */	lfs f3, lit_1193@l(r3)  /* 0x8064AF68@l */
/* 805CB228  FC 40 F0 90 */	fmr f2, f30
/* 805CB22C  38 60 00 01 */	li r3, 1
/* 805CB230  4B E4 10 D1 */	bl Matrix_translate
/* 805CB234  82 DF 02 D0 */	lwz r22, 0x2d0(r31)
/* 805CB238  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CB23C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CB240  7F E3 FB 78 */	mr r3, r31
/* 805CB244  90 16 00 00 */	stw r0, 0(r22)
/* 805CB248  7E D4 B3 78 */	mr r20, r22
/* 805CB24C  3A D6 00 08 */	addi r22, r22, 8
/* 805CB250  4B E4 21 85 */	bl _Matrix_to_Mtx_new
/* 805CB254  2C 15 00 00 */	cmpwi r21, 0
/* 805CB258  90 74 00 04 */	stw r3, 4(r20)
/* 805CB25C  41 82 02 B4 */	beq lbl_805CB510
/* 805CB260  3C 00 DE 00 */	lis r0, 0xde00
/* 805CB264  3C 60 80 A4 */	lis r3, clg_mwin_mode@ha /* 0x80A3CB40@ha */
/* 805CB268  90 16 00 00 */	stw r0, 0(r22)
/* 805CB26C  38 83 CB 40 */	addi r4, r3, clg_mwin_mode@l /* 0x80A3CB40@l */
/* 805CB270  3D 00 FD 44 */	lis r8, 0xFD44 /* 0xFD441C1F@ha */
/* 805CB274  3C E0 D2 F1 */	lis r7, 0xD2F1 /* 0xD2F0E500@ha */
/* 805CB278  3C 60 F0 8E */	lis r3, 0xF08E /* 0xF08E4010@ha */
/* 805CB27C  90 96 00 04 */	stw r4, 4(r22)
/* 805CB280  38 83 40 10 */	addi r4, r3, 0x4010 /* 0xF08E4010@l */
/* 805CB284  39 68 1C 1F */	addi r11, r8, 0x1C1F /* 0xFD441C1F@l */
/* 805CB288  90 96 00 08 */	stw r4, 8(r22)
/* 805CB28C  3C 80 80 65 */	lis r4, lit_1059@ha /* 0x8064AF38@ha */
/* 805CB290  38 C4 AF 38 */	addi r6, r4, lit_1059@l /* 0x8064AF38@l */
/* 805CB294  3C A0 80 A4 */	lis r5, clg_mwin1_model@ha /* 0x80A3CB98@ha */
/* 805CB298  81 39 00 00 */	lwz r9, 0(r25)
/* 805CB29C  39 05 CB 98 */	addi r8, r5, clg_mwin1_model@l /* 0x80A3CB98@l */
/* 805CB2A0  C0 46 00 00 */	lfs f2, 0(r6)
/* 805CB2A4  39 47 E5 00 */	addi r10, r7, 0xE500 /* 0xD2F0E500@l */
/* 805CB2A8  91 36 00 0C */	stw r9, 0xc(r22)
/* 805CB2AC  3C 80 80 A4 */	lis r4, clg_name_mode@ha /* 0x80A3CB68@ha */
/* 805CB2B0  38 E4 CB 68 */	addi r7, r4, clg_name_mode@l /* 0x80A3CB68@l */
/* 805CB2B4  3D 20 E8 00 */	lis r9, 0xe800
/* 805CB2B8  91 76 00 10 */	stw r11, 0x10(r22)
/* 805CB2BC  38 60 00 00 */	li r3, 0
/* 805CB2C0  38 A0 00 07 */	li r5, 7
/* 805CB2C4  38 DB 2D 54 */	addi r6, r27, 0x2d54
/* 805CB2C8  81 79 00 04 */	lwz r11, 4(r25)
/* 805CB2CC  38 80 00 00 */	li r4, 0
/* 805CB2D0  91 76 00 14 */	stw r11, 0x14(r22)
/* 805CB2D4  91 56 00 18 */	stw r10, 0x18(r22)
/* 805CB2D8  91 36 00 20 */	stw r9, 0x20(r22)
/* 805CB2DC  90 76 00 24 */	stw r3, 0x24(r22)
/* 805CB2E0  81 3C 00 2C */	lwz r9, 0x2c(r28)
/* 805CB2E4  C0 09 09 34 */	lfs f0, 0x934(r9)
/* 805CB2E8  C0 29 09 38 */	lfs f1, 0x938(r9)
/* 805CB2EC  FC 00 00 50 */	fneg f0, f0
/* 805CB2F0  FC 20 08 50 */	fneg f1, f1
/* 805CB2F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805CB2F8  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CB2FC  FC 00 00 1E */	fctiwz f0, f0
/* 805CB300  FC 20 08 1E */	fctiwz f1, f1
/* 805CB304  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805CB308  81 21 00 24 */	lwz r9, 0x24(r1)
/* 805CB30C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805CB310  55 29 52 2A */	rlwinm r9, r9, 0xa, 8, 0x15
/* 805CB314  65 2A F2 00 */	oris r10, r9, 0xf200
/* 805CB318  81 61 00 1C */	lwz r11, 0x1c(r1)
/* 805CB31C  61 4A 00 1F */	ori r10, r10, 0x1f
/* 805CB320  55 69 52 2A */	rlwinm r9, r11, 0xa, 8, 0x15
/* 805CB324  91 56 00 28 */	stw r10, 0x28(r22)
/* 805CB328  65 29 80 00 */	oris r9, r9, 0x8000
/* 805CB32C  61 29 00 1F */	ori r9, r9, 0x1f
/* 805CB330  91 36 00 2C */	stw r9, 0x2c(r22)
/* 805CB334  90 16 00 30 */	stw r0, 0x30(r22)
/* 805CB338  91 16 00 34 */	stw r8, 0x34(r22)
/* 805CB33C  90 16 00 38 */	stw r0, 0x38(r22)
/* 805CB340  90 F6 00 3C */	stw r7, 0x3c(r22)
/* 805CB344  7C A9 03 A6 */	mtctr r5
/* 805CB348  3D 00 FA 00 */	lis r8, 0xFA00 /* 0xFA0000FF@ha */
/* 805CB34C  3C E0 CD 00 */	lis r7, 0xCD00 /* 0xCD0000FF@ha */
/* 805CB350  39 28 00 FF */	addi r9, r8, 0x00FF /* 0xFA0000FF@l */
/* 805CB354  3C A0 0A 0A */	lis r5, 0x0A0A /* 0x0A0A32FF@ha */
/* 805CB358  39 07 00 FF */	addi r8, r7, 0x00FF /* 0xCD0000FF@l */
/* 805CB35C  3A D6 00 40 */	addi r22, r22, 0x40
/* 805CB360  38 E5 32 FF */	addi r7, r5, 0x32FF /* 0x0A0A32FF@l */
lbl_805CB364:
/* 805CB364  A8 B8 00 04 */	lha r5, 4(r24)
/* 805CB368  7C 04 28 00 */	cmpw r4, r5
/* 805CB36C  40 82 00 14 */	bne lbl_805CB380
/* 805CB370  91 36 00 00 */	stw r9, 0(r22)
/* 805CB374  91 16 00 04 */	stw r8, 4(r22)
/* 805CB378  3A D6 00 08 */	addi r22, r22, 8
/* 805CB37C  48 00 00 10 */	b lbl_805CB38C
lbl_805CB380:
/* 805CB380  91 36 00 00 */	stw r9, 0(r22)
/* 805CB384  90 F6 00 04 */	stw r7, 4(r22)
/* 805CB388  3A D6 00 08 */	addi r22, r22, 8
lbl_805CB38C:
/* 805CB38C  90 16 00 00 */	stw r0, 0(r22)
/* 805CB390  38 84 00 01 */	addi r4, r4, 1
/* 805CB394  7C A6 18 2E */	lwzx r5, r6, r3
/* 805CB398  38 63 00 04 */	addi r3, r3, 4
/* 805CB39C  90 B6 00 04 */	stw r5, 4(r22)
/* 805CB3A0  3A D6 00 08 */	addi r22, r22, 8
/* 805CB3A4  42 00 FF C0 */	bdnz lbl_805CB364
/* 805CB3A8  3C 80 DE 00 */	lis r4, 0xde00
/* 805CB3AC  3C 60 80 A4 */	lis r3, clg_mwin2_model@ha /* 0x80A3CC40@ha */
/* 805CB3B0  90 96 00 00 */	stw r4, 0(r22)
/* 805CB3B4  38 03 CC 40 */	addi r0, r3, clg_mwin2_model@l /* 0x80A3CC40@l */
/* 805CB3B8  3C 60 80 A3 */	lis r3, clg_win_cbT_model@ha /* 0x80A32E20@ha */
/* 805CB3BC  90 16 00 04 */	stw r0, 4(r22)
/* 805CB3C0  38 03 2E 20 */	addi r0, r3, clg_win_cbT_model@l /* 0x80A32E20@l */
/* 805CB3C4  90 96 00 08 */	stw r4, 8(r22)
/* 805CB3C8  90 16 00 0C */	stw r0, 0xc(r22)
/* 805CB3CC  3A D6 00 10 */	addi r22, r22, 0x10
/* 805CB3D0  80 17 50 8C */	lwz r0, 0x508c(r23)
/* 805CB3D4  28 00 00 00 */	cmplwi r0, 0
/* 805CB3D8  41 82 00 18 */	beq lbl_805CB3F0
/* 805CB3DC  3C 60 80 A4 */	lis r3, clg_win_beruT_model@ha /* 0x80A3C890@ha */
/* 805CB3E0  90 96 00 00 */	stw r4, 0(r22)
/* 805CB3E4  38 03 C8 90 */	addi r0, r3, clg_win_beruT_model@l /* 0x80A3C890@l */
/* 805CB3E8  90 16 00 04 */	stw r0, 4(r22)
/* 805CB3EC  3A D6 00 08 */	addi r22, r22, 8
lbl_805CB3F0:
/* 805CB3F0  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805CB3F4  3C 7A 00 01 */	addis r3, r26, 1
/* 805CB3F8  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805CB3FC  90 16 00 00 */	stw r0, 0(r22)
/* 805CB400  88 03 D9 FF */	lbz r0, -0x2601(r3)
/* 805CB404  64 00 00 32 */	oris r0, r0, 0x32
/* 805CB408  60 00 FF 00 */	ori r0, r0, 0xff00
/* 805CB40C  90 16 00 04 */	stw r0, 4(r22)
/* 805CB410  3A D6 00 08 */	addi r22, r22, 8
/* 805CB414  A8 18 00 02 */	lha r0, 2(r24)
/* 805CB418  2C 00 00 00 */	cmpwi r0, 0
/* 805CB41C  41 82 00 5C */	beq lbl_805CB478
/* 805CB420  4B E4 0D B5 */	bl Matrix_push
/* 805CB424  3C C0 80 65 */	lis r6, lit_1194@ha /* 0x8064AF6C@ha */
/* 805CB428  3C A0 80 65 */	lis r5, lit_1195@ha /* 0x8064AF70@ha */
/* 805CB42C  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805CB430  C0 26 AF 6C */	lfs f1, lit_1194@l(r6)  /* 0x8064AF6C@l */
/* 805CB434  C0 45 AF 70 */	lfs f2, lit_1195@l(r5)  /* 0x8064AF70@l */
/* 805CB438  38 60 00 01 */	li r3, 1
/* 805CB43C  C0 64 AE A4 */	lfs f3, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805CB440  4B E4 0E C1 */	bl Matrix_translate
/* 805CB444  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805CB448  7F E3 FB 78 */	mr r3, r31
/* 805CB44C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805CB450  90 16 00 00 */	stw r0, 0(r22)
/* 805CB454  4B E4 1F 81 */	bl _Matrix_to_Mtx_new
/* 805CB458  90 76 00 04 */	stw r3, 4(r22)
/* 805CB45C  3C 00 DE 00 */	lis r0, 0xde00
/* 805CB460  3C 60 80 A3 */	lis r3, clg_win_shirushi1T_model@ha /* 0x80A33320@ha */
/* 805CB464  90 16 00 08 */	stw r0, 8(r22)
/* 805CB468  38 03 33 20 */	addi r0, r3, clg_win_shirushi1T_model@l /* 0x80A33320@l */
/* 805CB46C  90 16 00 0C */	stw r0, 0xc(r22)
/* 805CB470  3A D6 00 10 */	addi r22, r22, 0x10
/* 805CB474  4B E4 0D A1 */	bl Matrix_pull
lbl_805CB478:
/* 805CB478  A8 78 00 02 */	lha r3, 2(r24)
/* 805CB47C  A8 18 00 00 */	lha r0, 0(r24)
/* 805CB480  38 63 00 07 */	addi r3, r3, 7
/* 805CB484  7C 03 00 00 */	cmpw r3, r0
/* 805CB488  40 80 00 68 */	bge lbl_805CB4F0
/* 805CB48C  4B E4 0D 49 */	bl Matrix_push
/* 805CB490  3C C0 80 65 */	lis r6, lit_1194@ha /* 0x8064AF6C@ha */
/* 805CB494  3C A0 80 65 */	lis r5, lit_1196@ha /* 0x8064AF74@ha */
/* 805CB498  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805CB49C  C0 26 AF 6C */	lfs f1, lit_1194@l(r6)  /* 0x8064AF6C@l */
/* 805CB4A0  C0 45 AF 74 */	lfs f2, lit_1196@l(r5)  /* 0x8064AF74@l */
/* 805CB4A4  38 60 00 01 */	li r3, 1
/* 805CB4A8  C0 64 AE A4 */	lfs f3, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805CB4AC  4B E4 0E 55 */	bl Matrix_translate
/* 805CB4B0  38 60 80 00 */	li r3, -32768
/* 805CB4B4  38 80 00 01 */	li r4, 1
/* 805CB4B8  4B E4 13 39 */	bl Matrix_RotateZ
/* 805CB4BC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805CB4C0  7F E3 FB 78 */	mr r3, r31
/* 805CB4C4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805CB4C8  90 16 00 00 */	stw r0, 0(r22)
/* 805CB4CC  4B E4 1F 09 */	bl _Matrix_to_Mtx_new
/* 805CB4D0  90 76 00 04 */	stw r3, 4(r22)
/* 805CB4D4  3C 00 DE 00 */	lis r0, 0xde00
/* 805CB4D8  3C 60 80 A3 */	lis r3, clg_win_shirushi1T_model@ha /* 0x80A33320@ha */
/* 805CB4DC  90 16 00 08 */	stw r0, 8(r22)
/* 805CB4E0  38 03 33 20 */	addi r0, r3, clg_win_shirushi1T_model@l /* 0x80A33320@l */
/* 805CB4E4  90 16 00 0C */	stw r0, 0xc(r22)
/* 805CB4E8  3A D6 00 10 */	addi r22, r22, 0x10
/* 805CB4EC  4B E4 0D 29 */	bl Matrix_pull
lbl_805CB4F0:
/* 805CB4F0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CB4F4  7E D4 B3 78 */	mr r20, r22
/* 805CB4F8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CB4FC  7F E3 FB 78 */	mr r3, r31
/* 805CB500  90 16 00 00 */	stw r0, 0(r22)
/* 805CB504  3A D6 00 08 */	addi r22, r22, 8
/* 805CB508  4B E4 1E CD */	bl _Matrix_to_Mtx_new
/* 805CB50C  90 74 00 04 */	stw r3, 4(r20)
lbl_805CB510:
/* 805CB510  2C 15 00 00 */	cmpwi r21, 0
/* 805CB514  92 DF 02 D0 */	stw r22, 0x2d0(r31)
/* 805CB518  41 82 03 D4 */	beq lbl_805CB8EC
/* 805CB51C  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805CB520  7F E3 FB 78 */	mr r3, r31
/* 805CB524  3A D8 05 D4 */	addi r22, r24, 0x5d4
/* 805CB528  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805CB52C  7D 89 03 A6 */	mtctr r12
/* 805CB530  4E 80 04 21 */	bctrl 
/* 805CB534  3C 80 80 65 */	lis r4, lit_1198@ha /* 0x8064AF7C@ha */
/* 805CB538  3C 60 80 65 */	lis r3, lit_1199@ha /* 0x8064AF80@ha */
/* 805CB53C  C0 24 AF 7C */	lfs f1, lit_1198@l(r4)  /* 0x8064AF7C@l */
/* 805CB540  3C A0 80 65 */	lis r5, lit_1197@ha /* 0x8064AF78@ha */
/* 805CB544  C0 03 AF 80 */	lfs f0, lit_1199@l(r3)  /* 0x8064AF80@l */
/* 805CB548  3C 60 80 65 */	lis r3, lit_1200@ha /* 0x8064AF84@ha */
/* 805CB54C  EC 41 F8 2A */	fadds f2, f1, f31
/* 805CB550  C0 65 AF 78 */	lfs f3, lit_1197@l(r5)  /* 0x8064AF78@l */
/* 805CB554  EC 20 F0 2A */	fadds f1, f0, f30
/* 805CB558  C0 03 AF 84 */	lfs f0, lit_1200@l(r3)  /* 0x8064AF84@l */
/* 805CB55C  3C A0 80 65 */	lis r5, lit_1082@ha /* 0x8064AF50@ha */
/* 805CB560  3C 80 80 65 */	lis r4, lit_1084@ha /* 0x8064AF58@ha */
/* 805CB564  38 C5 AF 50 */	addi r6, r5, lit_1082@l /* 0x8064AF50@l */
/* 805CB568  38 A4 AF 58 */	addi r5, r4, lit_1084@l /* 0x8064AF58@l */
/* 805CB56C  EC 43 10 2A */	fadds f2, f3, f2
/* 805CB570  C0 66 00 00 */	lfs f3, 0(r6)
/* 805CB574  EC 01 00 28 */	fsubs f0, f1, f0
/* 805CB578  C0 25 00 00 */	lfs f1, 0(r5)
/* 805CB57C  3C 60 80 65 */	lis r3, lit_695@ha /* 0x8064AF14@ha */
/* 805CB580  3C 80 80 65 */	lis r4, lit_1086@ha /* 0x8064AF60@ha */
/* 805CB584  EF 83 10 2A */	fadds f28, f3, f2
/* 805CB588  C3 A3 AF 14 */	lfs f29, lit_695@l(r3)  /* 0x8064AF14@l */
/* 805CB58C  EF 61 00 28 */	fsubs f27, f1, f0
/* 805CB590  3A A4 AF 60 */	addi r21, r4, lit_1086@l /* 0x8064AF60@l */
/* 805CB594  3B 20 00 00 */	li r25, 0
lbl_805CB598:
/* 805CB598  A8 98 00 04 */	lha r4, 4(r24)
/* 805CB59C  38 60 00 01 */	li r3, 1
/* 805CB5A0  C0 75 00 00 */	lfs f3, 0(r21)
/* 805CB5A4  38 00 00 00 */	li r0, 0
/* 805CB5A8  7C 99 20 50 */	subf r4, r25, r4
/* 805CB5AC  90 61 00 08 */	stw r3, 8(r1)
/* 805CB5B0  7C 83 00 34 */	cntlzw r3, r4
/* 805CB5B4  39 1B 2D 70 */	addi r8, r27, 0x2d70
/* 805CB5B8  54 63 D9 7E */	srwi r3, r3, 5
/* 805CB5BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CB5C0  1C 03 00 0C */	mulli r0, r3, 0xc
/* 805CB5C4  FC 20 E0 90 */	fmr f1, f28
/* 805CB5C8  FC 40 D8 90 */	fmr f2, f27
/* 805CB5CC  7F C3 F3 78 */	mr r3, r30
/* 805CB5D0  FC 80 18 90 */	fmr f4, f3
/* 805CB5D4  7E C4 B3 78 */	mr r4, r22
/* 805CB5D8  7D 08 02 14 */	add r8, r8, r0
/* 805CB5DC  38 A0 00 10 */	li r5, 0x10
/* 805CB5E0  80 C8 00 00 */	lwz r6, 0(r8)
/* 805CB5E4  39 20 00 FF */	li r9, 0xff
/* 805CB5E8  80 E8 00 04 */	lwz r7, 4(r8)
/* 805CB5EC  39 40 00 00 */	li r10, 0
/* 805CB5F0  81 08 00 08 */	lwz r8, 8(r8)
/* 805CB5F4  4B DE 4A B5 */	bl mFont_SetLineStrings
/* 805CB5F8  3B 39 00 01 */	addi r25, r25, 1
/* 805CB5FC  EF 7B E8 2A */	fadds f27, f27, f29
/* 805CB600  2C 19 00 07 */	cmpwi r25, 7
/* 805CB604  3A D6 00 10 */	addi r22, r22, 0x10
/* 805CB608  41 80 FF 90 */	blt lbl_805CB598
/* 805CB60C  A8 18 00 00 */	lha r0, 0(r24)
/* 805CB610  38 61 00 10 */	addi r3, r1, 0x10
/* 805CB614  38 80 00 03 */	li r4, 3
/* 805CB618  2C 00 00 00 */	cmpwi r0, 0
/* 805CB61C  41 82 00 18 */	beq lbl_805CB634
/* 805CB620  A8 B8 00 04 */	lha r5, 4(r24)
/* 805CB624  A8 18 00 02 */	lha r0, 2(r24)
/* 805CB628  38 A5 00 01 */	addi r5, r5, 1
/* 805CB62C  7C A0 2A 14 */	add r5, r0, r5
/* 805CB630  48 00 00 08 */	b lbl_805CB638
lbl_805CB634:
/* 805CB634  38 A0 00 00 */	li r5, 0
lbl_805CB638:
/* 805CB638  38 C0 00 03 */	li r6, 3
/* 805CB63C  38 E0 00 01 */	li r7, 1
/* 805CB640  39 00 00 00 */	li r8, 0
/* 805CB644  39 20 00 01 */	li r9, 1
/* 805CB648  4B DE 3E 31 */	bl mFont_UnintToString
/* 805CB64C  7C 60 1B 78 */	mr r0, r3
/* 805CB650  38 61 00 10 */	addi r3, r1, 0x10
/* 805CB654  7C 16 03 78 */	mr r22, r0
/* 805CB658  38 A0 00 01 */	li r5, 1
/* 805CB65C  7E C4 B3 78 */	mr r4, r22
/* 805CB660  4B DE 40 71 */	bl mFont_GetStringWidth
/* 805CB664  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CB668  3C 00 43 30 */	lis r0, 0x4330
/* 805CB66C  90 61 00 24 */	stw r3, 0x24(r1)
/* 805CB670  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064AF04@ha */
/* 805CB674  C8 24 AF 04 */	lfd f1, lit_678@l(r4)  /* 0x8064AF04@l */
/* 805CB678  3C C0 80 65 */	lis r6, lit_1201@ha /* 0x8064AF88@ha */
/* 805CB67C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805CB680  3C A0 80 65 */	lis r5, lit_1086@ha /* 0x8064AF60@ha */
/* 805CB684  3C 60 80 65 */	lis r3, lit_1202@ha /* 0x8064AF8C@ha */
/* 805CB688  C0 46 AF 88 */	lfs f2, lit_1201@l(r6)  /* 0x8064AF88@l */
/* 805CB68C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805CB690  38 00 00 01 */	li r0, 1
/* 805CB694  C0 65 AF 60 */	lfs f3, lit_1086@l(r5)  /* 0x8064AF60@l */
/* 805CB698  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805CB69C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805CB6A0  C0 03 AF 8C */	lfs f0, lit_1202@l(r3)  /* 0x8064AF8C@l */
/* 805CB6A4  38 64 AE B8 */	addi r3, r4, lit_526@l /* 0x8064AEB8@l */
/* 805CB6A8  EC 82 F8 2A */	fadds f4, f2, f31
/* 805CB6AC  EC 00 F0 2A */	fadds f0, f0, f30
/* 805CB6B0  3C A0 80 65 */	lis r5, lit_1082@ha /* 0x8064AF50@ha */
/* 805CB6B4  EC 43 00 72 */	fmuls f2, f3, f1
/* 805CB6B8  C0 23 00 00 */	lfs f1, 0(r3)
/* 805CB6BC  3C 80 80 65 */	lis r4, lit_1084@ha /* 0x8064AF58@ha */
/* 805CB6C0  C0 A5 AF 50 */	lfs f5, lit_1082@l(r5)  /* 0x8064AF50@l */
/* 805CB6C4  EC 01 00 2A */	fadds f0, f1, f0
/* 805CB6C8  90 01 00 08 */	stw r0, 8(r1)
/* 805CB6CC  EC 84 10 28 */	fsubs f4, f4, f2
/* 805CB6D0  C0 44 AF 58 */	lfs f2, lit_1084@l(r4)  /* 0x8064AF58@l */
/* 805CB6D4  38 00 00 00 */	li r0, 0
/* 805CB6D8  7F C3 F3 78 */	mr r3, r30
/* 805CB6DC  EF 82 00 28 */	fsubs f28, f2, f0
/* 805CB6E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CB6E4  EC 25 20 2A */	fadds f1, f5, f4
/* 805CB6E8  7E C5 B3 78 */	mr r5, r22
/* 805CB6EC  FC 40 E0 90 */	fmr f2, f28
/* 805CB6F0  38 81 00 10 */	addi r4, r1, 0x10
/* 805CB6F4  FC 80 18 90 */	fmr f4, f3
/* 805CB6F8  38 C0 00 14 */	li r6, 0x14
/* 805CB6FC  38 E0 00 14 */	li r7, 0x14
/* 805CB700  39 00 00 46 */	li r8, 0x46
/* 805CB704  39 20 00 FF */	li r9, 0xff
/* 805CB708  39 40 00 00 */	li r10, 0
/* 805CB70C  4B DE 49 9D */	bl mFont_SetLineStrings
/* 805CB710  A8 B8 00 00 */	lha r5, 0(r24)
/* 805CB714  38 61 00 10 */	addi r3, r1, 0x10
/* 805CB718  38 80 00 03 */	li r4, 3
/* 805CB71C  38 C0 00 03 */	li r6, 3
/* 805CB720  38 E0 00 01 */	li r7, 1
/* 805CB724  39 00 00 00 */	li r8, 0
/* 805CB728  39 20 00 01 */	li r9, 1
/* 805CB72C  4B DE 3D 4D */	bl mFont_UnintToString
/* 805CB730  3C 60 80 65 */	lis r3, lit_1204@ha /* 0x8064AF94@ha */
/* 805CB734  3C A0 80 65 */	lis r5, lit_1203@ha /* 0x8064AF90@ha */
/* 805CB738  38 83 AF 94 */	addi r4, r3, lit_1204@l /* 0x8064AF94@l */
/* 805CB73C  C0 25 AF 90 */	lfs f1, lit_1203@l(r5)  /* 0x8064AF90@l */
/* 805CB740  C0 04 00 00 */	lfs f0, 0(r4)
/* 805CB744  38 61 00 10 */	addi r3, r1, 0x10
/* 805CB748  38 80 00 03 */	li r4, 3
/* 805CB74C  38 A0 00 20 */	li r5, 0x20
/* 805CB750  EC 00 F8 2A */	fadds f0, f0, f31
/* 805CB754  EF A1 00 2A */	fadds f29, f1, f0
/* 805CB758  4B DF 0E CD */	bl func_803BC624
/* 805CB75C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CB760  3C 00 43 30 */	lis r0, 0x4330
/* 805CB764  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805CB768  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064AF04@ha */
/* 805CB76C  3C 60 80 65 */	lis r3, lit_1206@ha /* 0x8064AF9C@ha */
/* 805CB770  C8 44 AF 04 */	lfd f2, lit_678@l(r4)  /* 0x8064AF04@l */
/* 805CB774  90 01 00 18 */	stw r0, 0x18(r1)
/* 805CB778  38 A3 AF 9C */	addi r5, r3, lit_1206@l /* 0x8064AF9C@l */
/* 805CB77C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805CB780  3C 60 80 65 */	lis r3, lit_1086@ha /* 0x8064AF60@ha */
/* 805CB784  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 805CB788  38 83 AF 60 */	addi r4, r3, lit_1086@l /* 0x8064AF60@l */
/* 805CB78C  38 00 00 01 */	li r0, 1
/* 805CB790  C0 64 00 00 */	lfs f3, 0(r4)
/* 805CB794  EC 21 10 28 */	fsubs f1, f1, f2
/* 805CB798  3C 60 80 65 */	lis r3, lit_1205@ha /* 0x8064AF98@ha */
/* 805CB79C  38 83 AF 98 */	addi r4, r3, lit_1205@l /* 0x8064AF98@l */
/* 805CB7A0  90 01 00 08 */	stw r0, 8(r1)
/* 805CB7A4  38 00 00 00 */	li r0, 0
/* 805CB7A8  3C 60 80 65 */	lis r3, lit_1082@ha /* 0x8064AF50@ha */
/* 805CB7AC  EC 80 00 72 */	fmuls f4, f0, f1
/* 805CB7B0  C0 24 00 00 */	lfs f1, 0(r4)
/* 805CB7B4  C0 03 AF 50 */	lfs f0, lit_1082@l(r3)  /* 0x8064AF50@l */
/* 805CB7B8  FC 40 E0 90 */	fmr f2, f28
/* 805CB7BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CB7C0  7F C3 F3 78 */	mr r3, r30
/* 805CB7C4  EC A3 01 32 */	fmuls f5, f3, f4
/* 805CB7C8  38 81 00 10 */	addi r4, r1, 0x10
/* 805CB7CC  FC 80 18 90 */	fmr f4, f3
/* 805CB7D0  38 A0 00 03 */	li r5, 3
/* 805CB7D4  38 C0 00 14 */	li r6, 0x14
/* 805CB7D8  38 E0 00 14 */	li r7, 0x14
/* 805CB7DC  EC A1 28 2A */	fadds f5, f1, f5
/* 805CB7E0  39 00 00 46 */	li r8, 0x46
/* 805CB7E4  EC 20 E8 2A */	fadds f1, f0, f29
/* 805CB7E8  39 20 00 FF */	li r9, 0xff
/* 805CB7EC  39 40 00 00 */	li r10, 0
/* 805CB7F0  EF 7D 28 2A */	fadds f27, f29, f5
/* 805CB7F4  4B DE 48 B5 */	bl mFont_SetLineStrings
/* 805CB7F8  88 18 00 06 */	lbz r0, 6(r24)
/* 805CB7FC  28 00 00 00 */	cmplwi r0, 0
/* 805CB800  41 82 00 A4 */	beq lbl_805CB8A4
/* 805CB804  3C 60 80 65 */	lis r3, lit_1061@ha /* 0x8064AF40@ha */
/* 805CB808  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805CB80C  38 A3 AF 40 */	addi r5, r3, lit_1061@l /* 0x8064AF40@l */
/* 805CB810  C0 64 AE B8 */	lfs f3, lit_526@l(r4)  /* 0x8064AEB8@l */
/* 805CB814  C0 25 00 00 */	lfs f1, 0(r5)
/* 805CB818  38 60 00 00 */	li r3, 0
/* 805CB81C  FC 40 08 90 */	fmr f2, f1
/* 805CB820  4B E4 0B CD */	bl Matrix_scale
/* 805CB824  3C 60 80 65 */	lis r3, lit_1064@ha /* 0x8064AF4C@ha */
/* 805CB828  3C 80 80 65 */	lis r4, lit_1207@ha /* 0x8064AFA0@ha */
/* 805CB82C  38 A3 AF 4C */	addi r5, r3, lit_1064@l /* 0x8064AF4C@l */
/* 805CB830  C0 04 AF A0 */	lfs f0, lit_1207@l(r4)  /* 0x8064AFA0@l */
/* 805CB834  C0 25 00 00 */	lfs f1, 0(r5)
/* 805CB838  3C 60 80 65 */	lis r3, lit_1193@ha /* 0x8064AF68@ha */
/* 805CB83C  C0 63 AF 68 */	lfs f3, lit_1193@l(r3)  /* 0x8064AF68@l */
/* 805CB840  38 60 00 01 */	li r3, 1
/* 805CB844  EC 41 F0 2A */	fadds f2, f1, f30
/* 805CB848  FC 20 D8 90 */	fmr f1, f27
/* 805CB84C  EC 42 00 28 */	fsubs f2, f2, f0
/* 805CB850  4B E4 0A B1 */	bl Matrix_translate
/* 805CB854  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CB858  82 9F 02 D0 */	lwz r20, 0x2d0(r31)
/* 805CB85C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CB860  7F E3 FB 78 */	mr r3, r31
/* 805CB864  90 14 00 00 */	stw r0, 0(r20)
/* 805CB868  4B E4 1B 6D */	bl _Matrix_to_Mtx_new
/* 805CB86C  90 74 00 04 */	stw r3, 4(r20)
/* 805CB870  3C A0 DE 00 */	lis r5, 0xde00
/* 805CB874  3C 80 80 A3 */	lis r4, data_80A32EF0@ha /* 0x80A32EF0@ha */
/* 805CB878  3C 60 80 A3 */	lis r3, clg_win_hoshiT_model@ha /* 0x80A32200@ha */
/* 805CB87C  90 B4 00 08 */	stw r5, 8(r20)
/* 805CB880  38 84 2E F0 */	addi r4, r4, data_80A32EF0@l /* 0x80A32EF0@l */
/* 805CB884  38 03 22 00 */	addi r0, r3, clg_win_hoshiT_model@l /* 0x80A32200@l */
/* 805CB888  90 94 00 0C */	stw r4, 0xc(r20)
/* 805CB88C  3A 94 00 10 */	addi r20, r20, 0x10
/* 805CB890  7E 83 A3 78 */	mr r3, r20
/* 805CB894  90 B4 00 00 */	stw r5, 0(r20)
/* 805CB898  3A 94 00 08 */	addi r20, r20, 8
/* 805CB89C  90 03 00 04 */	stw r0, 4(r3)
/* 805CB8A0  92 9F 02 D0 */	stw r20, 0x2d0(r31)
lbl_805CB8A4:
/* 805CB8A4  A8 18 00 00 */	lha r0, 0(r24)
/* 805CB8A8  2C 00 00 00 */	cmpwi r0, 0
/* 805CB8AC  41 82 00 40 */	beq lbl_805CB8EC
/* 805CB8B0  FC 20 F8 90 */	fmr f1, f31
/* 805CB8B4  7F 83 E3 78 */	mr r3, r28
/* 805CB8B8  FC 40 F0 90 */	fmr f2, f30
/* 805CB8BC  7F A4 EB 78 */	mr r4, r29
/* 805CB8C0  7F C5 F3 78 */	mr r5, r30
/* 805CB8C4  7F E6 FB 78 */	mr r6, r31
/* 805CB8C8  7E E7 BB 78 */	mr r7, r23
/* 805CB8CC  4B FF F4 49 */	bl mCL_item_draw
/* 805CB8D0  FC 20 F8 90 */	fmr f1, f31
/* 805CB8D4  7F 83 E3 78 */	mr r3, r28
/* 805CB8D8  FC 40 F0 90 */	fmr f2, f30
/* 805CB8DC  7F C4 F3 78 */	mr r4, r30
/* 805CB8E0  7F E5 FB 78 */	mr r5, r31
/* 805CB8E4  7E E6 BB 78 */	mr r6, r23
/* 805CB8E8  4B FF F6 55 */	bl mCL_price_draw
lbl_805CB8EC:
/* 805CB8EC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 805CB8F0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 805CB8F4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 805CB8F8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 805CB8FC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 805CB900  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 805CB904  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 805CB908  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 805CB90C  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 805CB910  39 61 00 60 */	addi r11, r1, 0x60
/* 805CB914  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 805CB918  4B AC F5 E5 */	bl func_8009AEFC
/* 805CB91C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805CB920  7C 08 03 A6 */	mtlr r0
/* 805CB924  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805CB928  4E 80 00 20 */	blr 
