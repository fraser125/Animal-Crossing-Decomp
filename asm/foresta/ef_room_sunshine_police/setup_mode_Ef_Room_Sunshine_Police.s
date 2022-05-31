lbl_804CFBFC:
/* 804CFBFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CFC00  7C 08 02 A6 */	mflr r0
/* 804CFC04  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CFC08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804CFC0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804CFC10  39 61 00 30 */	addi r11, r1, 0x30
/* 804CFC14  4B BC B2 C1 */	bl func_8009AED4
/* 804CFC18  7C 7E 1B 78 */	mr r30, r3
/* 804CFC1C  7C 9D 23 78 */	mr r29, r4
/* 804CFC20  83 E4 00 00 */	lwz r31, 0(r4)
/* 804CFC24  38 60 00 00 */	li r3, 0
/* 804CFC28  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804CFC2C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 804CFC30  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804CFC34  4B F3 C6 CD */	bl Matrix_translate
/* 804CFC38  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804CFC3C  38 60 00 01 */	li r3, 1
/* 804CFC40  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 804CFC44  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 804CFC48  4B F3 C7 A5 */	bl Matrix_scale
/* 804CFC4C  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 804CFC50  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CFC54  3C A0 E7 00 */	lis r5, 0xe700
/* 804CFC58  38 80 00 00 */	li r4, 0
/* 804CFC5C  38 C7 00 08 */	addi r6, r7, 8
/* 804CFC60  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CFC64  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 804CFC68  90 A7 00 00 */	stw r5, 0(r7)
/* 804CFC6C  90 87 00 04 */	stw r4, 4(r7)
/* 804CFC70  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 804CFC74  38 7E 00 08 */	addi r3, r30, 8
/* 804CFC78  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CFC7C  90 1E 00 00 */	stw r0, 0(r30)
/* 804CFC80  80 7D 00 00 */	lwz r3, 0(r29)
/* 804CFC84  4B F3 D7 51 */	bl _Matrix_to_Mtx_new
/* 804CFC88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CFC8C  90 7E 00 04 */	stw r3, 4(r30)
/* 804CFC90  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804CFC94  3C 63 00 02 */	addis r3, r3, 2
/* 804CFC98  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804CFC9C  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804CFCA0  41 80 00 1C */	blt lbl_804CFCBC
/* 804CFCA4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804CFCA8  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804CFCAC  7C 04 00 00 */	cmpw r4, r0
/* 804CFCB0  40 80 00 0C */	bge lbl_804CFCBC
/* 804CFCB4  3B DD 1D 70 */	addi r30, r29, 0x1d70
/* 804CFCB8  48 00 00 08 */	b lbl_804CFCC0
lbl_804CFCBC:
/* 804CFCBC  3B DD 1D 73 */	addi r30, r29, 0x1d73
lbl_804CFCC0:
/* 804CFCC0  4B EE 9B 91 */	bl mKK_windowlight_alpha_get
/* 804CFCC4  FF E0 08 90 */	fmr f31, f1
/* 804CFCC8  4B FF FC 79 */	bl calc_alpha_Ef_Room_SunshinePolice
/* 804CFCCC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804CFCD0  3C 00 43 30 */	lis r0, 0x4330
/* 804CFCD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CFCD8  3C 60 80 64 */	lis r3, lit_493@ha /* 0x80646374@ha */
/* 804CFCDC  C8 23 63 74 */	lfd f1, lit_493@l(r3)  /* 0x80646374@l */
/* 804CFCE0  90 01 00 08 */	stw r0, 8(r1)
/* 804CFCE4  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 804CFCE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CFCEC  38 05 00 08 */	addi r0, r5, 8
/* 804CFCF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CFCF4  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 804CFCF8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804CFCFC  FC 00 00 1E */	fctiwz f0, f0
/* 804CFD00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CFD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CFD08  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804CFD0C  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804CFD10  90 05 00 00 */	stw r0, 0(r5)
/* 804CFD14  88 1E 00 01 */	lbz r0, 1(r30)
/* 804CFD18  88 7E 00 00 */	lbz r3, 0(r30)
/* 804CFD1C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804CFD20  88 9E 00 02 */	lbz r4, 2(r30)
/* 804CFD24  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 804CFD28  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 804CFD2C  60 00 00 FF */	ori r0, r0, 0xff
/* 804CFD30  90 05 00 04 */	stw r0, 4(r5)
/* 804CFD34  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804CFD38  39 61 00 30 */	addi r11, r1, 0x30
/* 804CFD3C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804CFD40  4B BC B1 E1 */	bl func_8009AF20
/* 804CFD44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CFD48  7C 08 03 A6 */	mtlr r0
/* 804CFD4C  38 21 00 40 */	addi r1, r1, 0x40
/* 804CFD50  4E 80 00 20 */	blr 
