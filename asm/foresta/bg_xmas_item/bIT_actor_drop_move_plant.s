lbl_804C9794:
/* 804C9794  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C9798  7C 08 02 A6 */	mflr r0
/* 804C979C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C97A0  39 61 00 50 */	addi r11, r1, 0x50
/* 804C97A4  4B BD 17 31 */	bl func_8009AED4
/* 804C97A8  AB C3 00 58 */	lha r30, 0x58(r3)
/* 804C97AC  7C 7F 1B 78 */	mr r31, r3
/* 804C97B0  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 804C97B4  7C 1E 02 14 */	add r0, r30, r0
/* 804C97B8  B0 03 00 58 */	sth r0, 0x58(r3)
/* 804C97BC  A0 03 00 6C */	lhz r0, 0x6c(r3)
/* 804C97C0  AB A3 00 58 */	lha r29, 0x58(r3)
/* 804C97C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C97C8  41 82 00 5C */	beq lbl_804C9824
/* 804C97CC  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 804C97D0  3C 00 43 30 */	lis r0, 0x4330
/* 804C97D4  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806461FC@ha */
/* 804C97D8  90 61 00 34 */	stw r3, 0x34(r1)
/* 804C97DC  38 64 61 FC */	addi r3, r4, lit_770@l /* 0x806461FC@l */
/* 804C97E0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C97E4  3C 80 80 64 */	lis r4, lit_1727@ha /* 0x80646238@ha */
/* 804C97E8  C8 23 00 00 */	lfd f1, 0(r3)
/* 804C97EC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C97F0  C0 44 62 38 */	lfs f2, lit_1727@l(r4)  /* 0x80646238@l */
/* 804C97F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C97F8  EC 22 00 32 */	fmuls f1, f2, f0
/* 804C97FC  4B F3 F0 81 */	bl sinf_table
/* 804C9800  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804C9804  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646204@ha */
/* 804C9808  EC 20 00 72 */	fmuls f1, f0, f1
/* 804C980C  C0 03 62 04 */	lfs f0, lit_845@l(r3)  /* 0x80646204@l */
/* 804C9810  EC 40 08 28 */	fsubs f2, f0, f1
/* 804C9814  EC 21 00 2A */	fadds f1, f1, f0
/* 804C9818  D0 5F 00 2C */	stfs f2, 0x2c(r31)
/* 804C981C  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 804C9820  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804C9824:
/* 804C9824  7F C0 07 35 */	extsh. r0, r30
/* 804C9828  40 80 00 0C */	bge lbl_804C9834
/* 804C982C  7F A0 07 35 */	extsh. r0, r29
/* 804C9830  40 80 00 1C */	bge lbl_804C984C
lbl_804C9834:
/* 804C9834  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804C9838  28 00 7F FF */	cmplwi r0, 0x7fff
/* 804C983C  40 80 00 68 */	bge lbl_804C98A4
/* 804C9840  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804C9844  28 00 80 00 */	cmplwi r0, 0x8000
/* 804C9848  41 80 00 5C */	blt lbl_804C98A4
lbl_804C984C:
/* 804C984C  3C 60 80 64 */	lis r3, lit_1728@ha /* 0x8064623C@ha */
/* 804C9850  3C 00 43 30 */	lis r0, 0x4330
/* 804C9854  38 83 62 3C */	addi r4, r3, lit_1728@l /* 0x8064623C@l */
/* 804C9858  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 804C985C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C9860  3C 80 80 64 */	lis r4, lit_1729@ha /* 0x80646240@ha */
/* 804C9864  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C9868  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C986C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C9870  C8 23 61 FC */	lfd f1, lit_770@l(r3)  /* 0x806461FC@l */
/* 804C9874  C0 44 62 40 */	lfs f2, lit_1729@l(r4)  /* 0x80646240@l */
/* 804C9878  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 804C987C  A8 1F 00 5A */	lha r0, 0x5a(r31)
/* 804C9880  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C9884  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C9888  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C988C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C9890  EC 02 00 2A */	fadds f0, f2, f0
/* 804C9894  FC 00 00 1E */	fctiwz f0, f0
/* 804C9898  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804C989C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804C98A0  B0 1F 00 5A */	sth r0, 0x5a(r31)
lbl_804C98A4:
/* 804C98A4  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C98A8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 804C98AC  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804C98B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C98B4  4C 41 13 82 */	cror 2, 1, 2
/* 804C98B8  40 82 00 08 */	bne lbl_804C98C0
/* 804C98BC  48 00 00 08 */	b lbl_804C98C4
lbl_804C98C0:
/* 804C98C0  FC 20 08 50 */	fneg f1, f1
lbl_804C98C4:
/* 804C98C4  3C 60 80 64 */	lis r3, lit_1730@ha /* 0x80646244@ha */
/* 804C98C8  C0 03 62 44 */	lfs f0, lit_1730@l(r3)  /* 0x80646244@l */
/* 804C98CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C98D0  40 80 00 E4 */	bge lbl_804C99B4
/* 804C98D4  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804C98D8  28 00 08 63 */	cmplwi r0, 0x863
/* 804C98DC  40 82 00 A0 */	bne lbl_804C997C
/* 804C98E0  3C C0 80 64 */	lis r6, lit_1731@ha /* 0x80646248@ha */
/* 804C98E4  3C A0 80 64 */	lis r5, lit_1732@ha /* 0x8064624C@ha */
/* 804C98E8  C0 26 62 48 */	lfs f1, lit_1731@l(r6)  /* 0x80646248@l */
/* 804C98EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C98F0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 804C98F4  3C 80 80 64 */	lis r4, lit_1733@ha /* 0x80646250@ha */
/* 804C98F8  C0 65 62 4C */	lfs f3, lit_1732@l(r5)  /* 0x8064624C@l */
/* 804C98FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C9900  EC 81 00 2A */	fadds f4, f1, f0
/* 804C9904  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 804C9908  C0 24 62 50 */	lfs f1, lit_1733@l(r4)  /* 0x80646250@l */
/* 804C990C  3C E3 00 02 */	addis r7, r3, 2
/* 804C9910  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 804C9914  EC 43 10 2A */	fadds f2, f3, f2
/* 804C9918  EC 01 00 2A */	fadds f0, f1, f0
/* 804C991C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 804C9920  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804C9924  81 67 60 9C */	lwz r11, 0x609c(r7)
/* 804C9928  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804C992C  39 83 52 F0 */	addi r12, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804C9930  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C9934  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C9938  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804C993C  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C9940  81 41 00 24 */	lwz r10, 0x24(r1)
/* 804C9944  38 81 00 14 */	addi r4, r1, 0x14
/* 804C9948  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804C994C  38 60 00 56 */	li r3, 0x56
/* 804C9950  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804C9954  38 A0 00 02 */	li r5, 2
/* 804C9958  80 EC 00 00 */	lwz r7, 0(r12)
/* 804C995C  38 C0 00 00 */	li r6, 0
/* 804C9960  91 41 00 18 */	stw r10, 0x18(r1)
/* 804C9964  39 20 FF FF */	li r9, -1
/* 804C9968  39 40 00 00 */	li r10, 0
/* 804C996C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C9970  81 8B 00 00 */	lwz r12, 0(r11)
/* 804C9974  7D 89 03 A6 */	mtctr r12
/* 804C9978  4E 80 04 21 */	bctrl 
lbl_804C997C:
/* 804C997C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 804C9980  38 81 00 08 */	addi r4, r1, 8
/* 804C9984  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 804C9988  38 A0 00 01 */	li r5, 1
/* 804C998C  90 61 00 08 */	stw r3, 8(r1)
/* 804C9990  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C9994  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 804C9998  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C999C  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C99A0  4B ED DE 91 */	bl mFI_SetFG_common
/* 804C99A4  38 00 00 00 */	li r0, 0
/* 804C99A8  90 1F 00 00 */	stw r0, 0(r31)
/* 804C99AC  90 1F 00 04 */	stw r0, 4(r31)
/* 804C99B0  90 1F 00 08 */	stw r0, 8(r31)
lbl_804C99B4:
/* 804C99B4  39 61 00 50 */	addi r11, r1, 0x50
/* 804C99B8  4B BD 15 69 */	bl func_8009AF20
/* 804C99BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C99C0  7C 08 03 A6 */	mtlr r0
/* 804C99C4  38 21 00 50 */	addi r1, r1, 0x50
/* 804C99C8  4E 80 00 20 */	blr 
