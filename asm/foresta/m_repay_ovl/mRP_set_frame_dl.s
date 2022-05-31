lbl_805EC844:
/* 805EC844  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805EC848  7C 08 02 A6 */	mflr r0
/* 805EC84C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805EC850  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805EC854  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805EC858  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805EC85C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805EC860  39 61 00 30 */	addi r11, r1, 0x30
/* 805EC864  4B AA E6 71 */	bl func_8009AED4
/* 805EC868  3C C0 80 65 */	lis r6, data_8064B744@ha /* 0x8064B744@ha */
/* 805EC86C  FF C0 08 90 */	fmr f30, f1
/* 805EC870  C0 26 B7 44 */	lfs f1, data_8064B744@l(r6)  /* 0x8064B744@l */
/* 805EC874  3C A0 80 65 */	lis r5, lit_523@ha /* 0x8064B748@ha */
/* 805EC878  FF E0 10 90 */	fmr f31, f2
/* 805EC87C  7C 7D 1B 78 */	mr r29, r3
/* 805EC880  FC 40 08 90 */	fmr f2, f1
/* 805EC884  C0 65 B7 48 */	lfs f3, lit_523@l(r5)  /* 0x8064B748@l */
/* 805EC888  7C 9E 23 78 */	mr r30, r4
/* 805EC88C  38 60 00 00 */	li r3, 0
/* 805EC890  4B E1 FB 5D */	bl Matrix_scale
/* 805EC894  3C 60 80 65 */	lis r3, lit_524@ha /* 0x8064B74C@ha */
/* 805EC898  FC 20 F0 90 */	fmr f1, f30
/* 805EC89C  C0 63 B7 4C */	lfs f3, lit_524@l(r3)  /* 0x8064B74C@l */
/* 805EC8A0  FC 40 F8 90 */	fmr f2, f31
/* 805EC8A4  38 60 00 01 */	li r3, 1
/* 805EC8A8  4B E1 FA 59 */	bl Matrix_translate
/* 805EC8AC  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 805EC8B0  3C 00 DE 00 */	lis r0, 0xde00
/* 805EC8B4  3C 80 80 B3 */	lis r4, fkm_win_mode@ha /* 0x80B28D08@ha */
/* 805EC8B8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805EC8BC  90 1F 00 00 */	stw r0, 0(r31)
/* 805EC8C0  38 84 8D 08 */	addi r4, r4, fkm_win_mode@l /* 0x80B28D08@l */
/* 805EC8C4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805EC8C8  7F C3 F3 78 */	mr r3, r30
/* 805EC8CC  90 9F 00 04 */	stw r4, 4(r31)
/* 805EC8D0  94 1F 00 08 */	stwu r0, 8(r31)
/* 805EC8D4  4B E2 0B 01 */	bl _Matrix_to_Mtx_new
/* 805EC8D8  90 7F 00 04 */	stw r3, 4(r31)
/* 805EC8DC  3C 60 80 65 */	lis r3, lit_525@ha /* 0x8064B750@ha */
/* 805EC8E0  38 A3 B7 50 */	addi r5, r3, lit_525@l /* 0x8064B750@l */
/* 805EC8E4  3C 80 DE 00 */	lis r4, 0xde00
/* 805EC8E8  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 805EC8EC  3C 60 80 B3 */	lis r3, fkm_win_model@ha /* 0x80B28D48@ha */
/* 805EC8F0  C0 45 00 00 */	lfs f2, 0(r5)
/* 805EC8F4  38 03 8D 48 */	addi r0, r3, fkm_win_model@l /* 0x80B28D48@l */
/* 805EC8F8  C0 06 09 34 */	lfs f0, 0x934(r6)
/* 805EC8FC  C0 26 09 38 */	lfs f1, 0x938(r6)
/* 805EC900  FC 00 00 50 */	fneg f0, f0
/* 805EC904  FC 20 08 50 */	fneg f1, f1
/* 805EC908  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC90C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805EC910  FC 00 00 1E */	fctiwz f0, f0
/* 805EC914  FC 20 08 1E */	fctiwz f1, f1
/* 805EC918  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805EC91C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805EC920  D8 21 00 08 */	stfd f1, 8(r1)
/* 805EC924  54 63 53 AA */	rlwinm r3, r3, 0xa, 0xe, 0x15
/* 805EC928  64 65 F2 00 */	oris r5, r3, 0xf200
/* 805EC92C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805EC930  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805EC934  54 C3 53 AA */	rlwinm r3, r6, 0xa, 0xe, 0x15
/* 805EC938  90 BF 00 08 */	stw r5, 8(r31)
/* 805EC93C  64 63 80 00 */	oris r3, r3, 0x8000
/* 805EC940  60 63 00 1F */	ori r3, r3, 0x1f
/* 805EC944  90 7F 00 0C */	stw r3, 0xc(r31)
/* 805EC948  3B FF 00 10 */	addi r31, r31, 0x10
/* 805EC94C  7F E3 FB 78 */	mr r3, r31
/* 805EC950  90 9F 00 00 */	stw r4, 0(r31)
/* 805EC954  3B FF 00 08 */	addi r31, r31, 8
/* 805EC958  90 03 00 04 */	stw r0, 4(r3)
/* 805EC95C  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 805EC960  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805EC964  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805EC968  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805EC96C  39 61 00 30 */	addi r11, r1, 0x30
/* 805EC970  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805EC974  4B AA E5 AD */	bl func_8009AF20
/* 805EC978  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805EC97C  7C 08 03 A6 */	mtlr r0
/* 805EC980  38 21 00 50 */	addi r1, r1, 0x50
/* 805EC984  4E 80 00 20 */	blr 
