lbl_804D03A4:
/* 804D03A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D03A8  7C 08 02 A6 */	mflr r0
/* 804D03AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D03B0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D03B4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D03B8  39 61 00 30 */	addi r11, r1, 0x30
/* 804D03BC  4B BC AB 19 */	bl func_8009AED4
/* 804D03C0  7C 7E 1B 78 */	mr r30, r3
/* 804D03C4  7C 9D 23 78 */	mr r29, r4
/* 804D03C8  83 E4 00 00 */	lwz r31, 0(r4)
/* 804D03CC  38 60 00 00 */	li r3, 0
/* 804D03D0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D03D4  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 804D03D8  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804D03DC  4B F3 BF 25 */	bl Matrix_translate
/* 804D03E0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804D03E4  38 60 00 01 */	li r3, 1
/* 804D03E8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 804D03EC  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 804D03F0  4B F3 BF FD */	bl Matrix_scale
/* 804D03F4  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 804D03F8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804D03FC  3C A0 E7 00 */	lis r5, 0xe700
/* 804D0400  38 80 00 00 */	li r4, 0
/* 804D0404  38 C7 00 08 */	addi r6, r7, 8
/* 804D0408  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804D040C  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 804D0410  90 A7 00 00 */	stw r5, 0(r7)
/* 804D0414  90 87 00 04 */	stw r4, 4(r7)
/* 804D0418  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 804D041C  38 7E 00 08 */	addi r3, r30, 8
/* 804D0420  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804D0424  90 1E 00 00 */	stw r0, 0(r30)
/* 804D0428  80 7D 00 00 */	lwz r3, 0(r29)
/* 804D042C  4B F3 CF A9 */	bl _Matrix_to_Mtx_new
/* 804D0430  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D0434  90 7E 00 04 */	stw r3, 4(r30)
/* 804D0438  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D043C  3C 63 00 02 */	addis r3, r3, 2
/* 804D0440  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D0444  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D0448  41 80 00 1C */	blt lbl_804D0464
/* 804D044C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D0450  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D0454  7C 04 00 00 */	cmpw r4, r0
/* 804D0458  40 80 00 0C */	bge lbl_804D0464
/* 804D045C  3B DD 1D 70 */	addi r30, r29, 0x1d70
/* 804D0460  48 00 00 08 */	b lbl_804D0468
lbl_804D0464:
/* 804D0464  3B DD 1D 73 */	addi r30, r29, 0x1d73
lbl_804D0468:
/* 804D0468  4B EE 93 E9 */	bl mKK_windowlight_alpha_get
/* 804D046C  FF E0 08 90 */	fmr f31, f1
/* 804D0470  4B FF FC B9 */	bl calc_alpha_Ef_Room_Sunshine_Posthouse
/* 804D0474  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D0478  3C 00 43 30 */	lis r0, 0x4330
/* 804D047C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D0480  3C 60 80 64 */	lis r3, lit_480@ha /* 0x806463BC@ha */
/* 804D0484  C8 23 63 BC */	lfd f1, lit_480@l(r3)  /* 0x806463BC@l */
/* 804D0488  90 01 00 08 */	stw r0, 8(r1)
/* 804D048C  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 804D0490  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D0494  38 05 00 08 */	addi r0, r5, 8
/* 804D0498  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D049C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 804D04A0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804D04A4  FC 00 00 1E */	fctiwz f0, f0
/* 804D04A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804D04AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D04B0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D04B4  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804D04B8  90 05 00 00 */	stw r0, 0(r5)
/* 804D04BC  88 1E 00 01 */	lbz r0, 1(r30)
/* 804D04C0  88 7E 00 00 */	lbz r3, 0(r30)
/* 804D04C4  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804D04C8  88 9E 00 02 */	lbz r4, 2(r30)
/* 804D04CC  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 804D04D0  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 804D04D4  60 00 00 FF */	ori r0, r0, 0xff
/* 804D04D8  90 05 00 04 */	stw r0, 4(r5)
/* 804D04DC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D04E0  39 61 00 30 */	addi r11, r1, 0x30
/* 804D04E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D04E8  4B BC AA 39 */	bl func_8009AF20
/* 804D04EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D04F0  7C 08 03 A6 */	mtlr r0
/* 804D04F4  38 21 00 40 */	addi r1, r1, 0x40
/* 804D04F8  4E 80 00 20 */	blr 
