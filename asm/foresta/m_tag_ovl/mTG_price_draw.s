lbl_805FE1B8:
/* 805FE1B8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805FE1BC  7C 08 02 A6 */	mflr r0
/* 805FE1C0  90 01 00 84 */	stw r0, 0x84(r1)
/* 805FE1C4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805FE1C8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805FE1CC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805FE1D0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805FE1D4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805FE1D8  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805FE1DC  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 805FE1E0  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 805FE1E4  39 61 00 40 */	addi r11, r1, 0x40
/* 805FE1E8  4B A9 CC E1 */	bl func_8009AEC8
/* 805FE1EC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FE1F0  3C C0 80 6D */	lis r6, data_806CF828@ha /* 0x806CF828@ha */
/* 805FE1F4  88 05 00 00 */	lbz r0, 0(r5)
/* 805FE1F8  3B E6 F8 28 */	addi r31, r6, data_806CF828@l /* 0x806CF828@l */
/* 805FE1FC  80 C3 09 9C */	lwz r6, 0x99c(r3)
/* 805FE200  FF C0 18 90 */	fmr f30, f3
/* 805FE204  54 00 18 38 */	slwi r0, r0, 3
/* 805FE208  38 7F 0D 44 */	addi r3, r31, 0xd44
/* 805FE20C  83 C5 00 3C */	lwz r30, 0x3c(r5)
/* 805FE210  7C 9D 23 78 */	mr r29, r4
/* 805FE214  83 66 00 1C */	lwz r27, 0x1c(r6)
/* 805FE218  7F 43 00 2E */	lwzx r26, r3, r0
/* 805FE21C  38 60 00 01 */	li r3, 1
/* 805FE220  38 00 00 00 */	li r0, 0
/* 805FE224  FF 80 08 90 */	fmr f28, f1
/* 805FE228  90 61 00 08 */	stw r3, 8(r1)
/* 805FE22C  FF A0 10 90 */	fmr f29, f2
/* 805FE230  FF E0 28 90 */	fmr f31, f5
/* 805FE234  3B 9F 17 EC */	addi r28, r31, 0x17ec
/* 805FE238  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE23C  FC 80 F0 90 */	fmr f4, f30
/* 805FE240  7F A3 EB 78 */	mr r3, r29
/* 805FE244  80 9A 00 00 */	lwz r4, 0(r26)
/* 805FE248  88 DF 17 EC */	lbz r6, 0x17ec(r31)
/* 805FE24C  38 A0 00 10 */	li r5, 0x10
/* 805FE250  88 FC 00 01 */	lbz r7, 1(r28)
/* 805FE254  89 1C 00 02 */	lbz r8, 2(r28)
/* 805FE258  39 20 00 FF */	li r9, 0xff
/* 805FE25C  39 40 00 00 */	li r10, 0
/* 805FE260  4B DB 1E 49 */	bl mFont_SetLineStrings
/* 805FE264  7F 65 DB 78 */	mr r5, r27
/* 805FE268  38 61 00 10 */	addi r3, r1, 0x10
/* 805FE26C  38 80 00 06 */	li r4, 6
/* 805FE270  38 C0 00 05 */	li r6, 5
/* 805FE274  38 E0 00 00 */	li r7, 0
/* 805FE278  39 00 00 01 */	li r8, 1
/* 805FE27C  39 20 00 01 */	li r9, 1
/* 805FE280  4B DB 11 F9 */	bl mFont_UnintToString
/* 805FE284  3C 60 80 65 */	lis r3, lit_1086@ha /* 0x8064B8B4@ha */
/* 805FE288  EF BD F8 2A */	fadds f29, f29, f31
/* 805FE28C  38 83 B8 B4 */	addi r4, r3, lit_1086@l /* 0x8064B8B4@l */
/* 805FE290  38 61 00 10 */	addi r3, r1, 0x10
/* 805FE294  C0 04 00 00 */	lfs f0, 0(r4)
/* 805FE298  38 80 00 06 */	li r4, 6
/* 805FE29C  38 A0 00 01 */	li r5, 1
/* 805FE2A0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805FE2A4  EF 9C 00 2A */	fadds f28, f28, f0
/* 805FE2A8  4B DB 14 29 */	bl mFont_GetStringWidth
/* 805FE2AC  38 63 00 05 */	addi r3, r3, 5
/* 805FE2B0  3C 00 43 30 */	lis r0, 0x4330
/* 805FE2B4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805FE2B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805FE2BC  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805FE2C0  38 00 00 00 */	li r0, 0
/* 805FE2C4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805FE2C8  38 64 B8 24 */	addi r3, r4, lit_523@l /* 0x8064B824@l */
/* 805FE2CC  C8 23 00 00 */	lfd f1, 0(r3)
/* 805FE2D0  38 80 00 01 */	li r4, 1
/* 805FE2D4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805FE2D8  FC 40 E8 90 */	fmr f2, f29
/* 805FE2DC  90 81 00 08 */	stw r4, 8(r1)
/* 805FE2E0  FC 60 F0 90 */	fmr f3, f30
/* 805FE2E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805FE2E8  7F A3 EB 78 */	mr r3, r29
/* 805FE2EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE2F0  FC 80 F0 90 */	fmr f4, f30
/* 805FE2F4  38 A0 00 10 */	li r5, 0x10
/* 805FE2F8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 805FE2FC  80 9A 00 00 */	lwz r4, 0(r26)
/* 805FE300  39 20 00 FF */	li r9, 0xff
/* 805FE304  88 DF 17 EC */	lbz r6, 0x17ec(r31)
/* 805FE308  EC 3C 00 2A */	fadds f1, f28, f0
/* 805FE30C  88 FC 00 01 */	lbz r7, 1(r28)
/* 805FE310  89 1C 00 02 */	lbz r8, 2(r28)
/* 805FE314  39 40 00 00 */	li r10, 0
/* 805FE318  38 84 00 14 */	addi r4, r4, 0x14
/* 805FE31C  4B DB 1D 8D */	bl mFont_SetLineStrings
/* 805FE320  2C 1E 00 02 */	cmpwi r30, 2
/* 805FE324  41 80 00 08 */	blt lbl_805FE32C
/* 805FE328  3B DE 00 01 */	addi r30, r30, 1
lbl_805FE32C:
/* 805FE32C  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805FE330  3B 40 00 00 */	li r26, 0
/* 805FE334  CB E3 B8 24 */	lfd f31, lit_523@l(r3)  /* 0x8064B824@l */
/* 805FE338  3F 80 43 30 */	lis r28, 0x4330
lbl_805FE33C:
/* 805FE33C  7C 1A F0 00 */	cmpw r26, r30
/* 805FE340  40 82 00 0C */	bne lbl_805FE34C
/* 805FE344  38 BF 19 7C */	addi r5, r31, 0x197c
/* 805FE348  48 00 00 18 */	b lbl_805FE360
lbl_805FE34C:
/* 805FE34C  2C 1A 00 02 */	cmpwi r26, 2
/* 805FE350  40 82 00 0C */	bne lbl_805FE35C
/* 805FE354  38 BF 19 88 */	addi r5, r31, 0x1988
/* 805FE358  48 00 00 08 */	b lbl_805FE360
lbl_805FE35C:
/* 805FE35C  38 BF 19 88 */	addi r5, r31, 0x1988
lbl_805FE360:
/* 805FE360  38 00 00 01 */	li r0, 1
/* 805FE364  3B 61 00 10 */	addi r27, r1, 0x10
/* 805FE368  90 01 00 08 */	stw r0, 8(r1)
/* 805FE36C  38 00 00 00 */	li r0, 0
/* 805FE370  7F 7B D2 14 */	add r27, r27, r26
/* 805FE374  FC 20 E0 90 */	fmr f1, f28
/* 805FE378  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE37C  FC 40 E8 90 */	fmr f2, f29
/* 805FE380  FC 60 F0 90 */	fmr f3, f30
/* 805FE384  7F A3 EB 78 */	mr r3, r29
/* 805FE388  FC 80 F0 90 */	fmr f4, f30
/* 805FE38C  80 C5 00 00 */	lwz r6, 0(r5)
/* 805FE390  7F 64 DB 78 */	mr r4, r27
/* 805FE394  80 E5 00 04 */	lwz r7, 4(r5)
/* 805FE398  81 05 00 08 */	lwz r8, 8(r5)
/* 805FE39C  38 A0 00 01 */	li r5, 1
/* 805FE3A0  39 20 00 FF */	li r9, 0xff
/* 805FE3A4  39 40 00 00 */	li r10, 0
/* 805FE3A8  4B DB 1D 01 */	bl mFont_SetLineStrings
/* 805FE3AC  7F 63 DB 78 */	mr r3, r27
/* 805FE3B0  38 80 00 01 */	li r4, 1
/* 805FE3B4  38 A0 00 01 */	li r5, 1
/* 805FE3B8  4B DB 13 19 */	bl mFont_GetStringWidth
/* 805FE3BC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805FE3C0  3B 5A 00 01 */	addi r26, r26, 1
/* 805FE3C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805FE3C8  2C 1A 00 06 */	cmpwi r26, 6
/* 805FE3CC  93 81 00 18 */	stw r28, 0x18(r1)
/* 805FE3D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805FE3D4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805FE3D8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 805FE3DC  EF 9C 00 2A */	fadds f28, f28, f0
/* 805FE3E0  41 80 FF 5C */	blt lbl_805FE33C
/* 805FE3E4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805FE3E8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805FE3EC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805FE3F0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805FE3F4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805FE3F8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805FE3FC  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 805FE400  39 61 00 40 */	addi r11, r1, 0x40
/* 805FE404  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 805FE408  4B A9 CB 0D */	bl func_8009AF14
/* 805FE40C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805FE410  7C 08 03 A6 */	mtlr r0
/* 805FE414  38 21 00 80 */	addi r1, r1, 0x80
/* 805FE418  4E 80 00 20 */	blr 
