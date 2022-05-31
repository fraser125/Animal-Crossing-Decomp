lbl_804BAC7C:
/* 804BAC7C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804BAC80  7C 08 02 A6 */	mflr r0
/* 804BAC84  90 01 00 64 */	stw r0, 0x64(r1)
/* 804BAC88  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804BAC8C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804BAC90  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804BAC94  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804BAC98  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804BAC9C  7C 7F 1B 78 */	mr r31, r3
/* 804BACA0  3C 00 43 30 */	lis r0, 0x4330
/* 804BACA4  A8 A3 00 50 */	lha r5, 0x50(r3)
/* 804BACA8  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BACAC  38 83 60 AC */	addi r4, r3, lit_770@l /* 0x806460AC@l */
/* 804BACB0  A8 DF 00 8A */	lha r6, 0x8a(r31)
/* 804BACB4  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 804BACB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804BACBC  C8 24 00 00 */	lfd f1, 0(r4)
/* 804BACC0  7C C0 07 35 */	extsh. r0, r6
/* 804BACC4  90 61 00 24 */	stw r3, 0x24(r1)
/* 804BACC8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804BACCC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804BACD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BACD4  EF E2 00 24 */	fdivs f31, f2, f0
/* 804BACD8  40 81 00 48 */	ble lbl_804BAD20
/* 804BACDC  2C 06 00 01 */	cmpwi r6, 1
/* 804BACE0  40 82 00 34 */	bne lbl_804BAD14
/* 804BACE4  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804BACE8  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 804BACEC  41 82 00 14 */	beq lbl_804BAD00
/* 804BACF0  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BACF4  38 60 04 3D */	li r3, 0x43d
/* 804BACF8  48 17 32 B1 */	bl sAdo_OngenTrgStart
/* 804BACFC  48 00 00 18 */	b lbl_804BAD14
lbl_804BAD00:
/* 804BAD00  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804BAD04  41 82 00 10 */	beq lbl_804BAD14
/* 804BAD08  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BAD0C  38 60 04 0C */	li r3, 0x40c
/* 804BAD10  48 17 32 99 */	bl sAdo_OngenTrgStart
lbl_804BAD14:
/* 804BAD14  A8 7F 00 8A */	lha r3, 0x8a(r31)
/* 804BAD18  38 03 FF FF */	addi r0, r3, -1
/* 804BAD1C  B0 1F 00 8A */	sth r0, 0x8a(r31)
lbl_804BAD20:
/* 804BAD20  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804BAD24  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804BAD28  41 82 00 94 */	beq lbl_804BADBC
/* 804BAD2C  3C 80 80 64 */	lis r4, lit_1855@ha /* 0x80646108@ha */
/* 804BAD30  3C 00 43 30 */	lis r0, 0x4330
/* 804BAD34  C0 44 61 08 */	lfs f2, lit_1855@l(r4)  /* 0x80646108@l */
/* 804BAD38  3C 60 80 64 */	lis r3, lit_1857@ha /* 0x80646110@ha */
/* 804BAD3C  38 83 61 10 */	addi r4, r3, lit_1857@l /* 0x80646110@l */
/* 804BAD40  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 804BAD44  EC A2 07 F2 */	fmuls f5, f2, f31
/* 804BAD48  C0 04 00 00 */	lfs f0, 0(r4)
/* 804BAD4C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804BAD50  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BAD54  90 01 00 28 */	stw r0, 0x28(r1)
/* 804BAD58  EC 00 01 72 */	fmuls f0, f0, f5
/* 804BAD5C  EC 83 08 28 */	fsubs f4, f3, f1
/* 804BAD60  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 804BAD64  C8 23 60 AC */	lfd f1, lit_770@l(r3)  /* 0x806460AC@l */
/* 804BAD68  FC 00 00 1E */	fctiwz f0, f0
/* 804BAD6C  FC 80 22 10 */	fabs f4, f4
/* 804BAD70  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804BAD74  FC 00 20 18 */	frsp f0, f4
/* 804BAD78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BAD7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BAD80  EF C0 18 24 */	fdivs f30, f0, f3
/* 804BAD84  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804BAD88  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804BAD8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BAD90  EC 02 00 32 */	fmuls f0, f2, f0
/* 804BAD94  EC 05 00 28 */	fsubs f0, f5, f0
/* 804BAD98  FC 00 00 1E */	fctiwz f0, f0
/* 804BAD9C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804BADA0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804BADA4  4B EF FD 4D */	bl sin_s
/* 804BADA8  3C 60 80 64 */	lis r3, lit_1856@ha /* 0x8064610C@ha */
/* 804BADAC  C0 03 61 0C */	lfs f0, lit_1856@l(r3)  /* 0x8064610C@l */
/* 804BADB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804BADB4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804BADB8  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_804BADBC:
/* 804BADBC  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804BADC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BADC4  41 82 00 3C */	beq lbl_804BAE00
/* 804BADC8  3C 60 80 64 */	lis r3, lit_845@ha /* 0x806460B4@ha */
/* 804BADCC  3C 80 80 64 */	lis r4, lit_1859@ha /* 0x80646118@ha */
/* 804BADD0  C0 23 60 B4 */	lfs f1, lit_845@l(r3)  /* 0x806460B4@l */
/* 804BADD4  3C A0 80 64 */	lis r5, lit_1858@ha /* 0x80646114@ha */
/* 804BADD8  C0 44 61 18 */	lfs f2, lit_1859@l(r4)  /* 0x80646118@l */
/* 804BADDC  EC 01 F8 28 */	fsubs f0, f1, f31
/* 804BADE0  C0 65 61 14 */	lfs f3, lit_1858@l(r5)  /* 0x80646114@l */
/* 804BADE4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804BADE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804BADEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804BADF0  EC 03 00 2A */	fadds f0, f3, f0
/* 804BADF4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804BADF8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804BADFC  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804BAE00:
/* 804BAE00  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804BAE04  4B EF FC ED */	bl sin_s
/* 804BAE08  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804BAE0C  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804BAE10  EF E0 00 72 */	fmuls f31, f0, f1
/* 804BAE14  4B EF FC 89 */	bl cos_s
/* 804BAE18  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 804BAE1C  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x806460CC@ha */
/* 804BAE20  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804BAE24  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804BAE28  EC 02 00 32 */	fmuls f0, f2, f0
/* 804BAE2C  C0 43 60 CC */	lfs f2, lit_1004@l(r3)  /* 0x806460CC@l */
/* 804BAE30  EC 83 00 72 */	fmuls f4, f3, f1
/* 804BAE34  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804BAE38  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804BAE3C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 804BAE40  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804BAE44  EC 01 00 2A */	fadds f0, f1, f0
/* 804BAE48  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 804BAE4C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804BAE50  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804BAE54  EC 02 00 32 */	fmuls f0, f2, f0
/* 804BAE58  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804BAE5C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 804BAE60  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804BAE64  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804BAE68  EC 22 08 2A */	fadds f1, f2, f1
/* 804BAE6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 804BAE70  EC 01 00 2A */	fadds f0, f1, f0
/* 804BAE74  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804BAE78  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804BAE7C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804BAE80  EC 04 00 32 */	fmuls f0, f4, f0
/* 804BAE84  EC 01 00 2A */	fadds f0, f1, f0
/* 804BAE88  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 804BAE8C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804BAE90  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804BAE94  41 82 00 68 */	beq lbl_804BAEFC
/* 804BAE98  A0 9F 00 78 */	lhz r4, 0x78(r31)
/* 804BAE9C  3C 00 43 30 */	lis r0, 0x4330
/* 804BAEA0  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x806460DC@ha */
/* 804BAEA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BAEA8  C8 23 60 DC */	lfd f1, lit_1524@l(r3)  /* 0x806460DC@l */
/* 804BAEAC  90 81 00 34 */	stw r4, 0x34(r1)
/* 804BAEB0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804BAEB4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804BAEB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BAEBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804BAEC0  40 81 00 3C */	ble lbl_804BAEFC
/* 804BAEC4  A0 1F 00 76 */	lhz r0, 0x76(r31)
/* 804BAEC8  28 00 00 FF */	cmplwi r0, 0xff
/* 804BAECC  41 81 00 20 */	bgt lbl_804BAEEC
/* 804BAED0  20 00 00 FF */	subfic r0, r0, 0xff
/* 804BAED4  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804BAED8  A0 7F 00 76 */	lhz r3, 0x76(r31)
/* 804BAEDC  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 804BAEE0  7C 03 02 14 */	add r0, r3, r0
/* 804BAEE4  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804BAEE8  48 00 00 14 */	b lbl_804BAEFC
lbl_804BAEEC:
/* 804BAEEC  38 00 00 00 */	li r0, 0
/* 804BAEF0  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804BAEF4  90 1F 00 00 */	stw r0, 0(r31)
/* 804BAEF8  90 1F 00 04 */	stw r0, 4(r31)
lbl_804BAEFC:
/* 804BAEFC  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804BAF00  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804BAF04  41 82 00 28 */	beq lbl_804BAF2C
/* 804BAF08  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 804BAF0C  41 82 00 14 */	beq lbl_804BAF20
/* 804BAF10  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804BAF14  38 03 FE DD */	addi r0, r3, -291
/* 804BAF18  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804BAF1C  48 00 00 10 */	b lbl_804BAF2C
lbl_804BAF20:
/* 804BAF20  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804BAF24  38 03 01 23 */	addi r0, r3, 0x123
/* 804BAF28  B0 1F 00 48 */	sth r0, 0x48(r31)
lbl_804BAF2C:
/* 804BAF2C  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804BAF30  3C 00 43 30 */	lis r0, 0x4330
/* 804BAF34  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BAF38  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BAF3C  38 04 FF FF */	addi r0, r4, -1
/* 804BAF40  C8 23 60 AC */	lfd f1, lit_770@l(r3)  /* 0x806460AC@l */
/* 804BAF44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BAF48  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804BAF4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BAF50  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804BAF54  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BAF58  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 804BAF5C  40 82 00 8C */	bne lbl_804BAFE8
/* 804BAF60  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804BAF64  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804BAF68  41 82 00 80 */	beq lbl_804BAFE8
/* 804BAF6C  54 60 04 E2 */	rlwinm r0, r3, 0, 0x13, 0x11
/* 804BAF70  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804BAF74  A0 9F 00 6C */	lhz r4, 0x6c(r31)
/* 804BAF78  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 804BAF7C  40 82 00 6C */	bne lbl_804BAFE8
/* 804BAF80  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804BAF84  28 03 28 00 */	cmplwi r3, 0x2800
/* 804BAF88  41 82 00 1C */	beq lbl_804BAFA4
/* 804BAF8C  38 03 D7 FF */	addi r0, r3, -10241
/* 804BAF90  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804BAF94  28 00 00 03 */	cmplwi r0, 3
/* 804BAF98  40 81 00 0C */	ble lbl_804BAFA4
/* 804BAF9C  28 03 28 07 */	cmplwi r3, 0x2807
/* 804BAFA0  40 82 00 14 */	bne lbl_804BAFB4
lbl_804BAFA4:
/* 804BAFA4  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BAFA8  38 60 01 27 */	li r3, 0x127
/* 804BAFAC  48 17 2F FD */	bl sAdo_OngenTrgStart
/* 804BAFB0  48 00 00 38 */	b lbl_804BAFE8
lbl_804BAFB4:
/* 804BAFB4  28 03 21 00 */	cmplwi r3, 0x2100
/* 804BAFB8  41 80 00 1C */	blt lbl_804BAFD4
/* 804BAFBC  28 03 21 04 */	cmplwi r3, 0x2104
/* 804BAFC0  41 81 00 14 */	bgt lbl_804BAFD4
/* 804BAFC4  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BAFC8  38 60 04 44 */	li r3, 0x444
/* 804BAFCC  48 17 2F DD */	bl sAdo_OngenTrgStart
/* 804BAFD0  48 00 00 18 */	b lbl_804BAFE8
lbl_804BAFD4:
/* 804BAFD4  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804BAFD8  40 82 00 10 */	bne lbl_804BAFE8
/* 804BAFDC  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BAFE0  38 60 01 28 */	li r3, 0x128
/* 804BAFE4  48 17 2F C5 */	bl sAdo_OngenTrgStart
lbl_804BAFE8:
/* 804BAFE8  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804BAFEC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804BAFF0  41 82 00 38 */	beq lbl_804BB028
/* 804BAFF4  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804BAFF8  3C 00 43 30 */	lis r0, 0x4330
/* 804BAFFC  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BB000  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BB004  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804BB008  C8 23 60 AC */	lfd f1, lit_770@l(r3)  /* 0x806460AC@l */
/* 804BB00C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BB010  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804BB014  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804BB018  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BB01C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804BB020  4C 41 13 82 */	cror 2, 1, 2
/* 804BB024  41 82 00 2C */	beq lbl_804BB050
lbl_804BB028:
/* 804BB028  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804BB02C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804BB030  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804BB034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BB038  40 80 01 9C */	bge lbl_804BB1D4
/* 804BB03C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804BB040  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804BB044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BB048  4C 40 13 82 */	cror 2, 0, 2
/* 804BB04C  40 82 01 88 */	bne lbl_804BB1D4
lbl_804BB050:
/* 804BB050  38 7F 00 14 */	addi r3, r31, 0x14
/* 804BB054  38 9F 00 20 */	addi r4, r31, 0x20
/* 804BB058  4B EF FE 65 */	bl xyz_t_move
/* 804BB05C  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804BB060  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804BB064  41 82 00 10 */	beq lbl_804BB074
/* 804BB068  7F E3 FB 78 */	mr r3, r31
/* 804BB06C  4B FF FA BD */	bl bIT_actor_drop_move_bury_change
/* 804BB070  48 00 01 78 */	b lbl_804BB1E8
lbl_804BB074:
/* 804BB074  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 804BB078  2C 00 00 00 */	cmpwi r0, 0
/* 804BB07C  41 82 00 F0 */	beq lbl_804BB16C
/* 804BB080  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 804BB084  38 7F 00 14 */	addi r3, r31, 0x14
/* 804BB088  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804BB08C  38 9F 00 20 */	addi r4, r31, 0x20
/* 804BB090  4B EF FE 2D */	bl xyz_t_move
/* 804BB094  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804BB098  3C 00 43 30 */	lis r0, 0x4330
/* 804BB09C  38 83 60 8C */	addi r4, r3, data_8064608C@l /* 0x8064608C@l */
/* 804BB0A0  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BB0A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804BB0A8  38 83 60 AC */	addi r4, r3, lit_770@l /* 0x806460AC@l */
/* 804BB0AC  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BB0B0  38 7F 00 94 */	addi r3, r31, 0x94
/* 804BB0B4  C8 44 00 00 */	lfd f2, 0(r4)
/* 804BB0B8  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BB0BC  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804BB0C0  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 804BB0C4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804BB0C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BB0CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BB0D0  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 804BB0D4  EC 21 10 28 */	fsubs f1, f1, f2
/* 804BB0D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BB0DC  FC 00 00 1E */	fctiwz f0, f0
/* 804BB0E0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804BB0E4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804BB0E8  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 804BB0EC  4B EF FD D1 */	bl xyz_t_move
/* 804BB0F0  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 804BB0F4  3C 00 43 30 */	lis r0, 0x4330
/* 804BB0F8  3C A0 80 64 */	lis r5, data_8064608C@ha /* 0x8064608C@ha */
/* 804BB0FC  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806460AC@ha */
/* 804BB100  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804BB104  90 01 00 20 */	stw r0, 0x20(r1)
/* 804BB108  38 C5 60 8C */	addi r6, r5, data_8064608C@l /* 0x8064608C@l */
/* 804BB10C  38 A4 60 AC */	addi r5, r4, lit_770@l /* 0x806460AC@l */
/* 804BB110  90 61 00 24 */	stw r3, 0x24(r1)
/* 804BB114  38 61 00 0C */	addi r3, r1, 0xc
/* 804BB118  C0 26 00 00 */	lfs f1, 0(r6)
/* 804BB11C  38 81 00 08 */	addi r4, r1, 8
/* 804BB120  C8 65 00 00 */	lfd f3, 0(r5)
/* 804BB124  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804BB128  FC 40 08 90 */	fmr f2, f1
/* 804BB12C  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 804BB130  EC 60 18 28 */	fsubs f3, f0, f3
/* 804BB134  4B FF DB 71 */	bl func_calc_spec_drop_time
/* 804BB138  C0 01 00 08 */	lfs f0, 8(r1)
/* 804BB13C  3C 60 80 64 */	lis r3, lit_845@ha /* 0x806460B4@ha */
/* 804BB140  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804BB144  C0 03 60 B4 */	lfs f0, lit_845@l(r3)  /* 0x806460B4@l */
/* 804BB148  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804BB14C  D0 3F 00 A0 */	stfs f1, 0xa0(r31)
/* 804BB150  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804BB154  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 804BB158  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804BB15C  A8 7F 00 6E */	lha r3, 0x6e(r31)
/* 804BB160  38 03 FF FF */	addi r0, r3, -1
/* 804BB164  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804BB168  48 00 00 80 */	b lbl_804BB1E8
lbl_804BB16C:
/* 804BB16C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804BB170  28 00 00 62 */	cmplwi r0, 0x62
/* 804BB174  40 82 00 1C */	bne lbl_804BB190
/* 804BB178  38 00 00 01 */	li r0, 1
/* 804BB17C  3C 60 80 4C */	lis r3, bIT_actor_drop_wait_bee@ha /* 0x804BABA8@ha */
/* 804BB180  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804BB184  38 03 AB A8 */	addi r0, r3, bIT_actor_drop_wait_bee@l /* 0x804BABA8@l */
/* 804BB188  90 1F 00 00 */	stw r0, 0(r31)
/* 804BB18C  48 00 00 5C */	b lbl_804BB1E8
lbl_804BB190:
/* 804BB190  38 00 00 00 */	li r0, 0
/* 804BB194  90 1F 00 00 */	stw r0, 0(r31)
/* 804BB198  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB19C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804BB1A0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804BB1A4  40 82 00 44 */	bne lbl_804BB1E8
/* 804BB1A8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804BB1AC  38 81 00 10 */	addi r4, r1, 0x10
/* 804BB1B0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804BB1B4  38 A0 00 01 */	li r5, 1
/* 804BB1B8  90 61 00 10 */	stw r3, 0x10(r1)
/* 804BB1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB1C0  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804BB1C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BB1C8  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804BB1CC  4B EE C6 65 */	bl mFI_SetFG_common
/* 804BB1D0  48 00 00 18 */	b lbl_804BB1E8
lbl_804BB1D4:
/* 804BB1D4  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x806460CC@ha */
/* 804BB1D8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804BB1DC  C0 03 60 CC */	lfs f0, lit_1004@l(r3)  /* 0x806460CC@l */
/* 804BB1E0  EC 01 00 2A */	fadds f0, f1, f0
/* 804BB1E4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
lbl_804BB1E8:
/* 804BB1E8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804BB1EC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804BB1F0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804BB1F4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804BB1F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804BB1FC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804BB200  7C 08 03 A6 */	mtlr r0
/* 804BB204  38 21 00 60 */	addi r1, r1, 0x60
/* 804BB208  4E 80 00 20 */	blr 
