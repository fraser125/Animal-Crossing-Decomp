lbl_805ED9B0:
/* 805ED9B0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805ED9B4  7C 08 02 A6 */	mflr r0
/* 805ED9B8  90 01 00 94 */	stw r0, 0x94(r1)
/* 805ED9BC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805ED9C0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805ED9C4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805ED9C8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805ED9CC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805ED9D0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805ED9D4  39 61 00 60 */	addi r11, r1, 0x60
/* 805ED9D8  4B AA D4 E1 */	bl func_8009AEB8
/* 805ED9DC  82 C3 02 D0 */	lwz r22, 0x2d0(r3)
/* 805ED9E0  3D 40 43 30 */	lis r10, 0x4330
/* 805ED9E4  A0 E4 00 04 */	lhz r7, 4(r4)
/* 805ED9E8  3F A0 FD 00 */	lis r29, 0xFD00 /* 0xFCFFFFFF@ha */
/* 805ED9EC  A1 04 00 06 */	lhz r8, 6(r4)
/* 805ED9F0  38 16 00 08 */	addi r0, r22, 8
/* 805ED9F4  3F 00 80 65 */	lis r24, data_8064B784@ha /* 0x8064B784@ha */
/* 805ED9F8  3F 60 FF FE */	lis r27, 0xFFFE /* 0xFFFE793C@ha */
/* 805ED9FC  90 03 02 D0 */	stw r0, 0x2d0(r3)
/* 805EDA00  3C C0 E7 00 */	lis r6, 0xe700
/* 805EDA04  7C 7C 1B 78 */	mr r28, r3
/* 805EDA08  6D 09 80 00 */	xoris r9, r8, 0x8000
/* 805EDA0C  90 D6 00 00 */	stw r6, 0(r22)
/* 805EDA10  38 60 00 00 */	li r3, 0
/* 805EDA14  3D 80 80 65 */	lis r12, lit_458@ha /* 0x8064B78C@ha */
/* 805EDA18  3F 40 EF 38 */	lis r26, 0xEF38 /* 0xEF382C30@ha */
/* 805EDA1C  90 76 00 04 */	stw r3, 4(r22)
/* 805EDA20  6C EB 80 00 */	xoris r11, r7, 0x8000
/* 805EDA24  C8 6C B7 8C */	lfd f3, lit_458@l(r12)  /* 0x8064B78C@l */
/* 805EDA28  3F 20 00 22 */	lis r25, 0x0022 /* 0x00220405@ha */
/* 805EDA2C  82 DC 02 D0 */	lwz r22, 0x2d0(r28)
/* 805EDA30  3B DD FF FF */	addi r30, r29, 0xFFFF /* 0xFCFFFFFF@l */
/* 805EDA34  3C 00 D9 00 */	lis r0, 0xd900
/* 805EDA38  C0 98 B7 84 */	lfs f4, data_8064B784@l(r24)  /* 0x8064B784@l */
/* 805EDA3C  3B B6 00 08 */	addi r29, r22, 8
/* 805EDA40  3E E0 D7 00 */	lis r23, 0xd700
/* 805EDA44  93 BC 02 D0 */	stw r29, 0x2d0(r28)
/* 805EDA48  7C BD 2B 78 */	mr r29, r5
/* 805EDA4C  3B E0 FF FF */	li r31, -1
/* 805EDA50  3B 7B 79 3C */	addi r27, r27, 0x793C /* 0xFFFE793C@l */
/* 805EDA54  90 16 00 00 */	stw r0, 0(r22)
/* 805EDA58  3B 5A 2C 30 */	addi r26, r26, 0x2C30 /* 0xEF382C30@l */
/* 805EDA5C  FF C0 08 90 */	fmr f30, f1
/* 805EDA60  3B 39 04 05 */	addi r25, r25, 0x0405 /* 0x00220405@l */
/* 805EDA64  90 76 00 04 */	stw r3, 4(r22)
/* 805EDA68  3D 80 ED 00 */	lis r12, 0xed00
/* 805EDA6C  FF E0 10 90 */	fmr f31, f2
/* 805EDA70  83 1C 02 D0 */	lwz r24, 0x2d0(r28)
/* 805EDA74  91 21 00 2C */	stw r9, 0x2c(r1)
/* 805EDA78  38 B8 00 08 */	addi r5, r24, 8
/* 805EDA7C  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805EDA80  92 F8 00 00 */	stw r23, 0(r24)
/* 805EDA84  93 F8 00 04 */	stw r31, 4(r24)
/* 805EDA88  81 3C 02 D0 */	lwz r9, 0x2d0(r28)
/* 805EDA8C  91 41 00 28 */	stw r10, 0x28(r1)
/* 805EDA90  38 A9 00 08 */	addi r5, r9, 8
/* 805EDA94  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805EDA98  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805EDA9C  93 C9 00 00 */	stw r30, 0(r9)
/* 805EDAA0  EC 00 18 28 */	fsubs f0, f0, f3
/* 805EDAA4  93 69 00 04 */	stw r27, 4(r9)
/* 805EDAA8  81 3C 02 D0 */	lwz r9, 0x2d0(r28)
/* 805EDAAC  EC 04 00 32 */	fmuls f0, f4, f0
/* 805EDAB0  91 61 00 1C */	stw r11, 0x1c(r1)
/* 805EDAB4  38 A9 00 08 */	addi r5, r9, 8
/* 805EDAB8  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805EDABC  FC 00 00 1E */	fctiwz f0, f0
/* 805EDAC0  93 49 00 00 */	stw r26, 0(r9)
/* 805EDAC4  90 69 00 04 */	stw r3, 4(r9)
/* 805EDAC8  91 41 00 18 */	stw r10, 0x18(r1)
/* 805EDACC  81 3C 02 D0 */	lwz r9, 0x2d0(r28)
/* 805EDAD0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 805EDAD4  38 A9 00 08 */	addi r5, r9, 8
/* 805EDAD8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805EDADC  EC 01 18 28 */	fsubs f0, f1, f3
/* 805EDAE0  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805EDAE4  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805EDAE8  90 09 00 00 */	stw r0, 0(r9)
/* 805EDAEC  EC 04 00 32 */	fmuls f0, f4, f0
/* 805EDAF0  54 A0 05 3E */	clrlwi r0, r5, 0x14
/* 805EDAF4  93 29 00 04 */	stw r25, 4(r9)
/* 805EDAF8  FC 00 00 1E */	fctiwz f0, f0
/* 805EDAFC  81 5C 02 D0 */	lwz r10, 0x2d0(r28)
/* 805EDB00  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805EDB04  39 2A 00 08 */	addi r9, r10, 8
/* 805EDB08  91 3C 02 D0 */	stw r9, 0x2d0(r28)
/* 805EDB0C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805EDB10  91 8A 00 00 */	stw r12, 0(r10)
/* 805EDB14  50 A0 62 26 */	rlwimi r0, r5, 0xc, 8, 0x13
/* 805EDB18  90 0A 00 04 */	stw r0, 4(r10)
/* 805EDB1C  83 3C 02 D0 */	lwz r25, 0x2d0(r28)
/* 805EDB20  3D 80 DB 04 */	lis r12, 0xDB04 /* 0xDB040004@ha */
/* 805EDB24  3D 60 00 01 */	lis r11, 0x0001 /* 0x0000FFFF@ha */
/* 805EDB28  3D 40 FF FD */	lis r10, 0xFFFD /* 0xFFFCFFFC@ha */
/* 805EDB2C  38 19 00 08 */	addi r0, r25, 8
/* 805EDB30  38 A8 FF FF */	addi r5, r8, -1
/* 805EDB34  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805EDB38  39 2C 00 04 */	addi r9, r12, 0x0004 /* 0xDB040004@l */
/* 805EDB3C  3B 6B FF FF */	addi r27, r11, 0xFFFF /* 0x0000FFFF@l */
/* 805EDB40  3A C7 FF FF */	addi r22, r7, -1
/* 805EDB44  91 39 00 00 */	stw r9, 0(r25)
/* 805EDB48  3B 00 00 01 */	li r24, 1
/* 805EDB4C  56 C0 05 3E */	clrlwi r0, r22, 0x14
/* 805EDB50  56 C9 72 22 */	rlwinm r9, r22, 0xe, 8, 0x11
/* 805EDB54  93 19 00 04 */	stw r24, 4(r25)
/* 805EDB58  3B 4C 00 0C */	addi r26, r12, 0xc
/* 805EDB5C  3B CC 00 14 */	addi r30, r12, 0x14
/* 805EDB60  39 8C 00 1C */	addi r12, r12, 0x1c
/* 805EDB64  83 3C 02 D0 */	lwz r25, 0x2d0(r28)
/* 805EDB68  64 00 FF 10 */	oris r0, r0, 0xff10
/* 805EDB6C  3D 60 F7 00 */	lis r11, 0xf700
/* 805EDB70  39 4A FF FC */	addi r10, r10, 0xFFFC /* 0xFFFCFFFC@l */
/* 805EDB74  3B F9 00 08 */	addi r31, r25, 8
/* 805EDB78  65 29 F6 00 */	oris r9, r9, 0xf600
/* 805EDB7C  93 FC 02 D0 */	stw r31, 0x2d0(r28)
/* 805EDB80  54 A5 15 3A */	rlwinm r5, r5, 2, 0x14, 0x1d
/* 805EDB84  7D 29 2B 78 */	or r9, r9, r5
/* 805EDB88  93 59 00 00 */	stw r26, 0(r25)
/* 805EDB8C  3C A0 FE 00 */	lis r5, 0xfe00
/* 805EDB90  93 19 00 04 */	stw r24, 4(r25)
/* 805EDB94  83 5C 02 D0 */	lwz r26, 0x2d0(r28)
/* 805EDB98  3B FA 00 08 */	addi r31, r26, 8
/* 805EDB9C  93 FC 02 D0 */	stw r31, 0x2d0(r28)
/* 805EDBA0  93 DA 00 00 */	stw r30, 0(r26)
/* 805EDBA4  93 7A 00 04 */	stw r27, 4(r26)
/* 805EDBA8  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 805EDBAC  3B DF 00 08 */	addi r30, r31, 8
/* 805EDBB0  93 DC 02 D0 */	stw r30, 0x2d0(r28)
/* 805EDBB4  91 9F 00 00 */	stw r12, 0(r31)
/* 805EDBB8  93 7F 00 04 */	stw r27, 4(r31)
/* 805EDBBC  83 DC 02 D0 */	lwz r30, 0x2d0(r28)
/* 805EDBC0  39 9E 00 08 */	addi r12, r30, 8
/* 805EDBC4  91 9C 02 D0 */	stw r12, 0x2d0(r28)
/* 805EDBC8  90 1E 00 00 */	stw r0, 0(r30)
/* 805EDBCC  81 84 00 20 */	lwz r12, 0x20(r4)
/* 805EDBD0  91 9E 00 04 */	stw r12, 4(r30)
/* 805EDBD4  83 DC 02 D0 */	lwz r30, 0x2d0(r28)
/* 805EDBD8  39 9E 00 08 */	addi r12, r30, 8
/* 805EDBDC  91 9C 02 D0 */	stw r12, 0x2d0(r28)
/* 805EDBE0  91 7E 00 00 */	stw r11, 0(r30)
/* 805EDBE4  91 5E 00 04 */	stw r10, 4(r30)
/* 805EDBE8  81 7C 02 D0 */	lwz r11, 0x2d0(r28)
/* 805EDBEC  39 4B 00 08 */	addi r10, r11, 8
/* 805EDBF0  91 5C 02 D0 */	stw r10, 0x2d0(r28)
/* 805EDBF4  91 2B 00 00 */	stw r9, 0(r11)
/* 805EDBF8  90 6B 00 04 */	stw r3, 4(r11)
/* 805EDBFC  81 5C 02 D0 */	lwz r10, 0x2d0(r28)
/* 805EDC00  39 2A 00 08 */	addi r9, r10, 8
/* 805EDC04  91 3C 02 D0 */	stw r9, 0x2d0(r28)
/* 805EDC08  90 CA 00 00 */	stw r6, 0(r10)
/* 805EDC0C  90 6A 00 04 */	stw r3, 4(r10)
/* 805EDC10  81 5C 02 D0 */	lwz r10, 0x2d0(r28)
/* 805EDC14  39 2A 00 08 */	addi r9, r10, 8
/* 805EDC18  91 3C 02 D0 */	stw r9, 0x2d0(r28)
/* 805EDC1C  90 0A 00 00 */	stw r0, 0(r10)
/* 805EDC20  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805EDC24  90 0A 00 04 */	stw r0, 4(r10)
/* 805EDC28  81 3C 02 D0 */	lwz r9, 0x2d0(r28)
/* 805EDC2C  38 09 00 08 */	addi r0, r9, 8
/* 805EDC30  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805EDC34  90 C9 00 00 */	stw r6, 0(r9)
/* 805EDC38  90 69 00 04 */	stw r3, 4(r9)
/* 805EDC3C  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805EDC40  38 06 00 08 */	addi r0, r6, 8
/* 805EDC44  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805EDC48  90 A6 00 00 */	stw r5, 0(r6)
/* 805EDC4C  80 04 00 20 */	lwz r0, 0x20(r4)
/* 805EDC50  90 06 00 04 */	stw r0, 4(r6)
/* 805EDC54  80 9C 02 D4 */	lwz r4, 0x2d4(r28)
/* 805EDC58  34 C4 FF F0 */	addic. r6, r4, -16
/* 805EDC5C  90 DC 02 D4 */	stw r6, 0x2d4(r28)
/* 805EDC60  80 9C 02 D4 */	lwz r4, 0x2d4(r28)
/* 805EDC64  38 04 FF C0 */	addi r0, r4, -64
/* 805EDC68  90 1C 02 D4 */	stw r0, 0x2d4(r28)
/* 805EDC6C  7C 1F 03 78 */	mr r31, r0
/* 805EDC70  80 9C 02 D4 */	lwz r4, 0x2d4(r28)
/* 805EDC74  38 04 FF C0 */	addi r0, r4, -64
/* 805EDC78  90 1C 02 D4 */	stw r0, 0x2d4(r28)
/* 805EDC7C  7C 1E 03 78 */	mr r30, r0
/* 805EDC80  40 82 00 14 */	bne lbl_805EDC94
/* 805EDC84  3C 60 80 6D */	lis r3, viewport_data@ha /* 0x806CE478@ha */
/* 805EDC88  38 03 E4 78 */	addi r0, r3, viewport_data@l /* 0x806CE478@l */
/* 805EDC8C  7C 06 03 78 */	mr r6, r0
/* 805EDC90  48 00 00 30 */	b lbl_805EDCC0
lbl_805EDC94:
/* 805EDC94  54 E5 08 3C */	slwi r5, r7, 1
/* 805EDC98  55 04 08 3C */	slwi r4, r8, 1
/* 805EDC9C  B0 A6 00 08 */	sth r5, 8(r6)
/* 805EDCA0  38 00 01 FF */	li r0, 0x1ff
/* 805EDCA4  B0 A6 00 00 */	sth r5, 0(r6)
/* 805EDCA8  B0 86 00 0A */	sth r4, 0xa(r6)
/* 805EDCAC  B0 86 00 02 */	sth r4, 2(r6)
/* 805EDCB0  B0 06 00 0C */	sth r0, 0xc(r6)
/* 805EDCB4  B0 06 00 04 */	sth r0, 4(r6)
/* 805EDCB8  B0 66 00 0E */	sth r3, 0xe(r6)
/* 805EDCBC  B0 66 00 06 */	sth r3, 6(r6)
lbl_805EDCC0:
/* 805EDCC0  80 9C 02 D0 */	lwz r4, 0x2d0(r28)
/* 805EDCC4  3C 60 DC 08 */	lis r3, 0xDC08 /* 0xDC080008@ha */
/* 805EDCC8  38 03 00 08 */	addi r0, r3, 0x0008 /* 0xDC080008@l */
/* 805EDCCC  2C 07 01 00 */	cmpwi r7, 0x100
/* 805EDCD0  38 64 00 08 */	addi r3, r4, 8
/* 805EDCD4  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805EDCD8  90 04 00 00 */	stw r0, 0(r4)
/* 805EDCDC  90 C4 00 04 */	stw r6, 4(r4)
/* 805EDCE0  41 82 00 70 */	beq lbl_805EDD50
/* 805EDCE4  3C 80 43 30 */	lis r4, 0x4330
/* 805EDCE8  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 805EDCEC  90 61 00 34 */	stw r3, 0x34(r1)
/* 805EDCF0  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 805EDCF4  3C A0 80 65 */	lis r5, lit_458@ha /* 0x8064B78C@ha */
/* 805EDCF8  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805EDCFC  90 81 00 30 */	stw r4, 0x30(r1)
/* 805EDD00  C8 C5 B7 8C */	lfd f6, lit_458@l(r5)  /* 0x8064B78C@l */
/* 805EDD04  3C A0 80 65 */	lis r5, lit_506@ha /* 0x8064B794@ha */
/* 805EDD08  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805EDD0C  38 C5 B7 94 */	addi r6, r5, lit_506@l /* 0x8064B794@l */
/* 805EDD10  90 81 00 28 */	stw r4, 0x28(r1)
/* 805EDD14  38 81 00 10 */	addi r4, r1, 0x10
/* 805EDD18  EC 40 30 28 */	fsubs f2, f0, f6
/* 805EDD1C  C0 63 B7 98 */	lfs f3, lit_507@l(r3)  /* 0x8064B798@l */
/* 805EDD20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805EDD24  3C 60 80 65 */	lis r3, lit_508@ha /* 0x8064B79C@ha */
/* 805EDD28  38 A3 B7 9C */	addi r5, r3, lit_508@l /* 0x8064B79C@l */
/* 805EDD2C  FC A0 18 90 */	fmr f5, f3
/* 805EDD30  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805EDD34  7F E3 FB 78 */	mr r3, r31
/* 805EDD38  C0 26 00 00 */	lfs f1, 0(r6)
/* 805EDD3C  EC 00 30 28 */	fsubs f0, f0, f6
/* 805EDD40  C0 85 00 00 */	lfs f4, 0(r5)
/* 805EDD44  EC 42 00 24 */	fdivs f2, f2, f0
/* 805EDD48  4B A7 06 CD */	bl func_8005E414
/* 805EDD4C  48 00 00 78 */	b lbl_805EDDC4
lbl_805EDD50:
/* 805EDD50  3D 20 43 30 */	lis r9, 0x4330
/* 805EDD54  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 805EDD58  90 61 00 34 */	stw r3, 0x34(r1)
/* 805EDD5C  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 805EDD60  3C 80 80 65 */	lis r4, lit_458@ha /* 0x8064B78C@ha */
/* 805EDD64  3C C0 80 65 */	lis r6, lit_509@ha /* 0x8064B7A0@ha */
/* 805EDD68  91 21 00 30 */	stw r9, 0x30(r1)
/* 805EDD6C  3C A0 80 65 */	lis r5, lit_510@ha /* 0x8064B7A4@ha */
/* 805EDD70  C8 84 B7 8C */	lfd f4, lit_458@l(r4)  /* 0x8064B78C@l */
/* 805EDD74  39 06 B7 A0 */	addi r8, r6, lit_509@l /* 0x8064B7A0@l */
/* 805EDD78  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805EDD7C  3C 80 80 65 */	lis r4, lit_511@ha /* 0x8064B7A8@ha */
/* 805EDD80  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805EDD84  38 E5 B7 A4 */	addi r7, r5, lit_510@l /* 0x8064B7A4@l */
/* 805EDD88  EC 40 20 28 */	fsubs f2, f0, f4
/* 805EDD8C  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805EDD90  91 21 00 28 */	stw r9, 0x28(r1)
/* 805EDD94  38 A3 B7 98 */	addi r5, r3, lit_507@l /* 0x8064B798@l */
/* 805EDD98  38 C4 B7 A8 */	addi r6, r4, lit_511@l /* 0x8064B7A8@l */
/* 805EDD9C  C0 28 00 00 */	lfs f1, 0(r8)
/* 805EDDA0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805EDDA4  7F E3 FB 78 */	mr r3, r31
/* 805EDDA8  C0 67 00 00 */	lfs f3, 0(r7)
/* 805EDDAC  38 81 00 10 */	addi r4, r1, 0x10
/* 805EDDB0  EC 00 20 28 */	fsubs f0, f0, f4
/* 805EDDB4  C0 86 00 00 */	lfs f4, 0(r6)
/* 805EDDB8  C0 A5 00 00 */	lfs f5, 0(r5)
/* 805EDDBC  EC 42 00 24 */	fdivs f2, f2, f0
/* 805EDDC0  4B A7 06 55 */	bl func_8005E414
lbl_805EDDC4:
/* 805EDDC4  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805EDDC8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380007@ha */
/* 805EDDCC  7F A0 07 34 */	extsh r0, r29
/* 805EDDD0  3C 80 DB 0E */	lis r4, 0xdb0e
/* 805EDDD4  38 A6 00 08 */	addi r5, r6, 8
/* 805EDDD8  38 63 00 07 */	addi r3, r3, 0x0007 /* 0xDA380007@l */
/* 805EDDDC  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805EDDE0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805EDDE4  90 86 00 00 */	stw r4, 0(r6)
/* 805EDDE8  A0 81 00 10 */	lhz r4, 0x10(r1)
/* 805EDDEC  90 86 00 04 */	stw r4, 4(r6)
/* 805EDDF0  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 805EDDF4  38 85 00 08 */	addi r4, r5, 8
/* 805EDDF8  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 805EDDFC  90 65 00 00 */	stw r3, 0(r5)
/* 805EDE00  93 E5 00 04 */	stw r31, 4(r5)
/* 805EDE04  40 82 00 0C */	bne lbl_805EDE10
/* 805EDE08  3B A0 41 00 */	li r29, 0x4100
/* 805EDE0C  48 00 00 10 */	b lbl_805EDE1C
lbl_805EDE10:
/* 805EDE10  2C 00 C0 00 */	cmpwi r0, -16384
/* 805EDE14  40 82 00 08 */	bne lbl_805EDE1C
/* 805EDE18  3B A0 C1 00 */	li r29, -16128
lbl_805EDE1C:
/* 805EDE1C  7F A3 EB 78 */	mr r3, r29
/* 805EDE20  4B DC CC D1 */	bl sin_s
/* 805EDE24  EC 1E 00 72 */	fmuls f0, f30, f1
/* 805EDE28  7F A3 EB 78 */	mr r3, r29
/* 805EDE2C  EF BF 00 2A */	fadds f29, f31, f0
/* 805EDE30  4B DC CC 6D */	bl cos_s
/* 805EDE34  7F A0 07 34 */	extsh r0, r29
/* 805EDE38  EC 7E 00 72 */	fmuls f3, f30, f1
/* 805EDE3C  2C 00 C0 00 */	cmpwi r0, -16384
/* 805EDE40  41 80 00 0C */	blt lbl_805EDE4C
/* 805EDE44  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805EDE48  41 80 00 38 */	blt lbl_805EDE80
lbl_805EDE4C:
/* 805EDE4C  3C 80 80 65 */	lis r4, lit_512@ha /* 0x8064B7AC@ha */
/* 805EDE50  3C 60 80 65 */	lis r3, lit_513@ha /* 0x8064B7B0@ha */
/* 805EDE54  C0 24 B7 AC */	lfs f1, lit_512@l(r4)  /* 0x8064B7AC@l */
/* 805EDE58  FC 40 E8 90 */	fmr f2, f29
/* 805EDE5C  C1 03 B7 B0 */	lfs f8, lit_513@l(r3)  /* 0x8064B7B0@l */
/* 805EDE60  FC A0 F8 90 */	fmr f5, f31
/* 805EDE64  FC 80 08 90 */	fmr f4, f1
/* 805EDE68  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EDE6C  FC C0 08 90 */	fmr f6, f1
/* 805EDE70  FC E0 08 90 */	fmr f7, f1
/* 805EDE74  7F C3 F3 78 */	mr r3, r30
/* 805EDE78  4B A6 F6 71 */	bl guLookAt
/* 805EDE7C  48 00 00 34 */	b lbl_805EDEB0
lbl_805EDE80:
/* 805EDE80  3C 80 80 65 */	lis r4, lit_512@ha /* 0x8064B7AC@ha */
/* 805EDE84  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805EDE88  C0 24 B7 AC */	lfs f1, lit_512@l(r4)  /* 0x8064B7AC@l */
/* 805EDE8C  FC 40 E8 90 */	fmr f2, f29
/* 805EDE90  C1 03 B7 98 */	lfs f8, lit_507@l(r3)  /* 0x8064B798@l */
/* 805EDE94  FC A0 F8 90 */	fmr f5, f31
/* 805EDE98  FC 80 08 90 */	fmr f4, f1
/* 805EDE9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EDEA0  FC C0 08 90 */	fmr f6, f1
/* 805EDEA4  FC E0 08 90 */	fmr f7, f1
/* 805EDEA8  7F C3 F3 78 */	mr r3, r30
/* 805EDEAC  4B A6 F6 3D */	bl guLookAt
lbl_805EDEB0:
/* 805EDEB0  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805EDEB4  3C 80 DC 08 */	lis r4, 0xDC08 /* 0xDC08060A@ha */
/* 805EDEB8  3C 60 80 6D */	lis r3, light_data_622@ha /* 0x806CE488@ha */
/* 805EDEBC  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380005@ha */
/* 805EDEC0  38 06 00 08 */	addi r0, r6, 8
/* 805EDEC4  3F A0 DB 02 */	lis r29, 0xdb02
/* 805EDEC8  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805EDECC  38 05 00 05 */	addi r0, r5, 0x0005 /* 0xDA380005@l */
/* 805EDED0  39 63 E4 88 */	addi r11, r3, light_data_622@l /* 0x806CE488@l */
/* 805EDED4  39 80 00 18 */	li r12, 0x18
/* 805EDED8  90 06 00 00 */	stw r0, 0(r6)
/* 805EDEDC  39 44 06 0A */	addi r10, r4, 0x060A /* 0xDC08060A@l */
/* 805EDEE0  38 04 09 0A */	addi r0, r4, 0x90a
/* 805EDEE4  38 6B 00 08 */	addi r3, r11, 8
/* 805EDEE8  93 C6 00 04 */	stw r30, 4(r6)
/* 805EDEEC  38 80 00 FF */	li r4, 0xff
/* 805EDEF0  38 A0 00 FF */	li r5, 0xff
/* 805EDEF4  38 C0 00 FF */	li r6, 0xff
/* 805EDEF8  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 805EDEFC  38 E0 00 FF */	li r7, 0xff
/* 805EDF00  39 00 03 E8 */	li r8, 0x3e8
/* 805EDF04  39 20 03 E8 */	li r9, 0x3e8
/* 805EDF08  3B DF 00 08 */	addi r30, r31, 8
/* 805EDF0C  93 DC 02 D0 */	stw r30, 0x2d0(r28)
/* 805EDF10  93 BF 00 00 */	stw r29, 0(r31)
/* 805EDF14  91 9F 00 04 */	stw r12, 4(r31)
/* 805EDF18  83 BC 02 D0 */	lwz r29, 0x2d0(r28)
/* 805EDF1C  39 9D 00 08 */	addi r12, r29, 8
/* 805EDF20  91 9C 02 D0 */	stw r12, 0x2d0(r28)
/* 805EDF24  91 5D 00 00 */	stw r10, 0(r29)
/* 805EDF28  90 7D 00 04 */	stw r3, 4(r29)
/* 805EDF2C  81 5C 02 D0 */	lwz r10, 0x2d0(r28)
/* 805EDF30  38 6A 00 08 */	addi r3, r10, 8
/* 805EDF34  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805EDF38  90 0A 00 00 */	stw r0, 0(r10)
/* 805EDF3C  91 6A 00 04 */	stw r11, 4(r10)
/* 805EDF40  80 7C 02 D0 */	lwz r3, 0x2d0(r28)
/* 805EDF44  38 03 00 08 */	addi r0, r3, 8
/* 805EDF48  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805EDF4C  4B DF 71 15 */	bl gfx_set_fog_nosync
/* 805EDF50  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805EDF54  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805EDF58  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805EDF5C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805EDF60  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805EDF64  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805EDF68  39 61 00 60 */	addi r11, r1, 0x60
/* 805EDF6C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805EDF70  4B AA CF 95 */	bl func_8009AF04
/* 805EDF74  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805EDF78  7C 08 03 A6 */	mtlr r0
/* 805EDF7C  38 21 00 90 */	addi r1, r1, 0x90
/* 805EDF80  4E 80 00 20 */	blr 
