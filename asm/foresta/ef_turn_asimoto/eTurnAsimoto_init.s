lbl_80624FC4:
/* 80624FC4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80624FC8  7C 08 02 A6 */	mflr r0
/* 80624FCC  90 01 01 14 */	stw r0, 0x114(r1)
/* 80624FD0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80624FD4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80624FD8  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80624FDC  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80624FE0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80624FE4  4B A7 5E D9 */	bl func_8009AEBC
/* 80624FE8  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80624FEC  7C 79 1B 78 */	mr r25, r3
/* 80624FF0  7C 9A 23 78 */	mr r26, r4
/* 80624FF4  7C DB 33 78 */	mr r27, r6
/* 80624FF8  7C FC 3B 78 */	mr r28, r7
/* 80624FFC  7D 1D 43 78 */	mr r29, r8
/* 80625000  7D 3E 4B 78 */	mr r30, r9
/* 80625004  7C A3 07 34 */	extsh r3, r5
/* 80625008  4B D9 5A E9 */	bl sin_s
/* 8062500C  FF C0 08 90 */	fmr f30, f1
/* 80625010  A8 61 00 10 */	lha r3, 0x10(r1)
/* 80625014  4B D9 5A 89 */	bl cos_s
/* 80625018  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062501C  FF E0 08 90 */	fmr f31, f1
/* 80625020  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80625024  3F E3 00 02 */	addis r31, r3, 2
/* 80625028  80 1F 60 9C */	lwz r0, 0x609c(r31)
/* 8062502C  28 00 00 00 */	cmplwi r0, 0
/* 80625030  41 82 05 AC */	beq lbl_806255DC
/* 80625034  82 FF 61 10 */	lwz r23, 0x6110(r31)
/* 80625038  4B D9 59 61 */	bl mEnv_NowWeather
/* 8062503C  7F A4 07 34 */	extsh r4, r29
/* 80625040  7C 63 07 34 */	extsh r3, r3
/* 80625044  2C 04 00 09 */	cmpwi r4, 9
/* 80625048  40 82 00 C0 */	bne lbl_80625108
/* 8062504C  3B 00 00 00 */	li r24, 0
lbl_80625050:
/* 80625050  80 99 00 00 */	lwz r4, 0(r25)
/* 80625054  7F 45 D3 78 */	mr r5, r26
/* 80625058  80 79 00 04 */	lwz r3, 4(r25)
/* 8062505C  7F 67 DB 78 */	mr r7, r27
/* 80625060  80 19 00 08 */	lwz r0, 8(r25)
/* 80625064  7F 88 E3 78 */	mr r8, r28
/* 80625068  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 8062506C  7F A9 EB 78 */	mr r9, r29
/* 80625070  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625074  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80625078  90 61 00 B4 */	stw r3, 0xb4(r1)
/* 8062507C  38 60 00 33 */	li r3, 0x33
/* 80625080  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 80625084  39 40 00 01 */	li r10, 1
/* 80625088  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8062508C  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625090  7D 89 03 A6 */	mtctr r12
/* 80625094  4E 80 04 21 */	bctrl 
/* 80625098  3B 18 00 01 */	addi r24, r24, 1
/* 8062509C  2C 18 00 04 */	cmpwi r24, 4
/* 806250A0  41 80 FF B0 */	blt lbl_80625050
/* 806250A4  28 17 00 03 */	cmplwi r23, 3
/* 806250A8  40 82 05 34 */	bne lbl_806255DC
/* 806250AC  3B 00 00 00 */	li r24, 0
lbl_806250B0:
/* 806250B0  80 99 00 00 */	lwz r4, 0(r25)
/* 806250B4  7F 45 D3 78 */	mr r5, r26
/* 806250B8  80 79 00 04 */	lwz r3, 4(r25)
/* 806250BC  7F 67 DB 78 */	mr r7, r27
/* 806250C0  80 19 00 08 */	lwz r0, 8(r25)
/* 806250C4  7F 88 E3 78 */	mr r8, r28
/* 806250C8  90 81 00 A4 */	stw r4, 0xa4(r1)
/* 806250CC  7F A9 EB 78 */	mr r9, r29
/* 806250D0  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 806250D4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 806250D8  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 806250DC  38 60 00 34 */	li r3, 0x34
/* 806250E0  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 806250E4  39 40 00 00 */	li r10, 0
/* 806250E8  90 01 00 AC */	stw r0, 0xac(r1)
/* 806250EC  81 8B 00 00 */	lwz r12, 0(r11)
/* 806250F0  7D 89 03 A6 */	mtctr r12
/* 806250F4  4E 80 04 21 */	bctrl 
/* 806250F8  3B 18 00 01 */	addi r24, r24, 1
/* 806250FC  2C 18 00 04 */	cmpwi r24, 4
/* 80625100  41 80 FF B0 */	blt lbl_806250B0
/* 80625104  48 00 04 D8 */	b lbl_806255DC
lbl_80625108:
/* 80625108  2C 04 00 16 */	cmpwi r4, 0x16
/* 8062510C  40 82 00 78 */	bne lbl_80625184
/* 80625110  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064CFC0@ha */
/* 80625114  C0 59 00 00 */	lfs f2, 0(r25)
/* 80625118  C0 03 CF C0 */	lfs f0, lit_531@l(r3)  /* 0x8064CFC0@l */
/* 8062511C  7F 45 D3 78 */	mr r5, r26
/* 80625120  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625124  7F 67 DB 78 */	mr r7, r27
/* 80625128  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8062512C  7F 88 E3 78 */	mr r8, r28
/* 80625130  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80625134  38 81 00 98 */	addi r4, r1, 0x98
/* 80625138  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 8062513C  38 60 00 4C */	li r3, 0x4c
/* 80625140  EC 22 08 2A */	fadds f1, f2, f1
/* 80625144  39 20 00 02 */	li r9, 2
/* 80625148  39 40 00 00 */	li r10, 0
/* 8062514C  D0 39 00 00 */	stfs f1, 0(r25)
/* 80625150  C0 39 00 08 */	lfs f1, 8(r25)
/* 80625154  EC 01 00 2A */	fadds f0, f1, f0
/* 80625158  D0 19 00 08 */	stfs f0, 8(r25)
/* 8062515C  83 19 00 00 */	lwz r24, 0(r25)
/* 80625160  81 99 00 04 */	lwz r12, 4(r25)
/* 80625164  80 19 00 08 */	lwz r0, 8(r25)
/* 80625168  93 01 00 98 */	stw r24, 0x98(r1)
/* 8062516C  91 81 00 9C */	stw r12, 0x9c(r1)
/* 80625170  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80625174  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625178  7D 89 03 A6 */	mtctr r12
/* 8062517C  4E 80 04 21 */	bctrl 
/* 80625180  48 00 04 5C */	b lbl_806255DC
lbl_80625184:
/* 80625184  2C 04 00 0B */	cmpwi r4, 0xb
/* 80625188  40 82 01 00 */	bne lbl_80625288
/* 8062518C  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064CFC0@ha */
/* 80625190  C0 79 00 00 */	lfs f3, 0(r25)
/* 80625194  C0 43 CF C0 */	lfs f2, lit_531@l(r3)  /* 0x8064CFC0@l */
/* 80625198  7F C0 07 35 */	extsh. r0, r30
/* 8062519C  EC 22 07 B2 */	fmuls f1, f2, f30
/* 806251A0  EC 02 07 F2 */	fmuls f0, f2, f31
/* 806251A4  EC 23 08 2A */	fadds f1, f3, f1
/* 806251A8  D0 39 00 00 */	stfs f1, 0(r25)
/* 806251AC  C0 39 00 08 */	lfs f1, 8(r25)
/* 806251B0  EC 01 00 2A */	fadds f0, f1, f0
/* 806251B4  D0 19 00 08 */	stfs f0, 8(r25)
/* 806251B8  C0 19 00 04 */	lfs f0, 4(r25)
/* 806251BC  EC 00 10 2A */	fadds f0, f0, f2
/* 806251C0  D0 19 00 04 */	stfs f0, 4(r25)
/* 806251C4  40 82 00 64 */	bne lbl_80625228
/* 806251C8  3B 00 00 00 */	li r24, 0
lbl_806251CC:
/* 806251CC  80 D9 00 00 */	lwz r6, 0(r25)
/* 806251D0  63 00 10 00 */	ori r0, r24, 0x1000
/* 806251D4  80 99 00 04 */	lwz r4, 4(r25)
/* 806251D8  7F 45 D3 78 */	mr r5, r26
/* 806251DC  80 79 00 08 */	lwz r3, 8(r25)
/* 806251E0  7F 67 DB 78 */	mr r7, r27
/* 806251E4  90 C1 00 8C */	stw r6, 0x8c(r1)
/* 806251E8  7F 88 E3 78 */	mr r8, r28
/* 806251EC  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 806251F0  7F A9 EB 78 */	mr r9, r29
/* 806251F4  90 81 00 90 */	stw r4, 0x90(r1)
/* 806251F8  38 81 00 8C */	addi r4, r1, 0x8c
/* 806251FC  7C 0A 07 34 */	extsh r10, r0
/* 80625200  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 80625204  90 61 00 94 */	stw r3, 0x94(r1)
/* 80625208  38 60 00 3B */	li r3, 0x3b
/* 8062520C  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625210  7D 89 03 A6 */	mtctr r12
/* 80625214  4E 80 04 21 */	bctrl 
/* 80625218  3B 18 00 01 */	addi r24, r24, 1
/* 8062521C  2C 18 00 05 */	cmpwi r24, 5
/* 80625220  41 80 FF AC */	blt lbl_806251CC
/* 80625224  48 00 03 B8 */	b lbl_806255DC
lbl_80625228:
/* 80625228  3B 00 00 00 */	li r24, 0
lbl_8062522C:
/* 8062522C  80 D9 00 00 */	lwz r6, 0(r25)
/* 80625230  63 00 20 00 */	ori r0, r24, 0x2000
/* 80625234  80 99 00 04 */	lwz r4, 4(r25)
/* 80625238  7F 45 D3 78 */	mr r5, r26
/* 8062523C  80 79 00 08 */	lwz r3, 8(r25)
/* 80625240  7F 67 DB 78 */	mr r7, r27
/* 80625244  90 C1 00 80 */	stw r6, 0x80(r1)
/* 80625248  7F 88 E3 78 */	mr r8, r28
/* 8062524C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625250  7F A9 EB 78 */	mr r9, r29
/* 80625254  90 81 00 84 */	stw r4, 0x84(r1)
/* 80625258  38 81 00 80 */	addi r4, r1, 0x80
/* 8062525C  7C 0A 07 34 */	extsh r10, r0
/* 80625260  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 80625264  90 61 00 88 */	stw r3, 0x88(r1)
/* 80625268  38 60 00 3B */	li r3, 0x3b
/* 8062526C  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625270  7D 89 03 A6 */	mtctr r12
/* 80625274  4E 80 04 21 */	bctrl 
/* 80625278  3B 18 00 01 */	addi r24, r24, 1
/* 8062527C  2C 18 00 05 */	cmpwi r24, 5
/* 80625280  41 80 FF AC */	blt lbl_8062522C
/* 80625284  48 00 03 58 */	b lbl_806255DC
lbl_80625288:
/* 80625288  28 17 00 03 */	cmplwi r23, 3
/* 8062528C  40 82 01 14 */	bne lbl_806253A0
/* 80625290  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80625294  28 00 00 02 */	cmplwi r0, 2
/* 80625298  40 81 00 0C */	ble lbl_806252A4
/* 8062529C  2C 04 00 03 */	cmpwi r4, 3
/* 806252A0  40 82 01 00 */	bne lbl_806253A0
lbl_806252A4:
/* 806252A4  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064CFC0@ha */
/* 806252A8  C0 79 00 00 */	lfs f3, 0(r25)
/* 806252AC  C0 43 CF C0 */	lfs f2, lit_531@l(r3)  /* 0x8064CFC0@l */
/* 806252B0  7F C0 07 35 */	extsh. r0, r30
/* 806252B4  EC 22 07 B2 */	fmuls f1, f2, f30
/* 806252B8  EC 02 07 F2 */	fmuls f0, f2, f31
/* 806252BC  EC 23 08 2A */	fadds f1, f3, f1
/* 806252C0  D0 39 00 00 */	stfs f1, 0(r25)
/* 806252C4  C0 39 00 08 */	lfs f1, 8(r25)
/* 806252C8  EC 01 00 2A */	fadds f0, f1, f0
/* 806252CC  D0 19 00 08 */	stfs f0, 8(r25)
/* 806252D0  C0 19 00 04 */	lfs f0, 4(r25)
/* 806252D4  EC 00 10 2A */	fadds f0, f0, f2
/* 806252D8  D0 19 00 04 */	stfs f0, 4(r25)
/* 806252DC  40 82 00 64 */	bne lbl_80625340
/* 806252E0  3B 00 00 00 */	li r24, 0
lbl_806252E4:
/* 806252E4  80 D9 00 00 */	lwz r6, 0(r25)
/* 806252E8  63 00 10 00 */	ori r0, r24, 0x1000
/* 806252EC  80 99 00 04 */	lwz r4, 4(r25)
/* 806252F0  7F 45 D3 78 */	mr r5, r26
/* 806252F4  80 79 00 08 */	lwz r3, 8(r25)
/* 806252F8  7F 67 DB 78 */	mr r7, r27
/* 806252FC  90 C1 00 74 */	stw r6, 0x74(r1)
/* 80625300  7F 88 E3 78 */	mr r8, r28
/* 80625304  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625308  7F A9 EB 78 */	mr r9, r29
/* 8062530C  90 81 00 78 */	stw r4, 0x78(r1)
/* 80625310  38 81 00 74 */	addi r4, r1, 0x74
/* 80625314  7C 0A 07 34 */	extsh r10, r0
/* 80625318  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 8062531C  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80625320  38 60 00 3C */	li r3, 0x3c
/* 80625324  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625328  7D 89 03 A6 */	mtctr r12
/* 8062532C  4E 80 04 21 */	bctrl 
/* 80625330  3B 18 00 01 */	addi r24, r24, 1
/* 80625334  2C 18 00 05 */	cmpwi r24, 5
/* 80625338  41 80 FF AC */	blt lbl_806252E4
/* 8062533C  48 00 02 A0 */	b lbl_806255DC
lbl_80625340:
/* 80625340  3B 00 00 00 */	li r24, 0
lbl_80625344:
/* 80625344  80 D9 00 00 */	lwz r6, 0(r25)
/* 80625348  63 00 20 00 */	ori r0, r24, 0x2000
/* 8062534C  80 99 00 04 */	lwz r4, 4(r25)
/* 80625350  7F 45 D3 78 */	mr r5, r26
/* 80625354  80 79 00 08 */	lwz r3, 8(r25)
/* 80625358  7F 67 DB 78 */	mr r7, r27
/* 8062535C  90 C1 00 68 */	stw r6, 0x68(r1)
/* 80625360  7F 88 E3 78 */	mr r8, r28
/* 80625364  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625368  7F A9 EB 78 */	mr r9, r29
/* 8062536C  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80625370  38 81 00 68 */	addi r4, r1, 0x68
/* 80625374  7C 0A 07 34 */	extsh r10, r0
/* 80625378  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 8062537C  90 61 00 70 */	stw r3, 0x70(r1)
/* 80625380  38 60 00 3C */	li r3, 0x3c
/* 80625384  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625388  7D 89 03 A6 */	mtctr r12
/* 8062538C  4E 80 04 21 */	bctrl 
/* 80625390  3B 18 00 01 */	addi r24, r24, 1
/* 80625394  2C 18 00 05 */	cmpwi r24, 5
/* 80625398  41 80 FF AC */	blt lbl_80625344
/* 8062539C  48 00 02 40 */	b lbl_806255DC
lbl_806253A0:
/* 806253A0  7F A0 07 34 */	extsh r0, r29
/* 806253A4  2C 00 00 08 */	cmpwi r0, 8
/* 806253A8  41 82 02 34 */	beq lbl_806255DC
/* 806253AC  2C 03 00 01 */	cmpwi r3, 1
/* 806253B0  40 82 01 00 */	bne lbl_806254B0
/* 806253B4  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064CFC0@ha */
/* 806253B8  C0 79 00 00 */	lfs f3, 0(r25)
/* 806253BC  C0 43 CF C0 */	lfs f2, lit_531@l(r3)  /* 0x8064CFC0@l */
/* 806253C0  7F C0 07 35 */	extsh. r0, r30
/* 806253C4  EC 22 07 B2 */	fmuls f1, f2, f30
/* 806253C8  EC 02 07 F2 */	fmuls f0, f2, f31
/* 806253CC  EC 23 08 2A */	fadds f1, f3, f1
/* 806253D0  D0 39 00 00 */	stfs f1, 0(r25)
/* 806253D4  C0 39 00 08 */	lfs f1, 8(r25)
/* 806253D8  EC 01 00 2A */	fadds f0, f1, f0
/* 806253DC  D0 19 00 08 */	stfs f0, 8(r25)
/* 806253E0  C0 19 00 04 */	lfs f0, 4(r25)
/* 806253E4  EC 00 10 2A */	fadds f0, f0, f2
/* 806253E8  D0 19 00 04 */	stfs f0, 4(r25)
/* 806253EC  40 82 00 64 */	bne lbl_80625450
/* 806253F0  3B 00 00 00 */	li r24, 0
lbl_806253F4:
/* 806253F4  80 D9 00 00 */	lwz r6, 0(r25)
/* 806253F8  63 00 10 00 */	ori r0, r24, 0x1000
/* 806253FC  80 99 00 04 */	lwz r4, 4(r25)
/* 80625400  7F 45 D3 78 */	mr r5, r26
/* 80625404  80 79 00 08 */	lwz r3, 8(r25)
/* 80625408  7F 67 DB 78 */	mr r7, r27
/* 8062540C  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80625410  7F 88 E3 78 */	mr r8, r28
/* 80625414  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625418  7F A9 EB 78 */	mr r9, r29
/* 8062541C  90 81 00 60 */	stw r4, 0x60(r1)
/* 80625420  38 81 00 5C */	addi r4, r1, 0x5c
/* 80625424  7C 0A 07 34 */	extsh r10, r0
/* 80625428  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 8062542C  90 61 00 64 */	stw r3, 0x64(r1)
/* 80625430  38 60 00 3B */	li r3, 0x3b
/* 80625434  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625438  7D 89 03 A6 */	mtctr r12
/* 8062543C  4E 80 04 21 */	bctrl 
/* 80625440  3B 18 00 01 */	addi r24, r24, 1
/* 80625444  2C 18 00 05 */	cmpwi r24, 5
/* 80625448  41 80 FF AC */	blt lbl_806253F4
/* 8062544C  48 00 01 90 */	b lbl_806255DC
lbl_80625450:
/* 80625450  3B 00 00 00 */	li r24, 0
lbl_80625454:
/* 80625454  80 D9 00 00 */	lwz r6, 0(r25)
/* 80625458  63 00 20 00 */	ori r0, r24, 0x2000
/* 8062545C  80 99 00 04 */	lwz r4, 4(r25)
/* 80625460  7F 45 D3 78 */	mr r5, r26
/* 80625464  80 79 00 08 */	lwz r3, 8(r25)
/* 80625468  7F 67 DB 78 */	mr r7, r27
/* 8062546C  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80625470  7F 88 E3 78 */	mr r8, r28
/* 80625474  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625478  7F A9 EB 78 */	mr r9, r29
/* 8062547C  90 81 00 54 */	stw r4, 0x54(r1)
/* 80625480  38 81 00 50 */	addi r4, r1, 0x50
/* 80625484  7C 0A 07 34 */	extsh r10, r0
/* 80625488  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 8062548C  90 61 00 58 */	stw r3, 0x58(r1)
/* 80625490  38 60 00 3B */	li r3, 0x3b
/* 80625494  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625498  7D 89 03 A6 */	mtctr r12
/* 8062549C  4E 80 04 21 */	bctrl 
/* 806254A0  3B 18 00 01 */	addi r24, r24, 1
/* 806254A4  2C 18 00 05 */	cmpwi r24, 5
/* 806254A8  41 80 FF AC */	blt lbl_80625454
/* 806254AC  48 00 01 30 */	b lbl_806255DC
lbl_806254B0:
/* 806254B0  7F C0 07 35 */	extsh. r0, r30
/* 806254B4  40 82 00 98 */	bne lbl_8062554C
/* 806254B8  80 99 00 00 */	lwz r4, 0(r25)
/* 806254BC  7F 45 D3 78 */	mr r5, r26
/* 806254C0  80 79 00 04 */	lwz r3, 4(r25)
/* 806254C4  7F 67 DB 78 */	mr r7, r27
/* 806254C8  80 19 00 08 */	lwz r0, 8(r25)
/* 806254CC  7F 88 E3 78 */	mr r8, r28
/* 806254D0  90 81 00 44 */	stw r4, 0x44(r1)
/* 806254D4  7F A9 EB 78 */	mr r9, r29
/* 806254D8  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 806254DC  38 81 00 44 */	addi r4, r1, 0x44
/* 806254E0  90 61 00 48 */	stw r3, 0x48(r1)
/* 806254E4  38 60 00 38 */	li r3, 0x38
/* 806254E8  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 806254EC  39 40 00 05 */	li r10, 5
/* 806254F0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806254F4  81 8B 00 00 */	lwz r12, 0(r11)
/* 806254F8  7D 89 03 A6 */	mtctr r12
/* 806254FC  4E 80 04 21 */	bctrl 
/* 80625500  80 99 00 00 */	lwz r4, 0(r25)
/* 80625504  7F 45 D3 78 */	mr r5, r26
/* 80625508  80 79 00 04 */	lwz r3, 4(r25)
/* 8062550C  7F 67 DB 78 */	mr r7, r27
/* 80625510  80 19 00 08 */	lwz r0, 8(r25)
/* 80625514  7F 88 E3 78 */	mr r8, r28
/* 80625518  90 81 00 38 */	stw r4, 0x38(r1)
/* 8062551C  7F A9 EB 78 */	mr r9, r29
/* 80625520  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625524  38 81 00 38 */	addi r4, r1, 0x38
/* 80625528  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8062552C  38 60 00 01 */	li r3, 1
/* 80625530  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 80625534  39 40 00 01 */	li r10, 1
/* 80625538  90 01 00 40 */	stw r0, 0x40(r1)
/* 8062553C  81 8B 00 00 */	lwz r12, 0(r11)
/* 80625540  7D 89 03 A6 */	mtctr r12
/* 80625544  4E 80 04 21 */	bctrl 
/* 80625548  48 00 00 94 */	b lbl_806255DC
lbl_8062554C:
/* 8062554C  80 99 00 00 */	lwz r4, 0(r25)
/* 80625550  7F 45 D3 78 */	mr r5, r26
/* 80625554  80 79 00 04 */	lwz r3, 4(r25)
/* 80625558  7F 67 DB 78 */	mr r7, r27
/* 8062555C  80 19 00 08 */	lwz r0, 8(r25)
/* 80625560  7F 88 E3 78 */	mr r8, r28
/* 80625564  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80625568  7F A9 EB 78 */	mr r9, r29
/* 8062556C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80625570  38 81 00 2C */	addi r4, r1, 0x2c
/* 80625574  90 61 00 30 */	stw r3, 0x30(r1)
/* 80625578  38 60 00 38 */	li r3, 0x38
/* 8062557C  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 80625580  39 40 00 06 */	li r10, 6
/* 80625584  90 01 00 34 */	stw r0, 0x34(r1)
/* 80625588  81 8B 00 00 */	lwz r12, 0(r11)
/* 8062558C  7D 89 03 A6 */	mtctr r12
/* 80625590  4E 80 04 21 */	bctrl 
/* 80625594  80 99 00 00 */	lwz r4, 0(r25)
/* 80625598  7F 45 D3 78 */	mr r5, r26
/* 8062559C  80 79 00 04 */	lwz r3, 4(r25)
/* 806255A0  7F 67 DB 78 */	mr r7, r27
/* 806255A4  80 19 00 08 */	lwz r0, 8(r25)
/* 806255A8  7F 88 E3 78 */	mr r8, r28
/* 806255AC  90 81 00 20 */	stw r4, 0x20(r1)
/* 806255B0  7F A9 EB 78 */	mr r9, r29
/* 806255B4  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 806255B8  38 81 00 20 */	addi r4, r1, 0x20
/* 806255BC  90 61 00 24 */	stw r3, 0x24(r1)
/* 806255C0  38 60 00 01 */	li r3, 1
/* 806255C4  A8 C1 00 10 */	lha r6, 0x10(r1)
/* 806255C8  39 40 00 02 */	li r10, 2
/* 806255CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 806255D0  81 8B 00 00 */	lwz r12, 0(r11)
/* 806255D4  7D 89 03 A6 */	mtctr r12
/* 806255D8  4E 80 04 21 */	bctrl 
lbl_806255DC:
/* 806255DC  80 99 00 00 */	lwz r4, 0(r25)
/* 806255E0  7F 66 DB 78 */	mr r6, r27
/* 806255E4  80 79 00 04 */	lwz r3, 4(r25)
/* 806255E8  7F 88 E3 78 */	mr r8, r28
/* 806255EC  80 19 00 08 */	lwz r0, 8(r25)
/* 806255F0  7F 49 D3 78 */	mr r9, r26
/* 806255F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806255F8  7F AA EB 78 */	mr r10, r29
/* 806255FC  38 81 00 14 */	addi r4, r1, 0x14
/* 80625600  38 E1 00 10 */	addi r7, r1, 0x10
/* 80625604  90 61 00 18 */	stw r3, 0x18(r1)
/* 80625608  38 60 00 2F */	li r3, 0x2f
/* 8062560C  38 A0 00 00 */	li r5, 0
/* 80625610  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80625614  93 C1 00 08 */	stw r30, 8(r1)
/* 80625618  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8062561C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80625620  7D 89 03 A6 */	mtctr r12
/* 80625624  4E 80 04 21 */	bctrl 
/* 80625628  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8062562C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80625630  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80625634  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80625638  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8062563C  4B A7 58 CD */	bl func_8009AF08
/* 80625640  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80625644  7C 08 03 A6 */	mtlr r0
/* 80625648  38 21 01 10 */	addi r1, r1, 0x110
/* 8062564C  4E 80 00 20 */	blr 
