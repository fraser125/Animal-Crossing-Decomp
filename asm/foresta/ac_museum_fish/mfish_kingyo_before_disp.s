lbl_8044BE3C:
/* 8044BE3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8044BE40  7C 08 02 A6 */	mflr r0
/* 8044BE44  90 01 00 64 */	stw r0, 0x64(r1)
/* 8044BE48  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8044BE4C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8044BE50  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8044BE54  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8044BE58  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8044BE5C  2C 05 00 01 */	cmpwi r5, 1
/* 8044BE60  7D 1F 43 78 */	mr r31, r8
/* 8044BE64  40 82 00 88 */	bne lbl_8044BEEC
/* 8044BE68  A8 89 00 00 */	lha r4, 0(r9)
/* 8044BE6C  38 00 EA AB */	li r0, -5461
/* 8044BE70  A8 7F 06 1C */	lha r3, 0x61c(r31)
/* 8044BE74  7C 64 1A 14 */	add r3, r4, r3
/* 8044BE78  2C 03 EA AB */	cmpwi r3, -5461
/* 8044BE7C  40 81 00 08 */	ble lbl_8044BE84
/* 8044BE80  7C 60 1B 78 */	mr r0, r3
lbl_8044BE84:
/* 8044BE84  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044BE88  40 80 00 18 */	bge lbl_8044BEA0
/* 8044BE8C  2C 03 EA AB */	cmpwi r3, -5461
/* 8044BE90  38 00 EA AB */	li r0, -5461
/* 8044BE94  40 81 00 10 */	ble lbl_8044BEA4
/* 8044BE98  7C 60 1B 78 */	mr r0, r3
/* 8044BE9C  48 00 00 08 */	b lbl_8044BEA4
lbl_8044BEA0:
/* 8044BEA0  38 00 15 55 */	li r0, 0x1555
lbl_8044BEA4:
/* 8044BEA4  B0 09 00 00 */	sth r0, 0(r9)
/* 8044BEA8  38 00 EA AB */	li r0, -5461
/* 8044BEAC  A8 89 00 02 */	lha r4, 2(r9)
/* 8044BEB0  A8 7F 06 1C */	lha r3, 0x61c(r31)
/* 8044BEB4  7C 64 1A 14 */	add r3, r4, r3
/* 8044BEB8  2C 03 EA AB */	cmpwi r3, -5461
/* 8044BEBC  40 81 00 08 */	ble lbl_8044BEC4
/* 8044BEC0  7C 60 1B 78 */	mr r0, r3
lbl_8044BEC4:
/* 8044BEC4  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044BEC8  40 80 00 18 */	bge lbl_8044BEE0
/* 8044BECC  2C 03 EA AB */	cmpwi r3, -5461
/* 8044BED0  38 00 EA AB */	li r0, -5461
/* 8044BED4  40 81 00 10 */	ble lbl_8044BEE4
/* 8044BED8  7C 60 1B 78 */	mr r0, r3
/* 8044BEDC  48 00 00 08 */	b lbl_8044BEE4
lbl_8044BEE0:
/* 8044BEE0  38 00 15 55 */	li r0, 0x1555
lbl_8044BEE4:
/* 8044BEE4  B0 09 00 02 */	sth r0, 2(r9)
/* 8044BEE8  48 00 02 CC */	b lbl_8044C1B4
lbl_8044BEEC:
/* 8044BEEC  2C 05 00 02 */	cmpwi r5, 2
/* 8044BEF0  40 82 02 C4 */	bne lbl_8044C1B4
/* 8044BEF4  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 8044BEF8  C0 5F 05 F0 */	lfs f2, 0x5f0(r31)
/* 8044BEFC  C0 03 43 68 */	lfs f0, lit_1712@l(r3)  /* 0x80644368@l */
/* 8044BF00  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8044BF04  EC 02 00 28 */	fsubs f0, f2, f0
/* 8044BF08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8044BF0C  40 81 00 50 */	ble lbl_8044BF5C
/* 8044BF10  A8 C9 00 02 */	lha r6, 2(r9)
/* 8044BF14  3C 00 43 30 */	lis r0, 0x4330
/* 8044BF18  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044BF1C  90 01 00 08 */	stw r0, 8(r1)
/* 8044BF20  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8044BF24  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8044BF28  90 81 00 0C */	stw r4, 0xc(r1)
/* 8044BF2C  EC 02 08 28 */	fsubs f0, f2, f1
/* 8044BF30  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 8044BF34  C8 65 42 8C */	lfd f3, lit_570@l(r5)  /* 0x8064428C@l */
/* 8044BF38  C8 41 00 08 */	lfd f2, 8(r1)
/* 8044BF3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044BF40  EC 22 18 28 */	fsubs f1, f2, f3
/* 8044BF44  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044BF48  FC 00 00 1E */	fctiwz f0, f0
/* 8044BF4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8044BF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044BF54  7C 06 02 14 */	add r0, r6, r0
/* 8044BF58  B0 09 00 02 */	sth r0, 2(r9)
lbl_8044BF5C:
/* 8044BF5C  A8 9F 06 1C */	lha r4, 0x61c(r31)
/* 8044BF60  38 00 C7 1D */	li r0, -14563
/* 8044BF64  A8 69 00 02 */	lha r3, 2(r9)
/* 8044BF68  1C 84 00 03 */	mulli r4, r4, 3
/* 8044BF6C  7C 64 18 50 */	subf r3, r4, r3
/* 8044BF70  2C 03 C7 1D */	cmpwi r3, -14563
/* 8044BF74  40 81 00 08 */	ble lbl_8044BF7C
/* 8044BF78  7C 60 1B 78 */	mr r0, r3
lbl_8044BF7C:
/* 8044BF7C  2C 00 38 E3 */	cmpwi r0, 0x38e3
/* 8044BF80  40 80 00 18 */	bge lbl_8044BF98
/* 8044BF84  2C 03 C7 1D */	cmpwi r3, -14563
/* 8044BF88  38 00 C7 1D */	li r0, -14563
/* 8044BF8C  40 81 00 10 */	ble lbl_8044BF9C
/* 8044BF90  7C 60 1B 78 */	mr r0, r3
/* 8044BF94  48 00 00 08 */	b lbl_8044BF9C
lbl_8044BF98:
/* 8044BF98  38 00 38 E3 */	li r0, 0x38e3
lbl_8044BF9C:
/* 8044BF9C  B0 09 00 02 */	sth r0, 2(r9)
/* 8044BFA0  38 00 EA AB */	li r0, -5461
/* 8044BFA4  A8 9F 06 1C */	lha r4, 0x61c(r31)
/* 8044BFA8  A8 69 00 00 */	lha r3, 0(r9)
/* 8044BFAC  7C 84 0E 70 */	srawi r4, r4, 1
/* 8044BFB0  7C 64 18 50 */	subf r3, r4, r3
/* 8044BFB4  2C 03 EA AB */	cmpwi r3, -5461
/* 8044BFB8  40 81 00 08 */	ble lbl_8044BFC0
/* 8044BFBC  7C 60 1B 78 */	mr r0, r3
lbl_8044BFC0:
/* 8044BFC0  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044BFC4  40 80 00 18 */	bge lbl_8044BFDC
/* 8044BFC8  2C 03 EA AB */	cmpwi r3, -5461
/* 8044BFCC  38 00 EA AB */	li r0, -5461
/* 8044BFD0  40 81 00 10 */	ble lbl_8044BFE0
/* 8044BFD4  7C 60 1B 78 */	mr r0, r3
/* 8044BFD8  48 00 00 08 */	b lbl_8044BFE0
lbl_8044BFDC:
/* 8044BFDC  38 00 15 55 */	li r0, 0x1555
lbl_8044BFE0:
/* 8044BFE0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044BFE4  B0 09 00 00 */	sth r0, 0(r9)
/* 8044BFE8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044BFEC  3C A0 43 30 */	lis r5, 0x4330
/* 8044BFF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8044BFF4  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044BFF8  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 8044BFFC  A8 9F 06 18 */	lha r4, 0x618(r31)
/* 8044C000  A8 03 1B B0 */	lha r0, 0x1bb0(r3)
/* 8044C004  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044C008  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 8044C00C  C0 23 42 68 */	lfs f1, lit_527@l(r3)  /* 0x80644268@l */
/* 8044C010  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044C014  3C 80 80 64 */	lis r4, lit_5325@ha /* 0x8064440C@ha */
/* 8044C018  90 01 00 0C */	stw r0, 0xc(r1)
/* 8044C01C  C8 67 00 00 */	lfd f3, 0(r7)
/* 8044C020  90 A1 00 08 */	stw r5, 8(r1)
/* 8044C024  C0 44 44 0C */	lfs f2, lit_5325@l(r4)  /* 0x8064440C@l */
/* 8044C028  C8 01 00 08 */	lfd f0, 8(r1)
/* 8044C02C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8044C030  EC 00 18 28 */	fsubs f0, f0, f3
/* 8044C034  A8 69 00 04 */	lha r3, 4(r9)
/* 8044C038  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8044C03C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044C040  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8044C044  EC 21 18 28 */	fsubs f1, f1, f3
/* 8044C048  EC 02 00 2A */	fadds f0, f2, f0
/* 8044C04C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044C050  FC 00 00 1E */	fctiwz f0, f0
/* 8044C054  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8044C058  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8044C05C  7C 03 02 14 */	add r0, r3, r0
/* 8044C060  B0 09 00 04 */	sth r0, 4(r9)
/* 8044C064  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 8044C068  4B F6 EA 35 */	bl cos_s
/* 8044C06C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044C070  3C 00 43 30 */	lis r0, 0x4330
/* 8044C074  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044C078  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 8044C07C  80 84 00 00 */	lwz r4, 0(r4)
/* 8044C080  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044C084  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 8044C088  90 01 00 20 */	stw r0, 0x20(r1)
/* 8044C08C  A8 A4 1B AE */	lha r5, 0x1bae(r4)
/* 8044C090  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044C094  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044C098  C8 66 00 00 */	lfd f3, 0(r6)
/* 8044C09C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044C0A0  C0 87 42 C4 */	lfs f4, lit_793@l(r7)  /* 0x806442C4@l */
/* 8044C0A4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8044C0A8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044C0AC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044C0B0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044C0B4  EC 60 18 28 */	fsubs f3, f0, f3
/* 8044C0B8  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044C0BC  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 8044C0C0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8044C0C4  EC 23 00 72 */	fmuls f1, f3, f1
/* 8044C0C8  EC 22 08 2A */	fadds f1, f2, f1
/* 8044C0CC  EF C0 08 2A */	fadds f30, f0, f1
/* 8044C0D0  4B F6 EA 21 */	bl sin_s
/* 8044C0D4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044C0D8  3C 00 43 30 */	lis r0, 0x4330
/* 8044C0DC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044C0E0  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 8044C0E4  80 84 00 00 */	lwz r4, 0(r4)
/* 8044C0E8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044C0EC  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 8044C0F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044C0F4  A8 A4 1B AC */	lha r5, 0x1bac(r4)
/* 8044C0F8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044C0FC  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044C100  C8 66 00 00 */	lfd f3, 0(r6)
/* 8044C104  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044C108  C0 87 42 C4 */	lfs f4, lit_793@l(r7)  /* 0x806442C4@l */
/* 8044C10C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8044C110  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044C114  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044C118  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044C11C  EC 60 18 28 */	fsubs f3, f0, f3
/* 8044C120  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044C124  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 8044C128  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8044C12C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8044C130  EC 22 08 2A */	fadds f1, f2, f1
/* 8044C134  EF E0 08 2A */	fadds f31, f0, f1
/* 8044C138  4B F6 E9 65 */	bl cos_s
/* 8044C13C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044C140  3C 00 43 30 */	lis r0, 0x4330
/* 8044C144  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044C148  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 8044C14C  80 84 00 00 */	lwz r4, 0(r4)
/* 8044C150  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044C154  38 E3 42 8C */	addi r7, r3, lit_570@l /* 0x8064428C@l */
/* 8044C158  39 05 42 C4 */	addi r8, r5, lit_793@l /* 0x806442C4@l */
/* 8044C15C  A8 84 1B AA */	lha r4, 0x1baa(r4)
/* 8044C160  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044C164  38 A3 42 AC */	addi r5, r3, lit_666@l /* 0x806442AC@l */
/* 8044C168  90 01 00 30 */	stw r0, 0x30(r1)
/* 8044C16C  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 8044C170  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044C174  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8044C178  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044C17C  C8 A7 00 00 */	lfd f5, 0(r7)
/* 8044C180  FC 40 F8 90 */	fmr f2, f31
/* 8044C184  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8044C188  FC 60 F0 90 */	fmr f3, f30
/* 8044C18C  C0 C8 00 00 */	lfs f6, 0(r8)
/* 8044C190  38 60 00 01 */	li r3, 1
/* 8044C194  EC A0 28 28 */	fsubs f5, f0, f5
/* 8044C198  C0 85 00 00 */	lfs f4, 0(r5)
/* 8044C19C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044C1A0  EC A6 01 72 */	fmuls f5, f6, f5
/* 8044C1A4  EC 25 00 72 */	fmuls f1, f5, f1
/* 8044C1A8  EC 24 08 2A */	fadds f1, f4, f1
/* 8044C1AC  EC 20 08 2A */	fadds f1, f0, f1
/* 8044C1B0  4B FC 02 3D */	bl Matrix_scale
lbl_8044C1B4:
/* 8044C1B4  38 60 00 01 */	li r3, 1
/* 8044C1B8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8044C1BC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8044C1C0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8044C1C4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8044C1C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8044C1CC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8044C1D0  7C 08 03 A6 */	mtlr r0
/* 8044C1D4  38 21 00 60 */	addi r1, r1, 0x60
/* 8044C1D8  4E 80 00 20 */	blr 
