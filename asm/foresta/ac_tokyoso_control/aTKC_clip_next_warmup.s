lbl_804ABDDC:
/* 804ABDDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804ABDE0  7C 08 02 A6 */	mflr r0
/* 804ABDE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804ABDE8  39 61 00 30 */	addi r11, r1, 0x30
/* 804ABDEC  4B BE F0 E9 */	bl func_8009AED4
/* 804ABDF0  7C 7F 1B 78 */	mr r31, r3
/* 804ABDF4  38 60 00 0F */	li r3, 0xf
/* 804ABDF8  A0 BF 00 06 */	lhz r5, 6(r31)
/* 804ABDFC  38 80 00 08 */	li r4, 8
/* 804ABE00  3C A5 FF FF */	addis r5, r5, 0xffff
/* 804ABE04  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 804ABE08  54 1D 07 FE */	clrlwi r29, r0, 0x1f
/* 804ABE0C  4B EF 1F C1 */	bl mEv_get_save_area
/* 804ABE10  7C 7E 1B 78 */	mr r30, r3
/* 804ABE14  4B BB 0E E1 */	bl fqrand
/* 804ABE18  3C 80 80 69 */	lis r4, tableXR@ha /* 0x8068F3A0@ha */
/* 804ABE1C  3C 60 80 69 */	lis r3, tableX_739@ha /* 0x8068F39C@ha */
/* 804ABE20  57 A5 10 3A */	slwi r5, r29, 2
/* 804ABE24  57 A0 08 3C */	slwi r0, r29, 1
/* 804ABE28  38 84 F3 A0 */	addi r4, r4, tableXR@l /* 0x8068F3A0@l */
/* 804ABE2C  38 63 F3 9C */	addi r3, r3, tableX_739@l /* 0x8068F39C@l */
/* 804ABE30  7C 04 2C 2E */	lfsx f0, r4, r5
/* 804ABE34  7C 03 02 AE */	lhax r0, r3, r0
/* 804ABE38  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ABE3C  A8 7E 00 04 */	lha r3, 4(r30)
/* 804ABE40  FC 00 00 1E */	fctiwz f0, f0
/* 804ABE44  D8 01 00 08 */	stfd f0, 8(r1)
/* 804ABE48  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804ABE4C  7C 00 22 14 */	add r0, r0, r4
/* 804ABE50  7C 03 02 14 */	add r0, r3, r0
/* 804ABE54  B0 1F 09 A2 */	sth r0, 0x9a2(r31)
/* 804ABE58  4B BB 0E 9D */	bl fqrand
/* 804ABE5C  A8 7E 00 06 */	lha r3, 6(r30)
/* 804ABE60  3C 00 43 30 */	lis r0, 0x4330
/* 804ABE64  3C C0 80 64 */	lis r6, lit_742@ha /* 0x80645E94@ha */
/* 804ABE68  3C A0 80 64 */	lis r5, lit_676@ha /* 0x80645E8C@ha */
/* 804ABE6C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 804ABE70  C0 06 5E 94 */	lfs f0, lit_742@l(r6)  /* 0x80645E94@l */
/* 804ABE74  90 81 00 14 */	stw r4, 0x14(r1)
/* 804ABE78  3C 60 80 64 */	lis r3, lit_743@ha /* 0x80645E98@ha */
/* 804ABE7C  EC 60 00 72 */	fmuls f3, f0, f1
/* 804ABE80  C8 45 5E 8C */	lfd f2, lit_676@l(r5)  /* 0x80645E8C@l */
/* 804ABE84  90 01 00 10 */	stw r0, 0x10(r1)
/* 804ABE88  39 61 00 30 */	addi r11, r1, 0x30
/* 804ABE8C  C0 03 5E 98 */	lfs f0, lit_743@l(r3)  /* 0x80645E98@l */
/* 804ABE90  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804ABE94  EC 21 10 28 */	fsubs f1, f1, f2
/* 804ABE98  EC 21 18 2A */	fadds f1, f1, f3
/* 804ABE9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804ABEA0  FC 00 00 1E */	fctiwz f0, f0
/* 804ABEA4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804ABEA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804ABEAC  B0 1F 09 A4 */	sth r0, 0x9a4(r31)
/* 804ABEB0  4B BE F0 71 */	bl func_8009AF20
/* 804ABEB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804ABEB8  7C 08 03 A6 */	mtlr r0
/* 804ABEBC  38 21 00 30 */	addi r1, r1, 0x30
/* 804ABEC0  4E 80 00 20 */	blr 
