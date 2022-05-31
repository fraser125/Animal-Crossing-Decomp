lbl_804ADB60:
/* 804ADB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ADB64  7C C6 07 34 */	extsh r6, r6
/* 804ADB68  3C 00 43 30 */	lis r0, 0x4330
/* 804ADB6C  3D 00 80 64 */	lis r8, lit_486@ha /* 0x80645F44@ha */
/* 804ADB70  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 804ADB74  90 01 00 08 */	stw r0, 8(r1)
/* 804ADB78  39 28 5F 44 */	addi r9, r8, lit_486@l /* 0x80645F44@l */
/* 804ADB7C  3D 00 80 64 */	lis r8, lit_484@ha /* 0x80645F3C@ha */
/* 804ADB80  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804ADB84  3C C0 80 64 */	lis r6, lit_563@ha /* 0x80645F6C@ha */
/* 804ADB88  C8 69 00 00 */	lfd f3, 0(r9)
/* 804ADB8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 804ADB90  C0 45 00 04 */	lfs f2, 4(r5)
/* 804ADB94  C0 24 00 04 */	lfs f1, 4(r4)
/* 804ADB98  EC 00 18 28 */	fsubs f0, f0, f3
/* 804ADB9C  C0 68 5F 3C */	lfs f3, lit_484@l(r8)  /* 0x80645F3C@l */
/* 804ADBA0  ED 02 08 28 */	fsubs f8, f2, f1
/* 804ADBA4  C0 26 5F 6C */	lfs f1, lit_563@l(r6)  /* 0x80645F6C@l */
/* 804ADBA8  EC E3 00 32 */	fmuls f7, f3, f0
/* 804ADBAC  C0 A5 00 00 */	lfs f5, 0(r5)
/* 804ADBB0  C0 84 00 00 */	lfs f4, 0(r4)
/* 804ADBB4  C0 65 00 08 */	lfs f3, 8(r5)
/* 804ADBB8  C0 44 00 08 */	lfs f2, 8(r4)
/* 804ADBBC  FC 08 08 40 */	fcmpo cr0, f8, f1
/* 804ADBC0  EC 85 20 28 */	fsubs f4, f5, f4
/* 804ADBC4  ED 23 10 28 */	fsubs f9, f3, f2
/* 804ADBC8  40 81 00 10 */	ble lbl_804ADBD8
/* 804ADBCC  3C 80 80 64 */	lis r4, lit_530@ha /* 0x80645F60@ha */
/* 804ADBD0  C0 C4 5F 60 */	lfs f6, lit_530@l(r4)  /* 0x80645F60@l */
/* 804ADBD4  48 00 00 0C */	b lbl_804ADBE0
lbl_804ADBD8:
/* 804ADBD8  3C 80 80 64 */	lis r4, lit_436@ha /* 0x80645F28@ha */
/* 804ADBDC  C0 C4 5F 28 */	lfs f6, lit_436@l(r4)  /* 0x80645F28@l */
lbl_804ADBE0:
/* 804ADBE0  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 804ADBE4  2C 00 00 01 */	cmpwi r0, 1
/* 804ADBE8  41 82 00 3C */	beq lbl_804ADC24
/* 804ADBEC  40 80 00 10 */	bge lbl_804ADBFC
/* 804ADBF0  2C 00 00 00 */	cmpwi r0, 0
/* 804ADBF4  40 80 00 14 */	bge lbl_804ADC08
/* 804ADBF8  48 00 00 D8 */	b lbl_804ADCD0
lbl_804ADBFC:
/* 804ADBFC  2C 00 00 03 */	cmpwi r0, 3
/* 804ADC00  40 80 00 D0 */	bge lbl_804ADCD0
/* 804ADC04  48 00 00 78 */	b lbl_804ADC7C
lbl_804ADC08:
/* 804ADC08  EC 44 00 24 */	fdivs f2, f4, f0
/* 804ADC0C  EC 28 00 24 */	fdivs f1, f8, f0
/* 804ADC10  D0 43 01 DC */	stfs f2, 0x1dc(r3)
/* 804ADC14  EC 09 00 24 */	fdivs f0, f9, f0
/* 804ADC18  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 804ADC1C  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 804ADC20  48 00 00 B0 */	b lbl_804ADCD0
lbl_804ADC24:
/* 804ADC24  EC 26 00 32 */	fmuls f1, f6, f0
/* 804ADC28  3C 80 80 64 */	lis r4, lit_564@ha /* 0x80645F70@ha */
/* 804ADC2C  EC 44 38 24 */	fdivs f2, f4, f7
/* 804ADC30  C0 A4 5F 70 */	lfs f5, lit_564@l(r4)  /* 0x80645F70@l */
/* 804ADC34  EC 81 40 28 */	fsubs f4, f1, f8
/* 804ADC38  EC 60 00 32 */	fmuls f3, f0, f0
/* 804ADC3C  EC 29 38 24 */	fdivs f1, f9, f7
/* 804ADC40  EC 85 01 32 */	fmuls f4, f5, f4
/* 804ADC44  EC 64 18 24 */	fdivs f3, f4, f3
/* 804ADC48  D0 63 01 EC */	stfs f3, 0x1ec(r3)
/* 804ADC4C  D0 43 01 DC */	stfs f2, 0x1dc(r3)
/* 804ADC50  C0 43 01 EC */	lfs f2, 0x1ec(r3)
/* 804ADC54  EC 46 10 28 */	fsubs f2, f6, f2
/* 804ADC58  D0 43 01 E0 */	stfs f2, 0x1e0(r3)
/* 804ADC5C  D0 23 01 E4 */	stfs f1, 0x1e4(r3)
/* 804ADC60  C0 23 01 DC */	lfs f1, 0x1dc(r3)
/* 804ADC64  EC 21 00 24 */	fdivs f1, f1, f0
/* 804ADC68  D0 23 01 E8 */	stfs f1, 0x1e8(r3)
/* 804ADC6C  C0 23 01 E4 */	lfs f1, 0x1e4(r3)
/* 804ADC70  EC 01 00 24 */	fdivs f0, f1, f0
/* 804ADC74  D0 03 01 F0 */	stfs f0, 0x1f0(r3)
/* 804ADC78  48 00 00 58 */	b lbl_804ADCD0
lbl_804ADC7C:
/* 804ADC7C  EC 26 00 32 */	fmuls f1, f6, f0
/* 804ADC80  3C 80 80 64 */	lis r4, lit_564@ha /* 0x80645F70@ha */
/* 804ADC84  EC 44 38 24 */	fdivs f2, f4, f7
/* 804ADC88  C0 A4 5F 70 */	lfs f5, lit_564@l(r4)  /* 0x80645F70@l */
/* 804ADC8C  EC 81 40 28 */	fsubs f4, f1, f8
/* 804ADC90  EC 60 00 32 */	fmuls f3, f0, f0
/* 804ADC94  EC 29 38 24 */	fdivs f1, f9, f7
/* 804ADC98  EC 85 01 32 */	fmuls f4, f5, f4
/* 804ADC9C  EC 64 18 24 */	fdivs f3, f4, f3
/* 804ADCA0  D0 63 02 04 */	stfs f3, 0x204(r3)
/* 804ADCA4  D0 43 01 F4 */	stfs f2, 0x1f4(r3)
/* 804ADCA8  C0 43 02 04 */	lfs f2, 0x204(r3)
/* 804ADCAC  EC 46 10 28 */	fsubs f2, f6, f2
/* 804ADCB0  D0 43 01 F8 */	stfs f2, 0x1f8(r3)
/* 804ADCB4  D0 23 01 FC */	stfs f1, 0x1fc(r3)
/* 804ADCB8  C0 23 01 F4 */	lfs f1, 0x1f4(r3)
/* 804ADCBC  EC 21 00 24 */	fdivs f1, f1, f0
/* 804ADCC0  D0 23 02 00 */	stfs f1, 0x200(r3)
/* 804ADCC4  C0 23 01 FC */	lfs f1, 0x1fc(r3)
/* 804ADCC8  EC 01 00 24 */	fdivs f0, f1, f0
/* 804ADCCC  D0 03 02 08 */	stfs f0, 0x208(r3)
lbl_804ADCD0:
/* 804ADCD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804ADCD4  4E 80 00 20 */	blr 
