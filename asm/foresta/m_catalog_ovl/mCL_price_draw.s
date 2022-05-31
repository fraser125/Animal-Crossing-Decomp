lbl_805CAF3C:
/* 805CAF3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805CAF40  7C 08 02 A6 */	mflr r0
/* 805CAF44  90 01 00 54 */	stw r0, 0x54(r1)
/* 805CAF48  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805CAF4C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805CAF50  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805CAF54  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805CAF58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805CAF5C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805CAF60  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CAF64  FF C0 08 90 */	fmr f30, f1
/* 805CAF68  FF E0 10 90 */	fmr f31, f2
/* 805CAF6C  7C 9F 23 78 */	mr r31, r4
/* 805CAF70  81 83 09 50 */	lwz r12, 0x950(r3)
/* 805CAF74  7C DE 33 78 */	mr r30, r6
/* 805CAF78  7C A3 2B 78 */	mr r3, r5
/* 805CAF7C  7D 89 03 A6 */	mtctr r12
/* 805CAF80  4E 80 04 21 */	bctrl 
/* 805CAF84  80 BE 50 8C */	lwz r5, 0x508c(r30)
/* 805CAF88  28 05 00 00 */	cmplwi r5, 0
/* 805CAF8C  40 82 00 84 */	bne lbl_805CB010
/* 805CAF90  3C 80 80 65 */	lis r4, lit_1083@ha /* 0x8064AF54@ha */
/* 805CAF94  3C 60 80 65 */	lis r3, lit_1085@ha /* 0x8064AF5C@ha */
/* 805CAF98  C0 24 AF 54 */	lfs f1, lit_1083@l(r4)  /* 0x8064AF54@l */
/* 805CAF9C  3C A0 80 65 */	lis r5, lit_1082@ha /* 0x8064AF50@ha */
/* 805CAFA0  C0 03 AF 5C */	lfs f0, lit_1085@l(r3)  /* 0x8064AF5C@l */
/* 805CAFA4  3C 80 80 65 */	lis r4, lit_1084@ha /* 0x8064AF58@ha */
/* 805CAFA8  38 C5 AF 50 */	addi r6, r5, lit_1082@l /* 0x8064AF50@l */
/* 805CAFAC  3C 60 80 65 */	lis r3, lit_1086@ha /* 0x8064AF60@ha */
/* 805CAFB0  38 A4 AF 58 */	addi r5, r4, lit_1084@l /* 0x8064AF58@l */
/* 805CAFB4  C0 63 AF 60 */	lfs f3, lit_1086@l(r3)  /* 0x8064AF60@l */
/* 805CAFB8  38 00 00 01 */	li r0, 1
/* 805CAFBC  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805CAFC0  EC 21 F0 2A */	fadds f1, f1, f30
/* 805CAFC4  C0 45 00 00 */	lfs f2, 0(r5)
/* 805CAFC8  EC 00 F8 2A */	fadds f0, f0, f31
/* 805CAFCC  90 01 00 08 */	stw r0, 8(r1)
/* 805CAFD0  38 00 00 00 */	li r0, 0
/* 805CAFD4  3C 80 80 6D */	lis r4, not_sell@ha /* 0x806CB558@ha */
/* 805CAFD8  FC 80 18 90 */	fmr f4, f3
/* 805CAFDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CAFE0  EC 25 08 2A */	fadds f1, f5, f1
/* 805CAFE4  38 84 B5 58 */	addi r4, r4, not_sell@l /* 0x806CB558@l */
/* 805CAFE8  EC 42 00 28 */	fsubs f2, f2, f0
/* 805CAFEC  7F E3 FB 78 */	mr r3, r31
/* 805CAFF0  38 A0 00 0C */	li r5, 0xc
/* 805CAFF4  38 C0 00 CD */	li r6, 0xcd
/* 805CAFF8  38 E0 00 00 */	li r7, 0
/* 805CAFFC  39 00 00 00 */	li r8, 0
/* 805CB000  39 20 00 FF */	li r9, 0xff
/* 805CB004  39 40 00 00 */	li r10, 0
/* 805CB008  4B DE 50 A1 */	bl mFont_SetLineStrings
/* 805CB00C  48 00 00 FC */	b lbl_805CB108
lbl_805CB010:
/* 805CB010  38 61 00 10 */	addi r3, r1, 0x10
/* 805CB014  38 80 00 06 */	li r4, 6
/* 805CB018  38 C0 00 05 */	li r6, 5
/* 805CB01C  38 E0 00 01 */	li r7, 1
/* 805CB020  39 00 00 00 */	li r8, 0
/* 805CB024  39 20 00 01 */	li r9, 1
/* 805CB028  4B DE 44 51 */	bl mFont_UnintToString
/* 805CB02C  38 00 00 05 */	li r0, 5
/* 805CB030  80 BE 50 8C */	lwz r5, 0x508c(r30)
/* 805CB034  38 80 00 01 */	li r4, 1
/* 805CB038  38 60 00 0A */	li r3, 0xa
/* 805CB03C  7C 09 03 A6 */	mtctr r0
lbl_805CB040:
/* 805CB040  7C A5 1B 97 */	divwu. r5, r5, r3
/* 805CB044  41 82 00 0C */	beq lbl_805CB050
/* 805CB048  38 84 00 01 */	addi r4, r4, 1
/* 805CB04C  42 00 FF F4 */	bdnz lbl_805CB040
lbl_805CB050:
/* 805CB050  2C 04 00 03 */	cmpwi r4, 3
/* 805CB054  40 81 00 08 */	ble lbl_805CB05C
/* 805CB058  38 84 00 01 */	addi r4, r4, 1
lbl_805CB05C:
/* 805CB05C  38 61 00 10 */	addi r3, r1, 0x10
/* 805CB060  38 A0 00 01 */	li r5, 1
/* 805CB064  4B DE 46 6D */	bl mFont_GetStringWidth
/* 805CB068  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805CB06C  3C 00 43 30 */	lis r0, 0x4330
/* 805CB070  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805CB074  3C A0 80 65 */	lis r5, lit_678@ha /* 0x8064AF04@ha */
/* 805CB078  3C 60 80 65 */	lis r3, lit_1087@ha /* 0x8064AF64@ha */
/* 805CB07C  C8 45 AF 04 */	lfd f2, lit_678@l(r5)  /* 0x8064AF04@l */
/* 805CB080  90 01 00 18 */	stw r0, 0x18(r1)
/* 805CB084  3C A0 80 65 */	lis r5, lit_1086@ha /* 0x8064AF60@ha */
/* 805CB088  C0 23 AF 64 */	lfs f1, lit_1087@l(r3)  /* 0x8064AF64@l */
/* 805CB08C  3C 80 80 65 */	lis r4, lit_1082@ha /* 0x8064AF50@ha */
/* 805CB090  38 C5 AF 60 */	addi r6, r5, lit_1086@l /* 0x8064AF60@l */
/* 805CB094  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805CB098  38 A4 AF 50 */	addi r5, r4, lit_1082@l /* 0x8064AF50@l */
/* 805CB09C  C0 66 00 00 */	lfs f3, 0(r6)
/* 805CB0A0  EC 40 10 28 */	fsubs f2, f0, f2
/* 805CB0A4  3C 60 80 65 */	lis r3, lit_1085@ha /* 0x8064AF5C@ha */
/* 805CB0A8  C0 03 AF 5C */	lfs f0, lit_1085@l(r3)  /* 0x8064AF5C@l */
/* 805CB0AC  EC 21 F0 2A */	fadds f1, f1, f30
/* 805CB0B0  C0 85 00 00 */	lfs f4, 0(r5)
/* 805CB0B4  38 00 00 01 */	li r0, 1
/* 805CB0B8  EC 24 08 2A */	fadds f1, f4, f1
/* 805CB0BC  90 01 00 08 */	stw r0, 8(r1)
/* 805CB0C0  EC A3 00 B2 */	fmuls f5, f3, f2
/* 805CB0C4  3C 80 80 65 */	lis r4, lit_1084@ha /* 0x8064AF58@ha */
/* 805CB0C8  C0 44 AF 58 */	lfs f2, lit_1084@l(r4)  /* 0x8064AF58@l */
/* 805CB0CC  EC 00 F8 2A */	fadds f0, f0, f31
/* 805CB0D0  38 00 00 00 */	li r0, 0
/* 805CB0D4  FC 80 18 90 */	fmr f4, f3
/* 805CB0D8  EC 21 28 28 */	fsubs f1, f1, f5
/* 805CB0DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CB0E0  EC 42 00 28 */	fsubs f2, f2, f0
/* 805CB0E4  7F E3 FB 78 */	mr r3, r31
/* 805CB0E8  38 81 00 10 */	addi r4, r1, 0x10
/* 805CB0EC  38 A0 00 06 */	li r5, 6
/* 805CB0F0  38 C0 00 CD */	li r6, 0xcd
/* 805CB0F4  38 E0 00 00 */	li r7, 0
/* 805CB0F8  39 00 00 00 */	li r8, 0
/* 805CB0FC  39 20 00 FF */	li r9, 0xff
/* 805CB100  39 40 00 00 */	li r10, 0
/* 805CB104  4B DE 4F A5 */	bl mFont_SetLineStrings
lbl_805CB108:
/* 805CB108  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805CB10C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805CB110  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805CB114  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805CB118  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805CB11C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805CB120  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805CB124  7C 08 03 A6 */	mtlr r0
/* 805CB128  38 21 00 50 */	addi r1, r1, 0x50
/* 805CB12C  4E 80 00 20 */	blr 
