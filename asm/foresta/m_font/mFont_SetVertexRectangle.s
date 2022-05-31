lbl_803AFB74:
/* 803AFB74  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 803AFB78  7C 08 02 A6 */	mflr r0
/* 803AFB7C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 803AFB80  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 803AFB84  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 803AFB88  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 803AFB8C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 803AFB90  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 803AFB94  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 803AFB98  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 803AFB9C  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 803AFBA0  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 803AFBA4  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 803AFBA8  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 803AFBAC  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 803AFBB0  39 61 00 90 */	addi r11, r1, 0x90
/* 803AFBB4  4B CE B2 FD */	bl func_8009AEB0
/* 803AFBB8  3D 40 43 30 */	lis r10, 0x4330
/* 803AFBBC  6C 87 80 00 */	xoris r7, r4, 0x8000
/* 803AFBC0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 803AFBC4  3D 00 80 64 */	lis r8, lit_635@ha /* 0x806420AC@ha */
/* 803AFBC8  C8 A8 20 AC */	lfd f5, lit_635@l(r8)  /* 0x806420AC@l */
/* 803AFBCC  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 803AFBD0  91 41 00 08 */	stw r10, 8(r1)
/* 803AFBD4  3D 00 80 64 */	lis r8, lit_628@ha /* 0x80642090@ha */
/* 803AFBD8  C0 C8 20 90 */	lfs f6, lit_628@l(r8)  /* 0x80642090@l */
/* 803AFBDC  3C E0 80 64 */	lis r7, lit_627@ha /* 0x8064208C@ha */
/* 803AFBE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803AFBE4  39 27 20 8C */	addi r9, r7, lit_627@l /* 0x8064208C@l */
/* 803AFBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AFBEC  ED 46 10 28 */	fsubs f10, f6, f2
/* 803AFBF0  EC 00 28 28 */	fsubs f0, f0, f5
/* 803AFBF4  C0 E9 00 00 */	lfs f7, 0(r9)
/* 803AFBF8  91 41 00 10 */	stw r10, 0x10(r1)
/* 803AFBFC  3C E0 80 64 */	lis r7, lit_629@ha /* 0x80642094@ha */
/* 803AFC00  ED 21 38 28 */	fsubs f9, f1, f7
/* 803AFC04  ED 00 00 F2 */	fmuls f8, f0, f3
/* 803AFC08  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803AFC0C  FD 80 50 90 */	fmr f12, f10
/* 803AFC10  C3 A7 20 94 */	lfs f29, lit_629@l(r7)  /* 0x80642094@l */
/* 803AFC14  FD 60 48 90 */	fmr f11, f9
/* 803AFC18  EC 40 28 28 */	fsubs f2, f0, f5
/* 803AFC1C  FC 00 E8 90 */	fmr f0, f29
/* 803AFC20  7C 7C 1B 78 */	mr r28, r3
/* 803AFC24  FF 80 E8 90 */	fmr f28, f29
/* 803AFC28  7C DD 33 78 */	mr r29, r6
/* 803AFC2C  EC A2 01 32 */	fmuls f5, f2, f4
/* 803AFC30  FC 40 E8 90 */	fmr f2, f29
/* 803AFC34  FC 09 38 40 */	fcmpo cr0, f9, f7
/* 803AFC38  EF E1 40 2A */	fadds f31, f1, f8
/* 803AFC3C  ED A9 40 2A */	fadds f13, f9, f8
/* 803AFC40  EF CA 28 28 */	fsubs f30, f10, f5
/* 803AFC44  41 81 00 2C */	bgt lbl_803AFC70
/* 803AFC48  3C 60 80 64 */	lis r3, lit_630@ha /* 0x80642098@ha */
/* 803AFC4C  C0 A3 20 98 */	lfs f5, lit_630@l(r3)  /* 0x80642098@l */
/* 803AFC50  FC 0A 28 40 */	fcmpo cr0, f10, f5
/* 803AFC54  41 80 00 1C */	blt lbl_803AFC70
/* 803AFC58  3C 60 80 64 */	lis r3, lit_631@ha /* 0x8064209C@ha */
/* 803AFC5C  C0 23 20 9C */	lfs f1, lit_631@l(r3)  /* 0x8064209C@l */
/* 803AFC60  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 803AFC64  41 80 00 0C */	blt lbl_803AFC70
/* 803AFC68  FC 1E 30 40 */	fcmpo cr0, f30, f6
/* 803AFC6C  40 81 00 0C */	ble lbl_803AFC78
lbl_803AFC70:
/* 803AFC70  FC 20 F8 90 */	fmr f1, f31
/* 803AFC74  48 00 02 70 */	b lbl_803AFEE4
lbl_803AFC78:
/* 803AFC78  ED 09 08 28 */	fsubs f8, f9, f1
/* 803AFC7C  EC CA 30 28 */	fsubs f6, f10, f6
/* 803AFC80  EC ED 38 28 */	fsubs f7, f13, f7
/* 803AFC84  FC 08 E8 40 */	fcmpo cr0, f8, f29
/* 803AFC88  EC BE 28 28 */	fsubs f5, f30, f5
/* 803AFC8C  40 80 00 0C */	bge lbl_803AFC98
/* 803AFC90  FD 60 08 90 */	fmr f11, f1
/* 803AFC94  EF BD 40 28 */	fsubs f29, f29, f8
lbl_803AFC98:
/* 803AFC98  3C 60 80 64 */	lis r3, lit_629@ha /* 0x80642094@ha */
/* 803AFC9C  C0 23 20 94 */	lfs f1, lit_629@l(r3)  /* 0x80642094@l */
/* 803AFCA0  FC 06 08 40 */	fcmpo cr0, f6, f1
/* 803AFCA4  40 81 00 10 */	ble lbl_803AFCB4
/* 803AFCA8  3C 60 80 64 */	lis r3, lit_628@ha /* 0x80642090@ha */
/* 803AFCAC  EF 9C 30 2A */	fadds f28, f28, f6
/* 803AFCB0  C1 83 20 90 */	lfs f12, lit_628@l(r3)  /* 0x80642090@l */
lbl_803AFCB4:
/* 803AFCB4  3C 60 80 64 */	lis r3, lit_629@ha /* 0x80642094@ha */
/* 803AFCB8  C0 23 20 94 */	lfs f1, lit_629@l(r3)  /* 0x80642094@l */
/* 803AFCBC  FC 07 08 40 */	fcmpo cr0, f7, f1
/* 803AFCC0  40 81 00 10 */	ble lbl_803AFCD0
/* 803AFCC4  3C 60 80 64 */	lis r3, lit_627@ha /* 0x8064208C@ha */
/* 803AFCC8  EC 00 38 2A */	fadds f0, f0, f7
/* 803AFCCC  C1 A3 20 8C */	lfs f13, lit_627@l(r3)  /* 0x8064208C@l */
lbl_803AFCD0:
/* 803AFCD0  3C 60 80 64 */	lis r3, lit_629@ha /* 0x80642094@ha */
/* 803AFCD4  C0 23 20 94 */	lfs f1, lit_629@l(r3)  /* 0x80642094@l */
/* 803AFCD8  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 803AFCDC  40 80 00 10 */	bge lbl_803AFCEC
/* 803AFCE0  3C 60 80 64 */	lis r3, lit_630@ha /* 0x80642098@ha */
/* 803AFCE4  EC 42 28 28 */	fsubs f2, f2, f5
/* 803AFCE8  C3 C3 20 98 */	lfs f30, lit_630@l(r3)  /* 0x80642098@l */
lbl_803AFCEC:
/* 803AFCEC  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806420A0@ha */
/* 803AFCF0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 803AFCF4  C0 23 20 A0 */	lfs f1, lit_632@l(r3)  /* 0x806420A0@l */
/* 803AFCF8  3C C0 43 30 */	lis r6, 0x4330
/* 803AFCFC  6C 87 80 00 */	xoris r7, r4, 0x8000
/* 803AFD00  3C 60 80 64 */	lis r3, lit_635@ha /* 0x806420AC@ha */
/* 803AFD04  EF 61 18 24 */	fdivs f27, f1, f3
/* 803AFD08  39 03 20 AC */	addi r8, r3, lit_635@l /* 0x806420AC@l */
/* 803AFD0C  80 9C 00 00 */	lwz r4, 0(r28)
/* 803AFD10  3C A0 80 64 */	lis r5, lit_633@ha /* 0x806420A4@ha */
/* 803AFD14  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 803AFD18  80 64 02 D4 */	lwz r3, 0x2d4(r4)
/* 803AFD1C  EF 41 20 24 */	fdivs f26, f1, f4
/* 803AFD20  C0 25 20 A4 */	lfs f1, lit_633@l(r5)  /* 0x806420A4@l */
/* 803AFD24  90 C1 00 18 */	stw r6, 0x18(r1)
/* 803AFD28  34 63 FF C0 */	addic. r3, r3, -64
/* 803AFD2C  C9 08 00 00 */	lfd f8, 0(r8)
/* 803AFD30  C8 E1 00 18 */	lfd f7, 0x18(r1)
/* 803AFD34  EC A1 02 F2 */	fmuls f5, f1, f11
/* 803AFD38  90 64 02 D4 */	stw r3, 0x2d4(r4)
/* 803AFD3C  EC 81 03 32 */	fmuls f4, f1, f12
/* 803AFD40  EC 61 03 72 */	fmuls f3, f1, f13
/* 803AFD44  80 BC 00 00 */	lwz r5, 0(r28)
/* 803AFD48  FC A0 28 1E */	fctiwz f5, f5
/* 803AFD4C  FC 80 20 1E */	fctiwz f4, f4
/* 803AFD50  80 85 02 D4 */	lwz r4, 0x2d4(r5)
/* 803AFD54  ED 5D 06 F2 */	fmuls f10, f29, f27
/* 803AFD58  D8 A1 00 38 */	stfd f5, 0x38(r1)
/* 803AFD5C  EC A0 06 F2 */	fmuls f5, f0, f27
/* 803AFD60  ED 3C 06 B2 */	fmuls f9, f28, f26
/* 803AFD64  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803AFD68  EC 21 07 B2 */	fmuls f1, f1, f30
/* 803AFD6C  FD 40 50 1E */	fctiwz f10, f10
/* 803AFD70  3B E4 FF E8 */	addi r31, r4, -24
/* 803AFD74  FD 20 48 1E */	fctiwz f9, f9
/* 803AFD78  FC 60 18 1E */	fctiwz f3, f3
/* 803AFD7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803AFD80  FC 20 08 1E */	fctiwz f1, f1
/* 803AFD84  90 C1 00 28 */	stw r6, 0x28(r1)
/* 803AFD88  EC E7 40 28 */	fsubs f7, f7, f8
/* 803AFD8C  EC 02 06 B2 */	fmuls f0, f2, f26
/* 803AFD90  C8 C1 00 28 */	lfd f6, 0x28(r1)
/* 803AFD94  EC 47 28 28 */	fsubs f2, f7, f5
/* 803AFD98  D9 41 00 10 */	stfd f10, 0x10(r1)
/* 803AFD9C  EC 86 40 28 */	fsubs f4, f6, f8
/* 803AFDA0  82 E1 00 3C */	lwz r23, 0x3c(r1)
/* 803AFDA4  D9 21 00 08 */	stfd f9, 8(r1)
/* 803AFDA8  FC 40 10 1E */	fctiwz f2, f2
/* 803AFDAC  EC 04 00 28 */	fsubs f0, f4, f0
/* 803AFDB0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803AFDB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803AFDB8  D8 61 00 48 */	stfd f3, 0x48(r1)
/* 803AFDBC  54 9B 30 32 */	slwi r27, r4, 6
/* 803AFDC0  FC 00 00 1E */	fctiwz f0, f0
/* 803AFDC4  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 803AFDC8  54 1A 30 32 */	slwi r26, r0, 6
/* 803AFDCC  82 C1 00 44 */	lwz r22, 0x44(r1)
/* 803AFDD0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803AFDD4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 803AFDD8  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 803AFDDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AFDE0  54 99 30 32 */	slwi r25, r4, 6
/* 803AFDE4  93 E5 02 D4 */	stw r31, 0x2d4(r5)
/* 803AFDE8  82 A1 00 4C */	lwz r21, 0x4c(r1)
/* 803AFDEC  54 18 30 32 */	slwi r24, r0, 6
/* 803AFDF0  82 81 00 54 */	lwz r20, 0x54(r1)
/* 803AFDF4  41 82 00 EC */	beq lbl_803AFEE0
/* 803AFDF8  28 1F 00 00 */	cmplwi r31, 0
/* 803AFDFC  41 82 00 E4 */	beq lbl_803AFEE0
/* 803AFE00  7E E4 BB 78 */	mr r4, r23
/* 803AFE04  7E C5 B3 78 */	mr r5, r22
/* 803AFE08  7F 66 DB 78 */	mr r6, r27
/* 803AFE0C  7F 47 D3 78 */	mr r7, r26
/* 803AFE10  3B C3 00 10 */	addi r30, r3, 0x10
/* 803AFE14  4B FF FD 2D */	bl mFont_SetVertex_dol
/* 803AFE18  7F C3 F3 78 */	mr r3, r30
/* 803AFE1C  7E A4 AB 78 */	mr r4, r21
/* 803AFE20  7E C5 B3 78 */	mr r5, r22
/* 803AFE24  7F 26 CB 78 */	mr r6, r25
/* 803AFE28  7F 47 D3 78 */	mr r7, r26
/* 803AFE2C  3B DE 00 10 */	addi r30, r30, 0x10
/* 803AFE30  4B FF FD 11 */	bl mFont_SetVertex_dol
/* 803AFE34  7F C3 F3 78 */	mr r3, r30
/* 803AFE38  7E A4 AB 78 */	mr r4, r21
/* 803AFE3C  7E 85 A3 78 */	mr r5, r20
/* 803AFE40  7F 26 CB 78 */	mr r6, r25
/* 803AFE44  7F 07 C3 78 */	mr r7, r24
/* 803AFE48  3B DE 00 10 */	addi r30, r30, 0x10
/* 803AFE4C  4B FF FC F5 */	bl mFont_SetVertex_dol
/* 803AFE50  7F C3 F3 78 */	mr r3, r30
/* 803AFE54  7E E4 BB 78 */	mr r4, r23
/* 803AFE58  7E 85 A3 78 */	mr r5, r20
/* 803AFE5C  7F 66 DB 78 */	mr r6, r27
/* 803AFE60  7F 07 C3 78 */	mr r7, r24
/* 803AFE64  4B FF FC DD */	bl mFont_SetVertex_dol
/* 803AFE68  2C 1D 00 01 */	cmpwi r29, 1
/* 803AFE6C  80 BC 00 00 */	lwz r5, 0(r28)
/* 803AFE70  40 82 00 20 */	bne lbl_803AFE90
/* 803AFE74  80 85 02 F0 */	lwz r4, 0x2f0(r5)
/* 803AFE78  3C 00 DE 00 */	lis r0, 0xde00
/* 803AFE7C  38 64 00 08 */	addi r3, r4, 8
/* 803AFE80  90 65 02 F0 */	stw r3, 0x2f0(r5)
/* 803AFE84  90 04 00 00 */	stw r0, 0(r4)
/* 803AFE88  93 E4 00 04 */	stw r31, 4(r4)
/* 803AFE8C  48 00 00 1C */	b lbl_803AFEA8
lbl_803AFE90:
/* 803AFE90  80 85 02 D0 */	lwz r4, 0x2d0(r5)
/* 803AFE94  3C 00 DE 00 */	lis r0, 0xde00
/* 803AFE98  38 64 00 08 */	addi r3, r4, 8
/* 803AFE9C  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 803AFEA0  90 04 00 00 */	stw r0, 0(r4)
/* 803AFEA4  93 E4 00 04 */	stw r31, 4(r4)
lbl_803AFEA8:
/* 803AFEA8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01004008@ha */
/* 803AFEAC  3C 60 43 00 */	lis r3, 0x4300 /* 0x43004400@ha */
/* 803AFEB0  38 84 40 08 */	addi r4, r4, 0x4008 /* 0x01004008@l */
/* 803AFEB4  38 1E FF D0 */	addi r0, r30, -48
/* 803AFEB8  90 9F 00 00 */	stw r4, 0(r31)
/* 803AFEBC  3C A0 0A 02 */	lis r5, 0xa02
/* 803AFEC0  38 83 44 00 */	addi r4, r3, 0x4400 /* 0x43004400@l */
/* 803AFEC4  3C 60 DF 00 */	lis r3, 0xdf00
/* 803AFEC8  90 1F 00 04 */	stw r0, 4(r31)
/* 803AFECC  38 00 00 00 */	li r0, 0
/* 803AFED0  90 BF 00 08 */	stw r5, 8(r31)
/* 803AFED4  90 9F 00 0C */	stw r4, 0xc(r31)
/* 803AFED8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 803AFEDC  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_803AFEE0:
/* 803AFEE0  FC 20 F8 90 */	fmr f1, f31
lbl_803AFEE4:
/* 803AFEE4  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 803AFEE8  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 803AFEEC  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 803AFEF0  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 803AFEF4  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 803AFEF8  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 803AFEFC  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 803AFF00  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 803AFF04  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 803AFF08  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 803AFF0C  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 803AFF10  39 61 00 90 */	addi r11, r1, 0x90
/* 803AFF14  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 803AFF18  4B CE AF E5 */	bl func_8009AEFC
/* 803AFF1C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 803AFF20  7C 08 03 A6 */	mtlr r0
/* 803AFF24  38 21 00 F0 */	addi r1, r1, 0xf0
/* 803AFF28  4E 80 00 20 */	blr 
