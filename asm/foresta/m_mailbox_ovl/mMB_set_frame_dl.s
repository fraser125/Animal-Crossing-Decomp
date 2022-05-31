lbl_805E57EC:
/* 805E57EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E57F0  7C 08 02 A6 */	mflr r0
/* 805E57F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E57F8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E57FC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E5800  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E5804  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E5808  39 61 00 30 */	addi r11, r1, 0x30
/* 805E580C  4B AB 56 C9 */	bl func_8009AED4
/* 805E5810  3C C0 80 65 */	lis r6, lit_499@ha /* 0x8064B518@ha */
/* 805E5814  FF C0 08 90 */	fmr f30, f1
/* 805E5818  C0 26 B5 18 */	lfs f1, lit_499@l(r6)  /* 0x8064B518@l */
/* 805E581C  3C A0 80 65 */	lis r5, lit_500@ha /* 0x8064B51C@ha */
/* 805E5820  FF E0 10 90 */	fmr f31, f2
/* 805E5824  7C 7D 1B 78 */	mr r29, r3
/* 805E5828  FC 40 08 90 */	fmr f2, f1
/* 805E582C  C0 65 B5 1C */	lfs f3, lit_500@l(r5)  /* 0x8064B51C@l */
/* 805E5830  7C 9E 23 78 */	mr r30, r4
/* 805E5834  38 60 00 00 */	li r3, 0
/* 805E5838  4B E2 6B B5 */	bl Matrix_scale
/* 805E583C  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064B520@ha */
/* 805E5840  FC 20 F0 90 */	fmr f1, f30
/* 805E5844  C0 63 B5 20 */	lfs f3, lit_501@l(r3)  /* 0x8064B520@l */
/* 805E5848  FC 40 F8 90 */	fmr f2, f31
/* 805E584C  38 60 00 01 */	li r3, 1
/* 805E5850  4B E2 6A B1 */	bl Matrix_translate
/* 805E5854  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 805E5858  3C 00 DE 00 */	lis r0, 0xde00
/* 805E585C  3C 80 80 B0 */	lis r4, pos_win_mode@ha /* 0x80AFAFE8@ha */
/* 805E5860  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E5864  90 1F 00 00 */	stw r0, 0(r31)
/* 805E5868  38 84 AF E8 */	addi r4, r4, pos_win_mode@l /* 0x80AFAFE8@l */
/* 805E586C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E5870  7F C3 F3 78 */	mr r3, r30
/* 805E5874  90 9F 00 04 */	stw r4, 4(r31)
/* 805E5878  94 1F 00 08 */	stwu r0, 8(r31)
/* 805E587C  4B E2 7B 59 */	bl _Matrix_to_Mtx_new
/* 805E5880  90 7F 00 04 */	stw r3, 4(r31)
/* 805E5884  3C 00 E8 00 */	lis r0, 0xe800
/* 805E5888  3C 80 80 65 */	lis r4, lit_502@ha /* 0x8064B524@ha */
/* 805E588C  3C 60 80 B0 */	lis r3, pos_win_model@ha /* 0x80AFB030@ha */
/* 805E5890  90 1F 00 08 */	stw r0, 8(r31)
/* 805E5894  38 A4 B5 24 */	addi r5, r4, lit_502@l /* 0x8064B524@l */
/* 805E5898  38 00 00 00 */	li r0, 0
/* 805E589C  C0 45 00 00 */	lfs f2, 0(r5)
/* 805E58A0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E58A4  38 03 B0 30 */	addi r0, r3, pos_win_model@l /* 0x80AFB030@l */
/* 805E58A8  3C 80 DE 00 */	lis r4, 0xde00
/* 805E58AC  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805E58B0  C0 03 09 34 */	lfs f0, 0x934(r3)
/* 805E58B4  C0 23 09 38 */	lfs f1, 0x938(r3)
/* 805E58B8  FC 00 00 50 */	fneg f0, f0
/* 805E58BC  FC 20 08 50 */	fneg f1, f1
/* 805E58C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E58C4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805E58C8  FC 00 00 1E */	fctiwz f0, f0
/* 805E58CC  FC 20 08 1E */	fctiwz f1, f1
/* 805E58D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E58D4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805E58D8  D8 21 00 08 */	stfd f1, 8(r1)
/* 805E58DC  54 63 53 AA */	rlwinm r3, r3, 0xa, 0xe, 0x15
/* 805E58E0  64 65 F2 00 */	oris r5, r3, 0xf200
/* 805E58E4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805E58E8  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805E58EC  54 C3 53 AA */	rlwinm r3, r6, 0xa, 0xe, 0x15
/* 805E58F0  90 BF 00 10 */	stw r5, 0x10(r31)
/* 805E58F4  64 63 80 00 */	oris r3, r3, 0x8000
/* 805E58F8  60 63 00 1F */	ori r3, r3, 0x1f
/* 805E58FC  90 7F 00 14 */	stw r3, 0x14(r31)
/* 805E5900  90 9F 00 18 */	stw r4, 0x18(r31)
/* 805E5904  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 805E5908  3B FF 00 20 */	addi r31, r31, 0x20
/* 805E590C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805E5910  80 63 09 98 */	lwz r3, 0x998(r3)
/* 805E5914  88 03 00 02 */	lbz r0, 2(r3)
/* 805E5918  28 00 00 00 */	cmplwi r0, 0
/* 805E591C  41 82 00 54 */	beq lbl_805E5970
/* 805E5920  3C C0 80 65 */	lis r6, lit_503@ha /* 0x8064B528@ha */
/* 805E5924  3C A0 80 65 */	lis r5, lit_504@ha /* 0x8064B52C@ha */
/* 805E5928  3C 80 80 65 */	lis r4, data_8064B514@ha /* 0x8064B514@ha */
/* 805E592C  C0 26 B5 28 */	lfs f1, lit_503@l(r6)  /* 0x8064B528@l */
/* 805E5930  C0 45 B5 2C */	lfs f2, lit_504@l(r5)  /* 0x8064B52C@l */
/* 805E5934  38 60 00 01 */	li r3, 1
/* 805E5938  C0 64 B5 14 */	lfs f3, data_8064B514@l(r4)  /* 0x8064B514@l */
/* 805E593C  4B E2 69 C5 */	bl Matrix_translate
/* 805E5940  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805E5944  7F C3 F3 78 */	mr r3, r30
/* 805E5948  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805E594C  90 1F 00 00 */	stw r0, 0(r31)
/* 805E5950  4B E2 7A 85 */	bl _Matrix_to_Mtx_new
/* 805E5954  90 7F 00 04 */	stw r3, 4(r31)
/* 805E5958  3C 00 DE 00 */	lis r0, 0xde00
/* 805E595C  3C 60 80 B0 */	lis r3, pos_yaji_wakuT_model@ha /* 0x80AFB508@ha */
/* 805E5960  90 1F 00 08 */	stw r0, 8(r31)
/* 805E5964  38 03 B5 08 */	addi r0, r3, pos_yaji_wakuT_model@l /* 0x80AFB508@l */
/* 805E5968  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E596C  3B FF 00 10 */	addi r31, r31, 0x10
lbl_805E5970:
/* 805E5970  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 805E5974  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E5978  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E597C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E5980  39 61 00 30 */	addi r11, r1, 0x30
/* 805E5984  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E5988  4B AB 55 99 */	bl func_8009AF20
/* 805E598C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E5990  7C 08 03 A6 */	mtlr r0
/* 805E5994  38 21 00 50 */	addi r1, r1, 0x50
/* 805E5998  4E 80 00 20 */	blr 
