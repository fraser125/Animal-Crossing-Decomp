lbl_805EDF8C:
/* 805EDF8C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805EDF90  7C 08 02 A6 */	mflr r0
/* 805EDF94  90 01 00 84 */	stw r0, 0x84(r1)
/* 805EDF98  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805EDF9C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805EDFA0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805EDFA4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805EDFA8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805EDFAC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805EDFB0  39 61 00 50 */	addi r11, r1, 0x50
/* 805EDFB4  4B AA CF 11 */	bl func_8009AEC4
/* 805EDFB8  7C 7D 1B 78 */	mr r29, r3
/* 805EDFBC  80 63 02 D0 */	lwz r3, 0x2d0(r3)
/* 805EDFC0  3D 80 E7 00 */	lis r12, 0xe700
/* 805EDFC4  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 805EDFC8  91 83 00 00 */	stw r12, 0(r3)
/* 805EDFCC  39 60 00 00 */	li r11, 0
/* 805EDFD0  3D 40 E2 00 */	lis r10, 0xE200 /* 0xE2001E01@ha */
/* 805EDFD4  38 C0 00 01 */	li r6, 1
/* 805EDFD8  91 63 00 04 */	stw r11, 4(r3)
/* 805EDFDC  39 4A 1E 01 */	addi r10, r10, 0x1E01 /* 0xE2001E01@l */
/* 805EDFE0  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 805EDFE4  2C 08 00 00 */	cmpwi r8, 0
/* 805EDFE8  91 43 00 08 */	stw r10, 8(r3)
/* 805EDFEC  7D 3E 4B 78 */	mr r30, r9
/* 805EDFF0  FF E0 18 90 */	fmr f31, f3
/* 805EDFF4  90 C3 00 0C */	stw r6, 0xc(r3)
/* 805EDFF8  90 03 00 10 */	stw r0, 0x10(r3)
/* 805EDFFC  88 07 00 01 */	lbz r0, 1(r7)
/* 805EE000  88 C7 00 00 */	lbz r6, 0(r7)
/* 805EE004  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805EE008  89 07 00 02 */	lbz r8, 2(r7)
/* 805EE00C  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 805EE010  89 27 00 03 */	lbz r9, 3(r7)
/* 805EE014  51 00 44 2E */	rlwimi r0, r8, 8, 0x10, 0x17
/* 805EE018  51 20 06 3E */	rlwimi r0, r9, 0, 0x18, 0x1f
/* 805EE01C  90 03 00 14 */	stw r0, 0x14(r3)
/* 805EE020  41 82 00 1C */	beq lbl_805EE03C
/* 805EE024  3C C0 F9 00 */	lis r6, 0xf900
/* 805EE028  38 00 FF 28 */	li r0, -216
/* 805EE02C  90 C3 00 18 */	stw r6, 0x18(r3)
/* 805EE030  90 03 00 1C */	stw r0, 0x1c(r3)
/* 805EE034  38 63 00 20 */	addi r3, r3, 0x20
/* 805EE038  48 00 00 6C */	b lbl_805EE0A4
lbl_805EE03C:
/* 805EE03C  88 07 00 03 */	lbz r0, 3(r7)
/* 805EE040  28 00 00 FF */	cmplwi r0, 0xff
/* 805EE044  40 82 00 34 */	bne lbl_805EE078
/* 805EE048  3C 00 F9 00 */	lis r0, 0xf900
/* 805EE04C  3C E0 FC 17 */	lis r7, 0xFC17 /* 0xFC177E2E@ha */
/* 805EE050  90 03 00 18 */	stw r0, 0x18(r3)
/* 805EE054  38 00 FF FE */	li r0, -2
/* 805EE058  3C C0 33 FE */	lis r6, 0x33FE /* 0x33FDF2F9@ha */
/* 805EE05C  38 E7 7E 2E */	addi r7, r7, 0x7E2E /* 0xFC177E2E@l */
/* 805EE060  90 03 00 1C */	stw r0, 0x1c(r3)
/* 805EE064  38 06 F2 F9 */	addi r0, r6, 0xF2F9 /* 0x33FDF2F9@l */
/* 805EE068  90 E3 00 20 */	stw r7, 0x20(r3)
/* 805EE06C  90 03 00 24 */	stw r0, 0x24(r3)
/* 805EE070  38 63 00 28 */	addi r3, r3, 0x28
/* 805EE074  48 00 00 30 */	b lbl_805EE0A4
lbl_805EE078:
/* 805EE078  3C 00 F9 00 */	lis r0, 0xf900
/* 805EE07C  3C E0 FC 17 */	lis r7, 0xFC17 /* 0xFC17162E@ha */
/* 805EE080  90 03 00 18 */	stw r0, 0x18(r3)
/* 805EE084  38 00 FF 28 */	li r0, -216
/* 805EE088  3C C0 33 2E */	lis r6, 0x332E /* 0x332DFEFF@ha */
/* 805EE08C  38 E7 16 2E */	addi r7, r7, 0x162E /* 0xFC17162E@l */
/* 805EE090  90 03 00 1C */	stw r0, 0x1c(r3)
/* 805EE094  38 06 FE FF */	addi r0, r6, 0xFEFF /* 0x332DFEFF@l */
/* 805EE098  90 E3 00 20 */	stw r7, 0x20(r3)
/* 805EE09C  90 03 00 24 */	stw r0, 0x24(r3)
/* 805EE0A0  38 63 00 28 */	addi r3, r3, 0x28
lbl_805EE0A4:
/* 805EE0A4  3C E0 80 65 */	lis r7, lit_507@ha /* 0x8064B798@ha */
/* 805EE0A8  3C C0 80 65 */	lis r6, lit_737@ha /* 0x8064B7B8@ha */
/* 805EE0AC  C0 07 B7 98 */	lfs f0, lit_507@l(r7)  /* 0x8064B798@l */
/* 805EE0B0  39 06 B7 B8 */	addi r8, r6, lit_737@l /* 0x8064B7B8@l */
/* 805EE0B4  C0 68 00 00 */	lfs f3, 0(r8)
/* 805EE0B8  3C 00 E7 00 */	lis r0, 0xe700
/* 805EE0BC  EC 00 F8 24 */	fdivs f0, f0, f31
/* 805EE0C0  3C E0 80 65 */	lis r7, lit_458@ha /* 0x8064B78C@ha */
/* 805EE0C4  39 67 B7 8C */	addi r11, r7, lit_458@l /* 0x8064B78C@l */
/* 805EE0C8  90 03 00 00 */	stw r0, 0(r3)
/* 805EE0CC  38 00 00 00 */	li r0, 0
/* 805EE0D0  3C C0 E3 00 */	lis r6, 0xE300 /* 0xE3001001@ha */
/* 805EE0D4  EC 23 00 72 */	fmuls f1, f3, f1
/* 805EE0D8  3B 86 10 01 */	addi r28, r6, 0x1001 /* 0xE3001001@l */
/* 805EE0DC  90 03 00 04 */	stw r0, 4(r3)
/* 805EE0E0  3F 60 00 01 */	lis r27, 0x0001 /* 0x00008000@ha */
/* 805EE0E4  3D 40 80 65 */	lis r10, lit_736@ha /* 0x8064B7B4@ha */
/* 805EE0E8  3D 20 43 30 */	lis r9, 0x4330
/* 805EE0EC  FC 20 08 1E */	fctiwz f1, f1
/* 805EE0F0  39 8A B7 B4 */	addi r12, r10, lit_736@l /* 0x8064B7B4@l */
/* 805EE0F4  3F 40 F0 8F */	lis r26, 0xF08F /* 0xF08F4010@ha */
/* 805EE0F8  3C E0 80 65 */	lis r7, lit_740@ha /* 0x8064B7C4@ha */
/* 805EE0FC  93 83 00 08 */	stw r28, 8(r3)
/* 805EE100  3B 7B 80 00 */	addi r27, r27, 0x8000 /* 0x00008000@l */
/* 805EE104  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805EE108  3D 00 80 65 */	lis r8, lit_738@ha /* 0x8064B7BC@ha */
/* 805EE10C  C0 27 B7 C4 */	lfs f1, lit_740@l(r7)  /* 0x8064B7C4@l */
/* 805EE110  38 C6 0C 00 */	addi r6, r6, 0xc00
/* 805EE114  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 805EE118  3B 5A 40 10 */	addi r26, r26, 0x4010 /* 0xF08F4010@l */
/* 805EE11C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EE120  93 63 00 0C */	stw r27, 0xc(r3)
/* 805EE124  6C EA 80 00 */	xoris r10, r7, 0x8000
/* 805EE128  C0 88 B7 BC */	lfs f4, lit_738@l(r8)  /* 0x8064B7BC@l */
/* 805EE12C  90 C3 00 10 */	stw r6, 0x10(r3)
/* 805EE130  3C E0 80 65 */	lis r7, lit_739@ha /* 0x8064B7C0@ha */
/* 805EE134  39 07 B7 C0 */	addi r8, r7, lit_739@l /* 0x8064B7C0@l */
/* 805EE138  FC 20 00 1E */	fctiwz f1, f0
/* 805EE13C  C0 68 00 00 */	lfs f3, 0(r8)
/* 805EE140  3C E0 80 65 */	lis r7, lit_741@ha /* 0x8064B7C8@ha */
/* 805EE144  90 03 00 14 */	stw r0, 0x14(r3)
/* 805EE148  3D 00 D2 F1 */	lis r8, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805EE14C  C8 AB 00 00 */	lfd f5, 0(r11)
/* 805EE150  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 805EE154  3F 20 FD 44 */	lis r25, 0xFD44 /* 0xFD441C1F@ha */
/* 805EE158  C0 CC 00 00 */	lfs f6, 0(r12)
/* 805EE15C  39 79 1C 1F */	addi r11, r25, 0x1C1F /* 0xFD441C1F@l */
/* 805EE160  93 43 00 18 */	stw r26, 0x18(r3)
/* 805EE164  EC 84 07 F2 */	fmuls f4, f4, f31
/* 805EE168  EC 43 10 28 */	fsubs f2, f3, f2
/* 805EE16C  C0 07 B7 C8 */	lfs f0, lit_741@l(r7)  /* 0x8064B7C8@l */
/* 805EE170  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 805EE174  38 C8 FA 00 */	addi r6, r8, 0xFA00 /* 0xD2F0FA00@l */
/* 805EE178  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 805EE17C  91 63 00 20 */	stw r11, 0x20(r3)
/* 805EE180  EF C2 20 28 */	fsubs f30, f2, f4
/* 805EE184  80 04 00 04 */	lwz r0, 4(r4)
/* 805EE188  91 41 00 1C */	stw r10, 0x1c(r1)
/* 805EE18C  91 21 00 18 */	stw r9, 0x18(r1)
/* 805EE190  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 805EE194  90 03 00 24 */	stw r0, 0x24(r3)
/* 805EE198  EC 21 28 28 */	fsubs f1, f1, f5
/* 805EE19C  90 C3 00 28 */	stw r6, 0x28(r3)
/* 805EE1A0  38 63 00 30 */	addi r3, r3, 0x30
/* 805EE1A4  EC 26 08 2A */	fadds f1, f6, f1
/* 805EE1A8  EF A1 20 28 */	fsubs f29, f1, f4
/* 805EE1AC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 805EE1B0  40 80 00 78 */	bge lbl_805EE228
/* 805EE1B4  3C A0 80 65 */	lis r5, lit_742@ha /* 0x8064B7CC@ha */
/* 805EE1B8  3C 80 80 65 */	lis r4, data_8064B784@ha /* 0x8064B784@ha */
/* 805EE1BC  C0 05 B7 CC */	lfs f0, lit_742@l(r5)  /* 0x8064B7CC@l */
/* 805EE1C0  39 00 00 00 */	li r8, 0
/* 805EE1C4  C0 84 B7 84 */	lfs f4, data_8064B784@l(r4)  /* 0x8064B784@l */
/* 805EE1C8  39 20 00 00 */	li r9, 0
/* 805EE1CC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805EE1D0  93 E1 00 08 */	stw r31, 8(r1)
/* 805EE1D4  EC 64 07 72 */	fmuls f3, f4, f29
/* 805EE1D8  39 40 00 00 */	li r10, 0
/* 805EE1DC  EC 44 07 B2 */	fmuls f2, f4, f30
/* 805EE1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE1E4  EC 3D 00 2A */	fadds f1, f29, f0
/* 805EE1E8  EC 1E 00 2A */	fadds f0, f30, f0
/* 805EE1EC  FC 60 18 1E */	fctiwz f3, f3
/* 805EE1F0  EC 24 00 72 */	fmuls f1, f4, f1
/* 805EE1F4  EC 04 00 32 */	fmuls f0, f4, f0
/* 805EE1F8  FC 40 10 1E */	fctiwz f2, f2
/* 805EE1FC  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805EE200  FC 20 08 1E */	fctiwz f1, f1
/* 805EE204  FC 00 00 1E */	fctiwz f0, f0
/* 805EE208  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805EE20C  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 805EE210  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805EE214  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805EE218  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805EE21C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805EE220  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 805EE224  4B DF 78 5D */	bl gfx_gSPScisTextureRectangle1
lbl_805EE228:
/* 805EE228  2C 1E 00 00 */	cmpwi r30, 0
/* 805EE22C  41 82 02 1C */	beq lbl_805EE448
/* 805EE230  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805EE234  3C 00 43 30 */	lis r0, 0x4330
/* 805EE238  38 A4 52 F0 */	addi r5, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805EE23C  3D 40 80 65 */	lis r10, lit_743@ha /* 0x8064B7D0@ha */
/* 805EE240  80 C5 00 00 */	lwz r6, 0(r5)
/* 805EE244  3C 80 80 65 */	lis r4, lit_754@ha /* 0x8064B7EC@ha */
/* 805EE248  38 A4 B7 EC */	addi r5, r4, lit_754@l /* 0x8064B7EC@l */
/* 805EE24C  38 E0 00 28 */	li r7, 0x28
/* 805EE250  81 06 00 A0 */	lwz r8, 0xa0(r6)
/* 805EE254  3C 80 80 65 */	lis r4, lit_744@ha /* 0x8064B7D4@ha */
/* 805EE258  39 24 B7 D4 */	addi r9, r4, lit_744@l /* 0x8064B7D4@l */
/* 805EE25C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805EE260  7C C8 3B 96 */	divwu r6, r8, r7
/* 805EE264  3C 80 80 65 */	lis r4, lit_507@ha /* 0x8064B798@ha */
/* 805EE268  C8 45 00 00 */	lfd f2, 0(r5)
/* 805EE26C  C0 69 00 00 */	lfs f3, 0(r9)
/* 805EE270  C0 8A B7 D0 */	lfs f4, lit_743@l(r10)  /* 0x8064B7D0@l */
/* 805EE274  C0 04 B7 98 */	lfs f0, lit_507@l(r4)  /* 0x8064B798@l */
/* 805EE278  7C 06 39 D6 */	mullw r0, r6, r7
/* 805EE27C  7C 00 40 50 */	subf r0, r0, r8
/* 805EE280  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805EE284  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 805EE288  EC 21 10 28 */	fsubs f1, f1, f2
/* 805EE28C  EC 23 00 72 */	fmuls f1, f3, f1
/* 805EE290  EC A4 00 72 */	fmuls f5, f4, f1
/* 805EE294  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 805EE298  40 81 00 08 */	ble lbl_805EE2A0
/* 805EE29C  EC A4 28 28 */	fsubs f5, f4, f5
lbl_805EE2A0:
/* 805EE2A0  3C A0 80 65 */	lis r5, lit_746@ha /* 0x8064B7DC@ha */
/* 805EE2A4  3C 80 80 65 */	lis r4, lit_749@ha /* 0x8064B7E8@ha */
/* 805EE2A8  C0 25 B7 DC */	lfs f1, lit_746@l(r5)  /* 0x8064B7DC@l */
/* 805EE2AC  3C C0 80 65 */	lis r6, lit_745@ha /* 0x8064B7D8@ha */
/* 805EE2B0  C0 04 B7 E8 */	lfs f0, lit_749@l(r4)  /* 0x8064B7E8@l */
/* 805EE2B4  3C 00 E7 00 */	lis r0, 0xe700
/* 805EE2B8  EC 21 01 72 */	fmuls f1, f1, f5
/* 805EE2BC  C0 46 B7 D8 */	lfs f2, lit_745@l(r6)  /* 0x8064B7D8@l */
/* 805EE2C0  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE2001E01@ha */
/* 805EE2C4  3C 80 80 65 */	lis r4, lit_748@ha /* 0x8064B7E4@ha */
/* 805EE2C8  EC 00 01 72 */	fmuls f0, f0, f5
/* 805EE2CC  3B 86 1E 01 */	addi r28, r6, 0x1E01 /* 0xE2001E01@l */
/* 805EE2D0  EC 62 08 2A */	fadds f3, f2, f1
/* 805EE2D4  C0 24 B7 E4 */	lfs f1, lit_748@l(r4)  /* 0x8064B7E4@l */
/* 805EE2D8  3C A0 80 65 */	lis r5, lit_747@ha /* 0x8064B7E0@ha */
/* 805EE2DC  90 03 00 00 */	stw r0, 0(r3)
/* 805EE2E0  C0 45 B7 E0 */	lfs f2, lit_747@l(r5)  /* 0x8064B7E0@l */
/* 805EE2E4  EC 01 00 2A */	fadds f0, f1, f0
/* 805EE2E8  38 80 00 00 */	li r4, 0
/* 805EE2EC  FC 60 18 1E */	fctiwz f3, f3
/* 805EE2F0  3C A0 E3 00 */	lis r5, 0xE300 /* 0xE3001001@ha */
/* 805EE2F4  EC 22 01 72 */	fmuls f1, f2, f5
/* 805EE2F8  FC 00 00 1E */	fctiwz f0, f0
/* 805EE2FC  90 83 00 04 */	stw r4, 4(r3)
/* 805EE300  38 05 10 01 */	addi r0, r5, 0x1001 /* 0xE3001001@l */
/* 805EE304  90 03 00 08 */	stw r0, 8(r3)
/* 805EE308  FC 20 08 1E */	fctiwz f1, f1
/* 805EE30C  3D 80 FA 00 */	lis r12, 0xfa00
/* 805EE310  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805EE314  3F 40 FB 00 */	lis r26, 0xfb00
/* 805EE318  3F C0 F9 00 */	lis r30, 0xf900
/* 805EE31C  3D 40 FD 6C */	lis r10, 0xFD6C /* 0xFD6C0C0F@ha */
/* 805EE320  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805EE324  3D 20 80 AA */	lis r9, data_80AA5760@ha /* 0x80AA5760@ha */
/* 805EE328  90 83 00 0C */	stw r4, 0xc(r3)
/* 805EE32C  3D 00 D2 F0 */	lis r8, 0xD2F0 /* 0xD2F00A00@ha */
/* 805EE330  54 A7 82 1E */	rlwinm r7, r5, 0x10, 8, 0xf
/* 805EE334  3C A0 80 65 */	lis r5, lit_741@ha /* 0x8064B7C8@ha */
/* 805EE338  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805EE33C  60 F9 00 FF */	ori r25, r7, 0xff
/* 805EE340  C0 05 B7 C8 */	lfs f0, lit_741@l(r5)  /* 0x8064B7C8@l */
/* 805EE344  3C E0 FC 31 */	lis r7, 0xFC31 /* 0xFC30FE61@ha */
/* 805EE348  91 83 00 10 */	stw r12, 0x10(r3)
/* 805EE34C  39 80 FF 08 */	li r12, -248
/* 805EE350  81 61 00 14 */	lwz r11, 0x14(r1)
/* 805EE354  38 E7 FE 61 */	addi r7, r7, 0xFE61 /* 0xFC30FE61@l */
/* 805EE358  93 23 00 14 */	stw r25, 0x14(r3)
/* 805EE35C  3C C0 55 FF */	lis r6, 0x55FF /* 0x55FEF379@ha */
/* 805EE360  55 7B 82 1E */	rlwinm r27, r11, 0x10, 8, 0xf
/* 805EE364  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 805EE368  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805EE36C  81 61 00 1C */	lwz r11, 0x1c(r1)
/* 805EE370  93 43 00 18 */	stw r26, 0x18(r3)
/* 805EE374  51 7B C0 0E */	rlwimi r27, r11, 0x18, 0, 7
/* 805EE378  51 7B 44 2E */	rlwimi r27, r11, 8, 0x10, 0x17
/* 805EE37C  39 6A 0C 0F */	addi r11, r10, 0x0C0F /* 0xFD6C0C0F@l */
/* 805EE380  63 65 00 FF */	ori r5, r27, 0xff
/* 805EE384  39 49 57 60 */	addi r10, r9, data_80AA5760@l /* 0x80AA5760@l */
/* 805EE388  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 805EE38C  39 28 0A 00 */	addi r9, r8, 0x0A00 /* 0xD2F00A00@l */
/* 805EE390  39 00 FF FE */	li r8, -2
/* 805EE394  38 A6 F3 79 */	addi r5, r6, 0xF379 /* 0x55FEF379@l */
/* 805EE398  93 83 00 20 */	stw r28, 0x20(r3)
/* 805EE39C  90 83 00 24 */	stw r4, 0x24(r3)
/* 805EE3A0  93 C3 00 28 */	stw r30, 0x28(r3)
/* 805EE3A4  91 83 00 2C */	stw r12, 0x2c(r3)
/* 805EE3A8  90 03 00 30 */	stw r0, 0x30(r3)
/* 805EE3AC  90 83 00 34 */	stw r4, 0x34(r3)
/* 805EE3B0  91 63 00 38 */	stw r11, 0x38(r3)
/* 805EE3B4  91 43 00 3C */	stw r10, 0x3c(r3)
/* 805EE3B8  91 23 00 40 */	stw r9, 0x40(r3)
/* 805EE3BC  93 C3 00 48 */	stw r30, 0x48(r3)
/* 805EE3C0  91 03 00 4C */	stw r8, 0x4c(r3)
/* 805EE3C4  90 E3 00 50 */	stw r7, 0x50(r3)
/* 805EE3C8  90 A3 00 54 */	stw r5, 0x54(r3)
/* 805EE3CC  38 63 00 58 */	addi r3, r3, 0x58
/* 805EE3D0  40 80 00 78 */	bge lbl_805EE448
/* 805EE3D4  3C A0 80 65 */	lis r5, lit_742@ha /* 0x8064B7CC@ha */
/* 805EE3D8  3C 80 80 65 */	lis r4, data_8064B784@ha /* 0x8064B784@ha */
/* 805EE3DC  C0 05 B7 CC */	lfs f0, lit_742@l(r5)  /* 0x8064B7CC@l */
/* 805EE3E0  39 00 00 00 */	li r8, 0
/* 805EE3E4  C0 84 B7 84 */	lfs f4, data_8064B784@l(r4)  /* 0x8064B784@l */
/* 805EE3E8  39 20 00 00 */	li r9, 0
/* 805EE3EC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805EE3F0  93 E1 00 08 */	stw r31, 8(r1)
/* 805EE3F4  EC 64 07 72 */	fmuls f3, f4, f29
/* 805EE3F8  39 40 00 00 */	li r10, 0
/* 805EE3FC  EC 44 07 B2 */	fmuls f2, f4, f30
/* 805EE400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE404  EC 3D 00 2A */	fadds f1, f29, f0
/* 805EE408  EC 1E 00 2A */	fadds f0, f30, f0
/* 805EE40C  FC 60 18 1E */	fctiwz f3, f3
/* 805EE410  EC 24 00 72 */	fmuls f1, f4, f1
/* 805EE414  EC 04 00 32 */	fmuls f0, f4, f0
/* 805EE418  FC 40 10 1E */	fctiwz f2, f2
/* 805EE41C  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 805EE420  FC 20 08 1E */	fctiwz f1, f1
/* 805EE424  FC 00 00 1E */	fctiwz f0, f0
/* 805EE428  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 805EE42C  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 805EE430  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805EE434  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805EE438  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805EE43C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 805EE440  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 805EE444  4B DF 76 3D */	bl gfx_gSPScisTextureRectangle1
lbl_805EE448:
/* 805EE448  3C 00 E7 00 */	lis r0, 0xe700
/* 805EE44C  3D 00 E3 00 */	lis r8, 0xE300 /* 0xE3001001@ha */
/* 805EE450  90 03 00 00 */	stw r0, 0(r3)
/* 805EE454  39 20 00 00 */	li r9, 0
/* 805EE458  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 805EE45C  3C 80 E2 00 */	lis r4, 0xE200 /* 0xE2001E01@ha */
/* 805EE460  91 23 00 04 */	stw r9, 4(r3)
/* 805EE464  38 C8 10 01 */	addi r6, r8, 0x1001 /* 0xE3001001@l */
/* 805EE468  38 05 80 00 */	addi r0, r5, 0x8000 /* 0x00008000@l */
/* 805EE46C  38 E4 1E 01 */	addi r7, r4, 0x1E01 /* 0xE2001E01@l */
/* 805EE470  90 C3 00 08 */	stw r6, 8(r3)
/* 805EE474  3C C0 F9 00 */	lis r6, 0xf900
/* 805EE478  38 A0 FF 08 */	li r5, -248
/* 805EE47C  38 88 0C 00 */	addi r4, r8, 0xc00
/* 805EE480  90 03 00 0C */	stw r0, 0xc(r3)
/* 805EE484  3C 00 00 08 */	lis r0, 8
/* 805EE488  90 E3 00 10 */	stw r7, 0x10(r3)
/* 805EE48C  91 23 00 14 */	stw r9, 0x14(r3)
/* 805EE490  90 C3 00 18 */	stw r6, 0x18(r3)
/* 805EE494  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 805EE498  38 63 00 20 */	addi r3, r3, 0x20
/* 805EE49C  7C 65 1B 78 */	mr r5, r3
/* 805EE4A0  90 83 00 00 */	stw r4, 0(r3)
/* 805EE4A4  38 63 00 08 */	addi r3, r3, 8
/* 805EE4A8  90 05 00 04 */	stw r0, 4(r5)
/* 805EE4AC  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 805EE4B0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805EE4B4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805EE4B8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805EE4BC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805EE4C0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805EE4C4  39 61 00 50 */	addi r11, r1, 0x50
/* 805EE4C8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805EE4CC  4B AA CA 45 */	bl func_8009AF10
/* 805EE4D0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805EE4D4  7C 08 03 A6 */	mtlr r0
/* 805EE4D8  38 21 00 80 */	addi r1, r1, 0x80
/* 805EE4DC  4E 80 00 20 */	blr 
