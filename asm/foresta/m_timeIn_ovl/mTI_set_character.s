lbl_805FFD48:
/* 805FFD48  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805FFD4C  7C 08 02 A6 */	mflr r0
/* 805FFD50  90 01 00 74 */	stw r0, 0x74(r1)
/* 805FFD54  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805FFD58  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805FFD5C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805FFD60  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805FFD64  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805FFD68  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805FFD6C  39 61 00 40 */	addi r11, r1, 0x40
/* 805FFD70  4B A9 B1 55 */	bl func_8009AEC4
/* 805FFD74  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805FFD78  3C A0 80 65 */	lis r5, lit_675@ha /* 0x8064B958@ha */
/* 805FFD7C  3C 60 80 65 */	lis r3, lit_676@ha /* 0x8064B95C@ha */
/* 805FFD80  C0 05 B9 58 */	lfs f0, lit_675@l(r5)  /* 0x8064B958@l */
/* 805FFD84  FF C0 10 90 */	fmr f30, f2
/* 805FFD88  83 67 09 A0 */	lwz r27, 0x9a0(r7)
/* 805FFD8C  C0 63 B9 5C */	lfs f3, lit_676@l(r3)  /* 0x8064B95C@l */
/* 805FFD90  38 00 00 01 */	li r0, 1
/* 805FFD94  90 01 00 08 */	stw r0, 8(r1)
/* 805FFD98  3C C0 80 65 */	lis r6, lit_674@ha /* 0x8064B954@ha */
/* 805FFD9C  FF A0 08 90 */	fmr f29, f1
/* 805FFDA0  C0 26 B9 54 */	lfs f1, lit_674@l(r6)  /* 0x8064B954@l */
/* 805FFDA4  3C 60 80 6D */	lis r3, data_806D1220@ha /* 0x806D1220@ha */
/* 805FFDA8  38 00 00 00 */	li r0, 0
/* 805FFDAC  3B E3 12 20 */	addi r31, r3, data_806D1220@l /* 0x806D1220@l */
/* 805FFDB0  7C 9E 23 78 */	mr r30, r4
/* 805FFDB4  FC 80 18 90 */	fmr f4, f3
/* 805FFDB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FFDBC  EC 21 E8 2A */	fadds f1, f1, f29
/* 805FFDC0  7F C3 F3 78 */	mr r3, r30
/* 805FFDC4  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805FFDC8  3B 5F 00 9C */	addi r26, r31, 0x9c
/* 805FFDCC  38 9F 00 84 */	addi r4, r31, 0x84
/* 805FFDD0  38 A0 00 11 */	li r5, 0x11
/* 805FFDD4  38 C0 00 FF */	li r6, 0xff
/* 805FFDD8  38 E0 00 FF */	li r7, 0xff
/* 805FFDDC  39 00 00 FF */	li r8, 0xff
/* 805FFDE0  39 20 00 FF */	li r9, 0xff
/* 805FFDE4  39 40 00 00 */	li r10, 0
/* 805FFDE8  4B DB 02 C1 */	bl mFont_SetLineStrings
/* 805FFDEC  FF E0 F0 50 */	fneg f31, f30
/* 805FFDF0  3B 20 00 00 */	li r25, 0
/* 805FFDF4  3B A0 00 00 */	li r29, 0
lbl_805FFDF8:
/* 805FFDF8  2C 19 00 02 */	cmpwi r25, 2
/* 805FFDFC  41 82 00 8C */	beq lbl_805FFE88
/* 805FFE00  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 805FFE04  3B 9F 00 0C */	addi r28, r31, 0xc
/* 805FFE08  7C 19 00 00 */	cmpw r25, r0
/* 805FFE0C  40 82 00 08 */	bne lbl_805FFE14
/* 805FFE10  3B 9F 00 00 */	addi r28, r31, 0
lbl_805FFE14:
/* 805FFE14  7C BB EA 2E */	lhzx r5, r27, r29
/* 805FFE18  38 61 00 10 */	addi r3, r1, 0x10
/* 805FFE1C  38 80 00 02 */	li r4, 2
/* 805FFE20  38 C0 00 02 */	li r6, 2
/* 805FFE24  38 E0 00 00 */	li r7, 0
/* 805FFE28  39 00 00 01 */	li r8, 1
/* 805FFE2C  39 20 00 01 */	li r9, 1
/* 805FFE30  4B DA F6 49 */	bl mFont_UnintToString
/* 805FFE34  38 00 00 01 */	li r0, 1
/* 805FFE38  3C 60 80 65 */	lis r3, lit_598@ha /* 0x8064B91C@ha */
/* 805FFE3C  90 01 00 08 */	stw r0, 8(r1)
/* 805FFE40  38 00 00 00 */	li r0, 0
/* 805FFE44  38 A3 B9 1C */	addi r5, r3, lit_598@l /* 0x8064B91C@l */
/* 805FFE48  7F C3 F3 78 */	mr r3, r30
/* 805FFE4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FFE50  38 81 00 10 */	addi r4, r1, 0x10
/* 805FFE54  C0 65 00 00 */	lfs f3, 0(r5)
/* 805FFE58  38 A0 00 02 */	li r5, 2
/* 805FFE5C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 805FFE60  39 20 00 FF */	li r9, 0xff
/* 805FFE64  C0 1A 00 04 */	lfs f0, 4(r26)
/* 805FFE68  FC 80 18 90 */	fmr f4, f3
/* 805FFE6C  EC 3D 08 2A */	fadds f1, f29, f1
/* 805FFE70  80 DC 00 00 */	lwz r6, 0(r28)
/* 805FFE74  EC 5F 00 2A */	fadds f2, f31, f0
/* 805FFE78  80 FC 00 04 */	lwz r7, 4(r28)
/* 805FFE7C  81 1C 00 08 */	lwz r8, 8(r28)
/* 805FFE80  39 40 00 00 */	li r10, 0
/* 805FFE84  4B DB 02 25 */	bl mFont_SetLineStrings
lbl_805FFE88:
/* 805FFE88  3B 39 00 01 */	addi r25, r25, 1
/* 805FFE8C  3B BD 00 02 */	addi r29, r29, 2
/* 805FFE90  2C 19 00 05 */	cmpwi r25, 5
/* 805FFE94  3B 5A 00 08 */	addi r26, r26, 8
/* 805FFE98  41 80 FF 60 */	blt lbl_805FFDF8
/* 805FFE9C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 805FFEA0  39 1F 00 0C */	addi r8, r31, 0xc
/* 805FFEA4  2C 00 00 05 */	cmpwi r0, 5
/* 805FFEA8  40 82 00 08 */	bne lbl_805FFEB0
/* 805FFEAC  39 1F 00 00 */	addi r8, r31, 0
lbl_805FFEB0:
/* 805FFEB0  38 00 00 01 */	li r0, 1
/* 805FFEB4  3C A0 80 65 */	lis r5, lit_677@ha /* 0x8064B960@ha */
/* 805FFEB8  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064B964@ha */
/* 805FFEBC  3C 60 80 65 */	lis r3, lit_598@ha /* 0x8064B91C@ha */
/* 805FFEC0  38 C5 B9 60 */	addi r6, r5, lit_677@l /* 0x8064B960@l */
/* 805FFEC4  90 01 00 08 */	stw r0, 8(r1)
/* 805FFEC8  38 A4 B9 64 */	addi r5, r4, lit_678@l /* 0x8064B964@l */
/* 805FFECC  38 83 B9 1C */	addi r4, r3, lit_598@l /* 0x8064B91C@l */
/* 805FFED0  C0 26 00 00 */	lfs f1, 0(r6)
/* 805FFED4  38 00 00 00 */	li r0, 0
/* 805FFED8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FFEDC  7F C3 F3 78 */	mr r3, r30
/* 805FFEE0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805FFEE4  EC 21 E8 2A */	fadds f1, f1, f29
/* 805FFEE8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805FFEEC  38 9F 00 98 */	addi r4, r31, 0x98
/* 805FFEF0  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805FFEF4  80 C8 00 00 */	lwz r6, 0(r8)
/* 805FFEF8  FC 80 18 90 */	fmr f4, f3
/* 805FFEFC  80 E8 00 04 */	lwz r7, 4(r8)
/* 805FFF00  38 A0 00 02 */	li r5, 2
/* 805FFF04  81 08 00 08 */	lwz r8, 8(r8)
/* 805FFF08  39 20 00 FF */	li r9, 0xff
/* 805FFF0C  39 40 00 00 */	li r10, 0
/* 805FFF10  4B DB 01 99 */	bl mFont_SetLineStrings
/* 805FFF14  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805FFF18  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805FFF1C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805FFF20  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805FFF24  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805FFF28  39 61 00 40 */	addi r11, r1, 0x40
/* 805FFF2C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805FFF30  4B A9 AF E1 */	bl func_8009AF10
/* 805FFF34  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805FFF38  7C 08 03 A6 */	mtlr r0
/* 805FFF3C  38 21 00 70 */	addi r1, r1, 0x70
/* 805FFF40  4E 80 00 20 */	blr 
