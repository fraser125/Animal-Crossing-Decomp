lbl_8052EE50:
/* 8052EE50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052EE54  7C 08 02 A6 */	mflr r0
/* 8052EE58  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052EE5C  39 61 00 40 */	addi r11, r1, 0x40
/* 8052EE60  4B B6 C0 75 */	bl func_8009AED4
/* 8052EE64  7C 9E 23 78 */	mr r30, r4
/* 8052EE68  7C 7D 1B 78 */	mr r29, r3
/* 8052EE6C  80 E4 00 00 */	lwz r7, 0(r4)
/* 8052EE70  38 61 00 0C */	addi r3, r1, 0xc
/* 8052EE74  80 C4 00 04 */	lwz r6, 4(r4)
/* 8052EE78  38 81 00 08 */	addi r4, r1, 8
/* 8052EE7C  80 1E 00 08 */	lwz r0, 8(r30)
/* 8052EE80  38 A1 00 10 */	addi r5, r1, 0x10
/* 8052EE84  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8052EE88  3B E0 00 01 */	li r31, 1
/* 8052EE8C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8052EE90  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052EE94  4B E7 68 CD */	bl mFI_Wpos2BlockNum
/* 8052EE98  2C 03 00 01 */	cmpwi r3, 1
/* 8052EE9C  40 82 00 C8 */	bne lbl_8052EF64
/* 8052EEA0  88 1D 00 08 */	lbz r0, 8(r29)
/* 8052EEA4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8052EEA8  7C 00 07 74 */	extsb r0, r0
/* 8052EEAC  7C 04 00 00 */	cmpw r4, r0
/* 8052EEB0  40 82 00 18 */	bne lbl_8052EEC8
/* 8052EEB4  88 1D 00 09 */	lbz r0, 9(r29)
/* 8052EEB8  80 A1 00 08 */	lwz r5, 8(r1)
/* 8052EEBC  7C 00 07 74 */	extsb r0, r0
/* 8052EEC0  7C 05 00 00 */	cmpw r5, r0
/* 8052EEC4  41 82 00 0C */	beq lbl_8052EED0
lbl_8052EEC8:
/* 8052EEC8  3B E0 00 00 */	li r31, 0
/* 8052EECC  48 00 00 9C */	b lbl_8052EF68
lbl_8052EED0:
/* 8052EED0  3C 60 43 30 */	lis r3, 0x4330
/* 8052EED4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8052EED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052EEDC  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8052EEE0  3C 80 80 65 */	lis r4, lit_818@ha /* 0x80649284@ha */
/* 8052EEE4  3C A0 80 65 */	lis r5, lit_1492@ha /* 0x806492B0@ha */
/* 8052EEE8  90 61 00 20 */	stw r3, 0x20(r1)
/* 8052EEEC  C8 64 92 84 */	lfd f3, lit_818@l(r4)  /* 0x80649284@l */
/* 8052EEF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8052EEF4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8052EEF8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8052EEFC  C0 85 92 B0 */	lfs f4, lit_1492@l(r5)  /* 0x806492B0@l */
/* 8052EF00  90 61 00 28 */	stw r3, 0x28(r1)
/* 8052EF04  C0 BE 00 00 */	lfs f5, 0(r30)
/* 8052EF08  EC 44 00 72 */	fmuls f2, f4, f1
/* 8052EF0C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8052EF10  C0 DD 09 54 */	lfs f6, 0x954(r29)
/* 8052EF14  EC 00 18 28 */	fsubs f0, f0, f3
/* 8052EF18  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8052EF1C  EC 45 10 28 */	fsubs f2, f5, f2
/* 8052EF20  EC 64 30 28 */	fsubs f3, f4, f6
/* 8052EF24  EC 04 00 32 */	fmuls f0, f4, f0
/* 8052EF28  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 8052EF2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052EF30  4C 40 13 82 */	cror 2, 0, 2
/* 8052EF34  41 82 00 28 */	beq lbl_8052EF5C
/* 8052EF38  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8052EF3C  4C 41 13 82 */	cror 2, 1, 2
/* 8052EF40  41 82 00 1C */	beq lbl_8052EF5C
/* 8052EF44  FC 00 30 40 */	fcmpo cr0, f0, f6
/* 8052EF48  4C 40 13 82 */	cror 2, 0, 2
/* 8052EF4C  41 82 00 10 */	beq lbl_8052EF5C
/* 8052EF50  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8052EF54  4C 41 13 82 */	cror 2, 1, 2
/* 8052EF58  40 82 00 10 */	bne lbl_8052EF68
lbl_8052EF5C:
/* 8052EF5C  3B E0 00 00 */	li r31, 0
/* 8052EF60  48 00 00 08 */	b lbl_8052EF68
lbl_8052EF64:
/* 8052EF64  3B E0 00 00 */	li r31, 0
lbl_8052EF68:
/* 8052EF68  7F E3 FB 78 */	mr r3, r31
/* 8052EF6C  39 61 00 40 */	addi r11, r1, 0x40
/* 8052EF70  4B B6 BF B1 */	bl func_8009AF20
/* 8052EF74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052EF78  7C 08 03 A6 */	mtlr r0
/* 8052EF7C  38 21 00 40 */	addi r1, r1, 0x40
/* 8052EF80  4E 80 00 20 */	blr 
