lbl_805FFB50:
/* 805FFB50  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805FFB54  7C 08 02 A6 */	mflr r0
/* 805FFB58  90 01 00 64 */	stw r0, 0x64(r1)
/* 805FFB5C  39 61 00 60 */	addi r11, r1, 0x60
/* 805FFB60  4B A9 B3 5D */	bl func_8009AEBC
/* 805FFB64  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FFB68  3C 00 43 30 */	lis r0, 0x4330
/* 805FFB6C  3C 60 80 65 */	lis r3, lit_650@ha /* 0x8064B94C@ha */
/* 805FFB70  3D 60 80 65 */	lis r11, lit_638@ha /* 0x8064B924@ha */
/* 805FFB74  81 06 09 A0 */	lwz r8, 0x9a0(r6)
/* 805FFB78  38 E3 B9 4C */	addi r7, r3, lit_650@l /* 0x8064B94C@l */
/* 805FFB7C  3C A0 80 65 */	lis r5, lit_647@ha /* 0x8064B944@ha */
/* 805FFB80  39 40 00 3C */	li r10, 0x3c
/* 805FFB84  A1 88 00 10 */	lhz r12, 0x10(r8)
/* 805FFB88  38 C5 B9 44 */	addi r6, r5, lit_647@l /* 0x8064B944@l */
/* 805FFB8C  3C A0 80 65 */	lis r5, lit_639@ha /* 0x8064B928@ha */
/* 805FFB90  3C 60 80 65 */	lis r3, lit_640@ha /* 0x8064B92C@ha */
/* 805FFB94  39 25 B9 28 */	addi r9, r5, lit_639@l /* 0x8064B928@l */
/* 805FFB98  C8 A6 00 00 */	lfd f5, 0(r6)
/* 805FFB9C  7C AC 53 D6 */	divw r5, r12, r10
/* 805FFBA0  39 03 B9 2C */	addi r8, r3, lit_640@l /* 0x8064B92C@l */
/* 805FFBA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805FFBA8  3C 60 80 65 */	lis r3, lit_642@ha /* 0x8064B934@ha */
/* 805FFBAC  C8 67 00 00 */	lfd f3, 0(r7)
/* 805FFBB0  7C 9F 23 78 */	mr r31, r4
/* 805FFBB4  7D 45 51 D6 */	mullw r10, r5, r10
/* 805FFBB8  3C A0 80 65 */	lis r5, lit_641@ha /* 0x8064B930@ha */
/* 805FFBBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 805FFBC0  38 C5 B9 30 */	addi r6, r5, lit_641@l /* 0x8064B930@l */
/* 805FFBC4  C1 0B B9 24 */	lfs f8, lit_638@l(r11)  /* 0x8064B924@l */
/* 805FFBC8  91 81 00 24 */	stw r12, 0x24(r1)
/* 805FFBCC  7C AA 60 50 */	subf r5, r10, r12
/* 805FFBD0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805FFBD4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 805FFBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FFBDC  EC C0 18 28 */	fsubs f6, f0, f3
/* 805FFBE0  C0 68 00 00 */	lfs f3, 0(r8)
/* 805FFBE4  38 A3 B9 34 */	addi r5, r3, lit_642@l /* 0x8064B934@l */
/* 805FFBE8  C8 81 00 10 */	lfd f4, 0x10(r1)
/* 805FFBEC  3C 60 80 65 */	lis r3, data_8064B914@ha /* 0x8064B914@ha */
/* 805FFBF0  C0 09 00 00 */	lfs f0, 0(r9)
/* 805FFBF4  EC A4 28 28 */	fsubs f5, f4, f5
/* 805FFBF8  C0 86 00 00 */	lfs f4, 0(r6)
/* 805FFBFC  EC C6 18 24 */	fdivs f6, f6, f3
/* 805FFC00  38 E3 B9 14 */	addi r7, r3, data_8064B914@l /* 0x8064B914@l */
/* 805FFC04  38 00 00 00 */	li r0, 0
/* 805FFC08  3C 60 80 65 */	lis r3, lit_597@ha /* 0x8064B918@ha */
/* 805FFC0C  C0 63 B9 18 */	lfs f3, lit_597@l(r3)  /* 0x8064B918@l */
/* 805FFC10  38 60 00 00 */	li r3, 0
/* 805FFC14  EC E5 00 24 */	fdivs f7, f5, f0
/* 805FFC18  C0 05 00 00 */	lfs f0, 0(r5)
/* 805FFC1C  C0 A7 00 00 */	lfs f5, 0(r7)
/* 805FFC20  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805FFC24  EC E8 01 F2 */	fmuls f7, f8, f7
/* 805FFC28  EC 24 08 2A */	fadds f1, f4, f1
/* 805FFC2C  EC C8 01 B2 */	fmuls f6, f8, f6
/* 805FFC30  FC E0 38 50 */	fneg f7, f7
/* 805FFC34  EC 00 10 2A */	fadds f0, f0, f2
/* 805FFC38  FC 80 30 50 */	fneg f4, f6
/* 805FFC3C  FC 40 38 1E */	fctiwz f2, f7
/* 805FFC40  EC 25 00 72 */	fmuls f1, f5, f1
/* 805FFC44  FC 80 20 1E */	fctiwz f4, f4
/* 805FFC48  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 805FFC4C  EC 45 00 32 */	fmuls f2, f5, f0
/* 805FFC50  D8 81 00 28 */	stfd f4, 0x28(r1)
/* 805FFC54  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 805FFC58  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805FFC5C  B0 81 00 08 */	sth r4, 8(r1)
/* 805FFC60  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805FFC64  4B E0 C6 9D */	bl Matrix_translate
/* 805FFC68  3C 60 80 65 */	lis r3, data_8064B914@ha /* 0x8064B914@ha */
/* 805FFC6C  3C 80 80 65 */	lis r4, lit_598@ha /* 0x8064B91C@ha */
/* 805FFC70  38 A3 B9 14 */	addi r5, r3, data_8064B914@l /* 0x8064B914@l */
/* 805FFC74  C0 64 B9 1C */	lfs f3, lit_598@l(r4)  /* 0x8064B91C@l */
/* 805FFC78  C0 25 00 00 */	lfs f1, 0(r5)
/* 805FFC7C  38 60 00 01 */	li r3, 1
/* 805FFC80  FC 40 08 90 */	fmr f2, f1
/* 805FFC84  4B E0 C7 69 */	bl Matrix_scale
/* 805FFC88  3C C0 80 65 */	lis r6, lit_643@ha /* 0x8064B938@ha */
/* 805FFC8C  3C A0 80 65 */	lis r5, lit_644@ha /* 0x8064B93C@ha */
/* 805FFC90  3C 80 80 65 */	lis r4, lit_645@ha /* 0x8064B940@ha */
/* 805FFC94  C0 26 B9 38 */	lfs f1, lit_643@l(r6)  /* 0x8064B938@l */
/* 805FFC98  C0 45 B9 3C */	lfs f2, lit_644@l(r5)  /* 0x8064B93C@l */
/* 805FFC9C  38 60 00 01 */	li r3, 1
/* 805FFCA0  C0 64 B9 40 */	lfs f3, lit_645@l(r4)  /* 0x8064B940@l */
/* 805FFCA4  4B E0 C6 5D */	bl Matrix_translate
/* 805FFCA8  82 FF 02 D0 */	lwz r23, 0x2d0(r31)
/* 805FFCAC  3F 20 DE 00 */	lis r25, 0xde00
/* 805FFCB0  3C 60 80 B3 */	lis r3, tim_hari_mode@ha /* 0x80B2F0C0@ha */
/* 805FFCB4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805FFCB8  93 37 00 00 */	stw r25, 0(r23)
/* 805FFCBC  38 03 F0 C0 */	addi r0, r3, tim_hari_mode@l /* 0x80B2F0C0@l */
/* 805FFCC0  3C 60 80 6D */	lis r3, displayList_table@ha /* 0x806D1298@ha */
/* 805FFCC4  3B 41 00 08 */	addi r26, r1, 8
/* 805FFCC8  90 17 00 04 */	stw r0, 4(r23)
/* 805FFCCC  3B 64 00 03 */	addi r27, r4, 0x0003 /* 0xDA380003@l */
/* 805FFCD0  3B 83 12 98 */	addi r28, r3, displayList_table@l /* 0x806D1298@l */
/* 805FFCD4  3B 00 00 00 */	li r24, 0
/* 805FFCD8  3B C0 00 00 */	li r30, 0
/* 805FFCDC  3B A0 00 00 */	li r29, 0
/* 805FFCE0  3A F7 00 08 */	addi r23, r23, 8
lbl_805FFCE4:
/* 805FFCE4  4B E0 C4 F1 */	bl Matrix_push
/* 805FFCE8  7C 7A EA AE */	lhax r3, r26, r29
/* 805FFCEC  38 80 00 01 */	li r4, 1
/* 805FFCF0  4B E0 CB 01 */	bl Matrix_RotateZ
/* 805FFCF4  93 77 00 00 */	stw r27, 0(r23)
/* 805FFCF8  7F E3 FB 78 */	mr r3, r31
/* 805FFCFC  4B E0 D6 D9 */	bl _Matrix_to_Mtx_new
/* 805FFD00  90 77 00 04 */	stw r3, 4(r23)
/* 805FFD04  93 37 00 08 */	stw r25, 8(r23)
/* 805FFD08  7C 1C F0 2E */	lwzx r0, r28, r30
/* 805FFD0C  90 17 00 0C */	stw r0, 0xc(r23)
/* 805FFD10  3A F7 00 10 */	addi r23, r23, 0x10
/* 805FFD14  4B E0 C5 01 */	bl Matrix_pull
/* 805FFD18  3B 18 00 01 */	addi r24, r24, 1
/* 805FFD1C  3B BD 00 02 */	addi r29, r29, 2
/* 805FFD20  2C 18 00 03 */	cmpwi r24, 3
/* 805FFD24  3B DE 00 04 */	addi r30, r30, 4
/* 805FFD28  41 80 FF BC */	blt lbl_805FFCE4
/* 805FFD2C  92 FF 02 D0 */	stw r23, 0x2d0(r31)
/* 805FFD30  39 61 00 60 */	addi r11, r1, 0x60
/* 805FFD34  4B A9 B1 D5 */	bl func_8009AF08
/* 805FFD38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805FFD3C  7C 08 03 A6 */	mtlr r0
/* 805FFD40  38 21 00 60 */	addi r1, r1, 0x60
/* 805FFD44  4E 80 00 20 */	blr 
