lbl_805E0384:
/* 805E0384  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E0388  7C 08 02 A6 */	mflr r0
/* 805E038C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E0390  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E0394  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E0398  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E039C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E03A0  39 61 00 30 */	addi r11, r1, 0x30
/* 805E03A4  4B AB AB 31 */	bl func_8009AED4
/* 805E03A8  3C C0 80 65 */	lis r6, lit_573@ha /* 0x8064B360@ha */
/* 805E03AC  FF C0 08 90 */	fmr f30, f1
/* 805E03B0  C0 26 B3 60 */	lfs f1, lit_573@l(r6)  /* 0x8064B360@l */
/* 805E03B4  3C A0 80 65 */	lis r5, lit_574@ha /* 0x8064B364@ha */
/* 805E03B8  FF E0 10 90 */	fmr f31, f2
/* 805E03BC  7C 7D 1B 78 */	mr r29, r3
/* 805E03C0  FC 40 08 90 */	fmr f2, f1
/* 805E03C4  C0 65 B3 64 */	lfs f3, lit_574@l(r5)  /* 0x8064B364@l */
/* 805E03C8  7C 9E 23 78 */	mr r30, r4
/* 805E03CC  38 60 00 00 */	li r3, 0
/* 805E03D0  4B E2 C0 1D */	bl Matrix_scale
/* 805E03D4  3C 60 80 65 */	lis r3, lit_575@ha /* 0x8064B368@ha */
/* 805E03D8  FC 20 F0 90 */	fmr f1, f30
/* 805E03DC  C0 63 B3 68 */	lfs f3, lit_575@l(r3)  /* 0x8064B368@l */
/* 805E03E0  FC 40 F8 90 */	fmr f2, f31
/* 805E03E4  38 60 00 01 */	li r3, 1
/* 805E03E8  4B E2 BF 19 */	bl Matrix_translate
/* 805E03EC  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 805E03F0  3C 00 DE 00 */	lis r0, 0xde00
/* 805E03F4  3C 80 80 A8 */	lis r4, hni_win_mode@ha /* 0x80A812C0@ha */
/* 805E03F8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E03FC  90 1F 00 00 */	stw r0, 0(r31)
/* 805E0400  38 84 12 C0 */	addi r4, r4, hni_win_mode@l /* 0x80A812C0@l */
/* 805E0404  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E0408  7F C3 F3 78 */	mr r3, r30
/* 805E040C  90 9F 00 04 */	stw r4, 4(r31)
/* 805E0410  94 1F 00 08 */	stwu r0, 8(r31)
/* 805E0414  4B E2 CF C1 */	bl _Matrix_to_Mtx_new
/* 805E0418  90 7F 00 04 */	stw r3, 4(r31)
/* 805E041C  3C 00 E8 00 */	lis r0, 0xe800
/* 805E0420  3C 80 80 65 */	lis r4, lit_576@ha /* 0x8064B36C@ha */
/* 805E0424  3C 60 80 A8 */	lis r3, hni_win_modelT@ha /* 0x80A81310@ha */
/* 805E0428  90 1F 00 08 */	stw r0, 8(r31)
/* 805E042C  38 A4 B3 6C */	addi r5, r4, lit_576@l /* 0x8064B36C@l */
/* 805E0430  38 00 00 00 */	li r0, 0
/* 805E0434  C0 45 00 00 */	lfs f2, 0(r5)
/* 805E0438  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E043C  38 03 13 10 */	addi r0, r3, hni_win_modelT@l /* 0x80A81310@l */
/* 805E0440  3C 80 DE 00 */	lis r4, 0xde00
/* 805E0444  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805E0448  C0 03 09 34 */	lfs f0, 0x934(r3)
/* 805E044C  C0 23 09 38 */	lfs f1, 0x938(r3)
/* 805E0450  FC 00 00 50 */	fneg f0, f0
/* 805E0454  FC 20 08 50 */	fneg f1, f1
/* 805E0458  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E045C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805E0460  FC 00 00 1E */	fctiwz f0, f0
/* 805E0464  FC 20 08 1E */	fctiwz f1, f1
/* 805E0468  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E046C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805E0470  D8 21 00 08 */	stfd f1, 8(r1)
/* 805E0474  54 63 53 AA */	rlwinm r3, r3, 0xa, 0xe, 0x15
/* 805E0478  64 65 F2 00 */	oris r5, r3, 0xf200
/* 805E047C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805E0480  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805E0484  54 C3 53 AA */	rlwinm r3, r6, 0xa, 0xe, 0x15
/* 805E0488  90 BF 00 10 */	stw r5, 0x10(r31)
/* 805E048C  64 63 80 00 */	oris r3, r3, 0x8000
/* 805E0490  60 63 00 1F */	ori r3, r3, 0x1f
/* 805E0494  90 7F 00 14 */	stw r3, 0x14(r31)
/* 805E0498  3B FF 00 18 */	addi r31, r31, 0x18
/* 805E049C  7F E3 FB 78 */	mr r3, r31
/* 805E04A0  90 9F 00 00 */	stw r4, 0(r31)
/* 805E04A4  3B FF 00 08 */	addi r31, r31, 8
/* 805E04A8  90 03 00 04 */	stw r0, 4(r3)
/* 805E04AC  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 805E04B0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E04B4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E04B8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E04BC  39 61 00 30 */	addi r11, r1, 0x30
/* 805E04C0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E04C4  4B AB AA 5D */	bl func_8009AF20
/* 805E04C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E04CC  7C 08 03 A6 */	mtlr r0
/* 805E04D0  38 21 00 50 */	addi r1, r1, 0x50
/* 805E04D4  4E 80 00 20 */	blr 
