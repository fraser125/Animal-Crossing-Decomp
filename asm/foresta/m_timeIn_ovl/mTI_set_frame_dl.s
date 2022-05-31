lbl_805FF930:
/* 805FF930  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805FF934  7C 08 02 A6 */	mflr r0
/* 805FF938  90 01 00 54 */	stw r0, 0x54(r1)
/* 805FF93C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805FF940  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805FF944  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805FF948  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805FF94C  39 61 00 30 */	addi r11, r1, 0x30
/* 805FF950  4B A9 B5 79 */	bl func_8009AEC8
/* 805FF954  7C 7A 1B 78 */	mr r26, r3
/* 805FF958  3C A0 80 6D */	lis r5, data_806D1220@ha /* 0x806D1220@ha */
/* 805FF95C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FF960  FF C0 08 90 */	fmr f30, f1
/* 805FF964  FF E0 10 90 */	fmr f31, f2
/* 805FF968  7C 9B 23 78 */	mr r27, r4
/* 805FF96C  83 A3 09 A0 */	lwz r29, 0x9a0(r3)
/* 805FF970  3B E5 12 20 */	addi r31, r5, data_806D1220@l /* 0x806D1220@l */
/* 805FF974  A0 7D 00 08 */	lhz r3, 8(r29)
/* 805FF978  A0 9D 00 04 */	lhz r4, 4(r29)
/* 805FF97C  A0 1D 00 06 */	lhz r0, 6(r29)
/* 805FF980  38 63 07 D0 */	addi r3, r3, 0x7d0
/* 805FF984  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 805FF988  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 805FF98C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 805FF990  4B E0 78 39 */	bl lbRTC_Week
/* 805FF994  3C A0 80 65 */	lis r5, data_8064B914@ha /* 0x8064B914@ha */
/* 805FF998  3C 80 80 65 */	lis r4, lit_597@ha /* 0x8064B918@ha */
/* 805FF99C  C0 05 B9 14 */	lfs f0, data_8064B914@l(r5)  /* 0x8064B914@l */
/* 805FF9A0  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 805FF9A4  C0 64 B9 18 */	lfs f3, lit_597@l(r4)  /* 0x8064B918@l */
/* 805FF9A8  38 60 00 00 */	li r3, 0
/* 805FF9AC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 805FF9B0  EC 40 07 F2 */	fmuls f2, f0, f31
/* 805FF9B4  4B E0 C9 4D */	bl Matrix_translate
/* 805FF9B8  3C 60 80 65 */	lis r3, data_8064B914@ha /* 0x8064B914@ha */
/* 805FF9BC  3C 80 80 65 */	lis r4, lit_598@ha /* 0x8064B91C@ha */
/* 805FF9C0  38 A3 B9 14 */	addi r5, r3, data_8064B914@l /* 0x8064B914@l */
/* 805FF9C4  C0 64 B9 1C */	lfs f3, lit_598@l(r4)  /* 0x8064B91C@l */
/* 805FF9C8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805FF9CC  38 60 00 01 */	li r3, 1
/* 805FF9D0  FC 40 08 90 */	fmr f2, f1
/* 805FF9D4  4B E0 CA 19 */	bl Matrix_scale
/* 805FF9D8  83 9B 02 D0 */	lwz r28, 0x2d0(r27)
/* 805FF9DC  3C 00 DE 00 */	lis r0, 0xde00
/* 805FF9E0  3C 80 80 B3 */	lis r4, tim_win_mode@ha /* 0x80B36900@ha */
/* 805FF9E4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805FF9E8  90 1C 00 00 */	stw r0, 0(r28)
/* 805FF9EC  38 84 69 00 */	addi r4, r4, tim_win_mode@l /* 0x80B36900@l */
/* 805FF9F0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805FF9F4  7F 63 DB 78 */	mr r3, r27
/* 805FF9F8  90 9C 00 04 */	stw r4, 4(r28)
/* 805FF9FC  94 1C 00 08 */	stwu r0, 8(r28)
/* 805FFA00  4B E0 D9 D5 */	bl _Matrix_to_Mtx_new
/* 805FFA04  90 7C 00 04 */	stw r3, 4(r28)
/* 805FFA08  3C 60 80 65 */	lis r3, lit_599@ha /* 0x8064B920@ha */
/* 805FFA0C  38 A3 B9 20 */	addi r5, r3, lit_599@l /* 0x8064B920@l */
/* 805FFA10  3C 80 DE 00 */	lis r4, 0xde00
/* 805FFA14  80 DA 00 2C */	lwz r6, 0x2c(r26)
/* 805FFA18  3C 60 80 B3 */	lis r3, tim_win_model@ha /* 0x80B36940@ha */
/* 805FFA1C  C0 45 00 00 */	lfs f2, 0(r5)
/* 805FFA20  38 03 69 40 */	addi r0, r3, tim_win_model@l /* 0x80B36940@l */
/* 805FFA24  C0 06 09 34 */	lfs f0, 0x934(r6)
/* 805FFA28  39 5F 00 0C */	addi r10, r31, 0xc
/* 805FFA2C  C0 26 09 38 */	lfs f1, 0x938(r6)
/* 805FFA30  FC 00 00 50 */	fneg f0, f0
/* 805FFA34  FC 20 08 50 */	fneg f1, f1
/* 805FFA38  EC 02 00 32 */	fmuls f0, f2, f0
/* 805FFA3C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805FFA40  FC 00 00 1E */	fctiwz f0, f0
/* 805FFA44  FC 20 08 1E */	fctiwz f1, f1
/* 805FFA48  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805FFA4C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805FFA50  D8 21 00 08 */	stfd f1, 8(r1)
/* 805FFA54  54 63 53 AA */	rlwinm r3, r3, 0xa, 0xe, 0x15
/* 805FFA58  64 65 F2 00 */	oris r5, r3, 0xf200
/* 805FFA5C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805FFA60  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805FFA64  54 C3 53 AA */	rlwinm r3, r6, 0xa, 0xe, 0x15
/* 805FFA68  90 BC 00 08 */	stw r5, 8(r28)
/* 805FFA6C  64 63 80 00 */	oris r3, r3, 0x8000
/* 805FFA70  60 63 00 1F */	ori r3, r3, 0x1f
/* 805FFA74  90 7C 00 0C */	stw r3, 0xc(r28)
/* 805FFA78  90 9C 00 10 */	stw r4, 0x10(r28)
/* 805FFA7C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 805FFA80  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 805FFA84  2C 00 00 02 */	cmpwi r0, 2
/* 805FFA88  40 82 00 08 */	bne lbl_805FFA90
/* 805FFA8C  39 5F 00 00 */	addi r10, r31, 0
lbl_805FFA90:
/* 805FFA90  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805FFA94  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805FFA98  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805FFA9C  3C 80 80 B3 */	lis r4, tim_win_month_model@ha /* 0x80B365B8@ha */
/* 805FFAA0  90 1C 00 18 */	stw r0, 0x18(r28)
/* 805FFAA4  39 25 00 20 */	addi r9, r5, 0x0020 /* 0xDB060020@l */
/* 805FFAA8  38 C4 65 B8 */	addi r6, r4, tim_win_month_model@l /* 0x80B365B8@l */
/* 805FFAAC  3C 60 80 B3 */	lis r3, tim_win_youbi_model@ha /* 0x80B36580@ha */
/* 805FFAB0  80 0A 00 04 */	lwz r0, 4(r10)
/* 805FFAB4  39 1F 00 48 */	addi r8, r31, 0x48
/* 805FFAB8  81 6A 00 00 */	lwz r11, 0(r10)
/* 805FFABC  3C E0 DE 00 */	lis r7, 0xde00
/* 805FFAC0  81 8A 00 08 */	lwz r12, 8(r10)
/* 805FFAC4  54 0A 82 1E */	rlwinm r10, r0, 0x10, 8, 0xf
/* 805FFAC8  51 6A C0 0E */	rlwimi r10, r11, 0x18, 0, 7
/* 805FFACC  38 03 65 80 */	addi r0, r3, tim_win_youbi_model@l /* 0x80B36580@l */
/* 805FFAD0  51 8A 44 2E */	rlwimi r10, r12, 8, 0x10, 0x17
/* 805FFAD4  57 C5 10 3A */	slwi r5, r30, 2
/* 805FFAD8  61 43 00 FF */	ori r3, r10, 0xff
/* 805FFADC  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805FFAE0  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 805FFAE4  91 3C 00 20 */	stw r9, 0x20(r28)
/* 805FFAE8  A0 7D 00 04 */	lhz r3, 4(r29)
/* 805FFAEC  54 63 10 3A */	slwi r3, r3, 2
/* 805FFAF0  7C 68 1A 14 */	add r3, r8, r3
/* 805FFAF4  80 63 FF FC */	lwz r3, -4(r3)
/* 805FFAF8  90 7C 00 24 */	stw r3, 0x24(r28)
/* 805FFAFC  90 FC 00 28 */	stw r7, 0x28(r28)
/* 805FFB00  90 DC 00 2C */	stw r6, 0x2c(r28)
/* 805FFB04  91 3C 00 30 */	stw r9, 0x30(r28)
/* 805FFB08  7C 64 28 2E */	lwzx r3, r4, r5
/* 805FFB0C  90 7C 00 34 */	stw r3, 0x34(r28)
/* 805FFB10  3B 9C 00 38 */	addi r28, r28, 0x38
/* 805FFB14  7F 83 E3 78 */	mr r3, r28
/* 805FFB18  90 FC 00 00 */	stw r7, 0(r28)
/* 805FFB1C  3B 9C 00 08 */	addi r28, r28, 8
/* 805FFB20  90 03 00 04 */	stw r0, 4(r3)
/* 805FFB24  93 9B 02 D0 */	stw r28, 0x2d0(r27)
/* 805FFB28  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805FFB2C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805FFB30  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805FFB34  39 61 00 30 */	addi r11, r1, 0x30
/* 805FFB38  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805FFB3C  4B A9 B3 D9 */	bl func_8009AF14
/* 805FFB40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805FFB44  7C 08 03 A6 */	mtlr r0
/* 805FFB48  38 21 00 50 */	addi r1, r1, 0x50
/* 805FFB4C  4E 80 00 20 */	blr 
