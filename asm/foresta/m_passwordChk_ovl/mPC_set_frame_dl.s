lbl_806012F4:
/* 806012F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806012F8  7C 08 02 A6 */	mflr r0
/* 806012FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80601300  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80601304  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80601308  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8060130C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80601310  39 61 00 30 */	addi r11, r1, 0x30
/* 80601314  4B A9 9B C1 */	bl func_8009AED4
/* 80601318  3C C0 80 65 */	lis r6, data_8064B9C4@ha /* 0x8064B9C4@ha */
/* 8060131C  FF C0 08 90 */	fmr f30, f1
/* 80601320  C0 26 B9 C4 */	lfs f1, data_8064B9C4@l(r6)  /* 0x8064B9C4@l */
/* 80601324  3C A0 80 65 */	lis r5, lit_477@ha /* 0x8064B9C8@ha */
/* 80601328  FF E0 10 90 */	fmr f31, f2
/* 8060132C  7C 7D 1B 78 */	mr r29, r3
/* 80601330  FC 40 08 90 */	fmr f2, f1
/* 80601334  C0 65 B9 C8 */	lfs f3, lit_477@l(r5)  /* 0x8064B9C8@l */
/* 80601338  7C 9E 23 78 */	mr r30, r4
/* 8060133C  38 60 00 00 */	li r3, 0
/* 80601340  4B E0 B0 AD */	bl Matrix_scale
/* 80601344  3C 60 80 65 */	lis r3, lit_478@ha /* 0x8064B9CC@ha */
/* 80601348  FC 20 F0 90 */	fmr f1, f30
/* 8060134C  C0 63 B9 CC */	lfs f3, lit_478@l(r3)  /* 0x8064B9CC@l */
/* 80601350  FC 40 F8 90 */	fmr f2, f31
/* 80601354  38 60 00 01 */	li r3, 1
/* 80601358  4B E0 AF A9 */	bl Matrix_translate
/* 8060135C  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80601360  3C 00 DE 00 */	lis r0, 0xde00
/* 80601364  3C 80 80 B2 */	lis r4, pwd_win_mode@ha /* 0x80B21490@ha */
/* 80601368  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060136C  90 1F 00 00 */	stw r0, 0(r31)
/* 80601370  38 84 14 90 */	addi r4, r4, pwd_win_mode@l /* 0x80B21490@l */
/* 80601374  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80601378  7F C3 F3 78 */	mr r3, r30
/* 8060137C  90 9F 00 04 */	stw r4, 4(r31)
/* 80601380  94 1F 00 08 */	stwu r0, 8(r31)
/* 80601384  4B E0 C0 51 */	bl _Matrix_to_Mtx_new
/* 80601388  90 7F 00 04 */	stw r3, 4(r31)
/* 8060138C  3C 60 80 65 */	lis r3, lit_479@ha /* 0x8064B9D0@ha */
/* 80601390  38 A3 B9 D0 */	addi r5, r3, lit_479@l /* 0x8064B9D0@l */
/* 80601394  3C 80 DE 00 */	lis r4, 0xde00
/* 80601398  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 8060139C  3C 60 80 B2 */	lis r3, pwd_win_model@ha /* 0x80B214D0@ha */
/* 806013A0  C0 45 00 00 */	lfs f2, 0(r5)
/* 806013A4  38 03 14 D0 */	addi r0, r3, pwd_win_model@l /* 0x80B214D0@l */
/* 806013A8  C0 06 09 34 */	lfs f0, 0x934(r6)
/* 806013AC  C0 26 09 38 */	lfs f1, 0x938(r6)
/* 806013B0  FC 00 00 50 */	fneg f0, f0
/* 806013B4  FC 20 08 50 */	fneg f1, f1
/* 806013B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 806013BC  EC 22 00 72 */	fmuls f1, f2, f1
/* 806013C0  FC 00 00 1E */	fctiwz f0, f0
/* 806013C4  FC 20 08 1E */	fctiwz f1, f1
/* 806013C8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806013CC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 806013D0  D8 21 00 08 */	stfd f1, 8(r1)
/* 806013D4  54 63 53 AA */	rlwinm r3, r3, 0xa, 0xe, 0x15
/* 806013D8  64 65 F2 00 */	oris r5, r3, 0xf200
/* 806013DC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 806013E0  60 A5 00 1F */	ori r5, r5, 0x1f
/* 806013E4  54 C3 53 AA */	rlwinm r3, r6, 0xa, 0xe, 0x15
/* 806013E8  90 BF 00 08 */	stw r5, 8(r31)
/* 806013EC  64 63 80 00 */	oris r3, r3, 0x8000
/* 806013F0  60 63 00 1F */	ori r3, r3, 0x1f
/* 806013F4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 806013F8  3B FF 00 10 */	addi r31, r31, 0x10
/* 806013FC  7F E3 FB 78 */	mr r3, r31
/* 80601400  90 9F 00 00 */	stw r4, 0(r31)
/* 80601404  3B FF 00 08 */	addi r31, r31, 8
/* 80601408  90 03 00 04 */	stw r0, 4(r3)
/* 8060140C  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 80601410  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80601414  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80601418  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8060141C  39 61 00 30 */	addi r11, r1, 0x30
/* 80601420  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80601424  4B A9 9A FD */	bl func_8009AF20
/* 80601428  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8060142C  7C 08 03 A6 */	mtlr r0
/* 80601430  38 21 00 50 */	addi r1, r1, 0x50
/* 80601434  4E 80 00 20 */	blr 
