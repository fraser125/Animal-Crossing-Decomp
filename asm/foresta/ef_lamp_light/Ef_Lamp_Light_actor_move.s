lbl_804CED58:
/* 804CED58  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804CED5C  7C 08 02 A6 */	mflr r0
/* 804CED60  90 01 00 64 */	stw r0, 0x64(r1)
/* 804CED64  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804CED68  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804CED6C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804CED70  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804CED74  39 61 00 40 */	addi r11, r1, 0x40
/* 804CED78  4B BC C1 55 */	bl func_8009AECC
/* 804CED7C  7C 7B 1B 78 */	mr r27, r3
/* 804CED80  4B FF FF 29 */	bl eLL_ctrl_light_sw
/* 804CED84  80 1B 01 74 */	lwz r0, 0x174(r27)
/* 804CED88  3C C0 80 6A */	lis r6, add_data@ha /* 0x8069BF04@ha */
/* 804CED8C  3C A0 80 6A */	lis r5, cmp_data@ha /* 0x8069BF1C@ha */
/* 804CED90  3C 80 80 64 */	lis r4, data_806462DC@ha /* 0x806462DC@ha */
/* 804CED94  3C 60 80 64 */	lis r3, lit_433@ha /* 0x806462E4@ha */
/* 804CED98  54 00 10 3A */	slwi r0, r0, 2
/* 804CED9C  38 C6 BF 04 */	addi r6, r6, add_data@l /* 0x8069BF04@l */
/* 804CEDA0  38 A5 BF 1C */	addi r5, r5, cmp_data@l /* 0x8069BF1C@l */
/* 804CEDA4  3B DB 01 7D */	addi r30, r27, 0x17d
/* 804CEDA8  7F A6 00 2E */	lwzx r29, r6, r0
/* 804CEDAC  7F 85 00 2E */	lwzx r28, r5, r0
/* 804CEDB0  3B 60 00 00 */	li r27, 0
/* 804CEDB4  C3 C4 62 DC */	lfs f30, data_806462DC@l(r4)  /* 0x806462DC@l */
/* 804CEDB8  3F E0 43 30 */	lis r31, 0x4330
/* 804CEDBC  CB E3 62 E4 */	lfd f31, lit_433@l(r3)  /* 0x806462E4@l */
lbl_804CEDC0:
/* 804CEDC0  88 1E 00 00 */	lbz r0, 0(r30)
/* 804CEDC4  38 61 00 08 */	addi r3, r1, 8
/* 804CEDC8  93 E1 00 10 */	stw r31, 0x10(r1)
/* 804CEDCC  B0 01 00 08 */	sth r0, 8(r1)
/* 804CEDD0  A8 1D 00 00 */	lha r0, 0(r29)
/* 804CEDD4  A8 9C 00 00 */	lha r4, 0(r28)
/* 804CEDD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CEDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CEDE0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804CEDE4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804CEDE8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804CEDEC  FC 00 00 1E */	fctiwz f0, f0
/* 804CEDF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804CEDF4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 804CEDF8  4B EE BE 01 */	bl chase_s
/* 804CEDFC  A8 01 00 08 */	lha r0, 8(r1)
/* 804CEE00  3B 7B 00 01 */	addi r27, r27, 1
/* 804CEE04  2C 1B 00 03 */	cmpwi r27, 3
/* 804CEE08  3B 9C 00 02 */	addi r28, r28, 2
/* 804CEE0C  98 1E 00 00 */	stb r0, 0(r30)
/* 804CEE10  3B DE 00 01 */	addi r30, r30, 1
/* 804CEE14  3B BD 00 02 */	addi r29, r29, 2
/* 804CEE18  41 80 FF A8 */	blt lbl_804CEDC0
/* 804CEE1C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804CEE20  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804CEE24  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804CEE28  39 61 00 40 */	addi r11, r1, 0x40
/* 804CEE2C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804CEE30  4B BC C0 E9 */	bl func_8009AF18
/* 804CEE34  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804CEE38  7C 08 03 A6 */	mtlr r0
/* 804CEE3C  38 21 00 60 */	addi r1, r1, 0x60
/* 804CEE40  4E 80 00 20 */	blr 
