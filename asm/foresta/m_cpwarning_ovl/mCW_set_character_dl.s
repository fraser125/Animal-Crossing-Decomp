lbl_805CEF90:
/* 805CEF90  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805CEF94  7C 08 02 A6 */	mflr r0
/* 805CEF98  90 01 00 64 */	stw r0, 0x64(r1)
/* 805CEF9C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805CEFA0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805CEFA4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805CEFA8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805CEFAC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 805CEFB0  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 805CEFB4  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 805CEFB8  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 805CEFBC  39 61 00 20 */	addi r11, r1, 0x20
/* 805CEFC0  4B AC BF 15 */	bl func_8009AED4
/* 805CEFC4  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805CEFC8  3C A0 80 65 */	lis r5, lit_498@ha /* 0x8064B084@ha */
/* 805CEFCC  38 C5 B0 84 */	addi r6, r5, lit_498@l /* 0x8064B084@l */
/* 805CEFD0  3C 60 80 65 */	lis r3, lit_500@ha /* 0x8064B08C@ha */
/* 805CEFD4  83 C8 09 C4 */	lwz r30, 0x9c4(r8)
/* 805CEFD8  3C E0 80 65 */	lis r7, lit_497@ha /* 0x8064B080@ha */
/* 805CEFDC  C0 03 B0 8C */	lfs f0, lit_500@l(r3)  /* 0x8064B08C@l */
/* 805CEFE0  3C 60 80 6D */	lis r3, data_806CB918@ha /* 0x806CB918@ha */
/* 805CEFE4  C3 FE 00 08 */	lfs f31, 8(r30)
/* 805CEFE8  3B E3 B9 18 */	addi r31, r3, data_806CB918@l /* 0x806CB918@l */
/* 805CEFEC  C0 26 00 00 */	lfs f1, 0(r6)
/* 805CEFF0  3C A0 80 65 */	lis r5, lit_499@ha /* 0x8064B088@ha */
/* 805CEFF4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805CEFF8  C0 67 B0 80 */	lfs f3, lit_497@l(r7)  /* 0x8064B080@l */
/* 805CEFFC  EC 41 07 F2 */	fmuls f2, f1, f31
/* 805CF000  C0 25 B0 88 */	lfs f1, lit_499@l(r5)  /* 0x8064B088@l */
/* 805CF004  81 88 09 50 */	lwz r12, 0x950(r8)
/* 805CF008  7C 9D 23 78 */	mr r29, r4
/* 805CF00C  EF A3 10 28 */	fsubs f29, f3, f2
/* 805CF010  80 64 00 00 */	lwz r3, 0(r4)
/* 805CF014  EF 81 00 28 */	fsubs f28, f1, f0
/* 805CF018  7D 89 03 A6 */	mtctr r12
/* 805CF01C  4E 80 04 21 */	bctrl 
/* 805CF020  3C 80 80 65 */	lis r4, lit_501@ha /* 0x8064B090@ha */
/* 805CF024  3C 60 80 65 */	lis r3, lit_502@ha /* 0x8064B094@ha */
/* 805CF028  C0 24 B0 90 */	lfs f1, lit_501@l(r4)  /* 0x8064B090@l */
/* 805CF02C  38 00 00 01 */	li r0, 1
/* 805CF030  C0 03 B0 94 */	lfs f0, lit_502@l(r3)  /* 0x8064B094@l */
/* 805CF034  FC 60 F8 90 */	fmr f3, f31
/* 805CF038  EC 21 07 F2 */	fmuls f1, f1, f31
/* 805CF03C  90 01 00 08 */	stw r0, 8(r1)
/* 805CF040  38 00 00 00 */	li r0, 0
/* 805CF044  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805CF048  FC 80 F8 90 */	fmr f4, f31
/* 805CF04C  EF 9C 08 2A */	fadds f28, f28, f1
/* 805CF050  EC 3D 00 2A */	fadds f1, f29, f0
/* 805CF054  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CF058  7F A3 EB 78 */	mr r3, r29
/* 805CF05C  38 9F 00 00 */	addi r4, r31, 0
/* 805CF060  FC 40 E0 90 */	fmr f2, f28
/* 805CF064  38 A0 00 12 */	li r5, 0x12
/* 805CF068  38 C0 00 5F */	li r6, 0x5f
/* 805CF06C  38 E0 00 14 */	li r7, 0x14
/* 805CF070  39 00 00 14 */	li r8, 0x14
/* 805CF074  39 20 00 FF */	li r9, 0xff
/* 805CF078  39 40 00 00 */	li r10, 0
/* 805CF07C  4B DE 10 2D */	bl mFont_SetLineStrings
/* 805CF080  3C 80 80 65 */	lis r4, lit_503@ha /* 0x8064B098@ha */
/* 805CF084  3C 60 80 65 */	lis r3, lit_504@ha /* 0x8064B09C@ha */
/* 805CF088  C0 24 B0 98 */	lfs f1, lit_503@l(r4)  /* 0x8064B098@l */
/* 805CF08C  38 00 00 01 */	li r0, 1
/* 805CF090  C0 03 B0 9C */	lfs f0, lit_504@l(r3)  /* 0x8064B09C@l */
/* 805CF094  FC 60 F8 90 */	fmr f3, f31
/* 805CF098  EF C1 07 F2 */	fmuls f30, f1, f31
/* 805CF09C  90 01 00 08 */	stw r0, 8(r1)
/* 805CF0A0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805CF0A4  38 00 00 00 */	li r0, 0
/* 805CF0A8  FC 80 F8 90 */	fmr f4, f31
/* 805CF0AC  EF 9C F0 2A */	fadds f28, f28, f30
/* 805CF0B0  EC 3D 00 2A */	fadds f1, f29, f0
/* 805CF0B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CF0B8  7F A3 EB 78 */	mr r3, r29
/* 805CF0BC  38 9F 00 14 */	addi r4, r31, 0x14
/* 805CF0C0  FC 40 E0 90 */	fmr f2, f28
/* 805CF0C4  38 A0 00 1B */	li r5, 0x1b
/* 805CF0C8  38 C0 00 5F */	li r6, 0x5f
/* 805CF0CC  38 E0 00 14 */	li r7, 0x14
/* 805CF0D0  39 00 00 14 */	li r8, 0x14
/* 805CF0D4  39 20 00 FF */	li r9, 0xff
/* 805CF0D8  39 40 00 00 */	li r10, 0
/* 805CF0DC  4B DE 0F CD */	bl mFont_SetLineStrings
/* 805CF0E0  3C 60 80 65 */	lis r3, lit_505@ha /* 0x8064B0A0@ha */
/* 805CF0E4  EF 9C F0 2A */	fadds f28, f28, f30
/* 805CF0E8  C0 03 B0 A0 */	lfs f0, lit_505@l(r3)  /* 0x8064B0A0@l */
/* 805CF0EC  38 00 00 01 */	li r0, 1
/* 805CF0F0  88 9E 00 05 */	lbz r4, 5(r30)
/* 805CF0F4  FC 60 F8 90 */	fmr f3, f31
/* 805CF0F8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805CF0FC  90 01 00 08 */	stw r0, 8(r1)
/* 805CF100  1C 64 00 03 */	mulli r3, r4, 3
/* 805CF104  38 00 00 00 */	li r0, 0
/* 805CF108  FC 40 E0 90 */	fmr f2, f28
/* 805CF10C  38 9F 00 4C */	addi r4, r31, 0x4c
/* 805CF110  7C 84 1A 14 */	add r4, r4, r3
/* 805CF114  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CF118  FC 80 F8 90 */	fmr f4, f31
/* 805CF11C  7F A3 EB 78 */	mr r3, r29
/* 805CF120  EC 3D 00 2A */	fadds f1, f29, f0
/* 805CF124  88 C4 00 00 */	lbz r6, 0(r4)
/* 805CF128  88 E4 00 01 */	lbz r7, 1(r4)
/* 805CF12C  38 A0 00 03 */	li r5, 3
/* 805CF130  89 04 00 02 */	lbz r8, 2(r4)
/* 805CF134  38 9F 00 30 */	addi r4, r31, 0x30
/* 805CF138  39 20 00 FF */	li r9, 0xff
/* 805CF13C  39 40 00 00 */	li r10, 0
/* 805CF140  4B DE 0F 69 */	bl mFont_SetLineStrings
/* 805CF144  88 9E 00 05 */	lbz r4, 5(r30)
/* 805CF148  3C 60 80 65 */	lis r3, lit_506@ha /* 0x8064B0A4@ha */
/* 805CF14C  C0 03 B0 A4 */	lfs f0, lit_506@l(r3)  /* 0x8064B0A4@l */
/* 805CF150  38 00 00 01 */	li r0, 1
/* 805CF154  7C 84 00 34 */	cntlzw r4, r4
/* 805CF158  90 01 00 08 */	stw r0, 8(r1)
/* 805CF15C  54 83 D9 7E */	srwi r3, r4, 5
/* 805CF160  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805CF164  1C 63 00 03 */	mulli r3, r3, 3
/* 805CF168  38 00 00 00 */	li r0, 0
/* 805CF16C  38 9F 00 4C */	addi r4, r31, 0x4c
/* 805CF170  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CF174  FC 40 E0 90 */	fmr f2, f28
/* 805CF178  7C 84 1A 14 */	add r4, r4, r3
/* 805CF17C  FC 60 F8 90 */	fmr f3, f31
/* 805CF180  88 C4 00 00 */	lbz r6, 0(r4)
/* 805CF184  FC 80 F8 90 */	fmr f4, f31
/* 805CF188  88 E4 00 01 */	lbz r7, 1(r4)
/* 805CF18C  89 04 00 02 */	lbz r8, 2(r4)
/* 805CF190  EC 3D 00 2A */	fadds f1, f29, f0
/* 805CF194  7F A3 EB 78 */	mr r3, r29
/* 805CF198  38 9F 00 34 */	addi r4, r31, 0x34
/* 805CF19C  38 A0 00 02 */	li r5, 2
/* 805CF1A0  39 20 00 FF */	li r9, 0xff
/* 805CF1A4  39 40 00 00 */	li r10, 0
/* 805CF1A8  4B DE 0F 01 */	bl mFont_SetLineStrings
/* 805CF1AC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805CF1B0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805CF1B4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805CF1B8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805CF1BC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 805CF1C0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 805CF1C4  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 805CF1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CF1CC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 805CF1D0  4B AC BD 51 */	bl func_8009AF20
/* 805CF1D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805CF1D8  7C 08 03 A6 */	mtlr r0
/* 805CF1DC  38 21 00 60 */	addi r1, r1, 0x60
/* 805CF1E0  4E 80 00 20 */	blr 
