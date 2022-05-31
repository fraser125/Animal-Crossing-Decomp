lbl_804BA884:
/* 804BA884  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804BA888  7C 08 02 A6 */	mflr r0
/* 804BA88C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804BA890  39 61 00 50 */	addi r11, r1, 0x50
/* 804BA894  4B BE 06 41 */	bl func_8009AED4
/* 804BA898  AB C3 00 58 */	lha r30, 0x58(r3)
/* 804BA89C  7C 7F 1B 78 */	mr r31, r3
/* 804BA8A0  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 804BA8A4  7C 1E 02 14 */	add r0, r30, r0
/* 804BA8A8  B0 03 00 58 */	sth r0, 0x58(r3)
/* 804BA8AC  A0 03 00 6C */	lhz r0, 0x6c(r3)
/* 804BA8B0  AB A3 00 58 */	lha r29, 0x58(r3)
/* 804BA8B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BA8B8  41 82 00 5C */	beq lbl_804BA914
/* 804BA8BC  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 804BA8C0  3C 00 43 30 */	lis r0, 0x4330
/* 804BA8C4  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806460AC@ha */
/* 804BA8C8  90 61 00 34 */	stw r3, 0x34(r1)
/* 804BA8CC  38 64 60 AC */	addi r3, r4, lit_770@l /* 0x806460AC@l */
/* 804BA8D0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BA8D4  3C 80 80 64 */	lis r4, lit_1727@ha /* 0x806460E8@ha */
/* 804BA8D8  C8 23 00 00 */	lfd f1, 0(r3)
/* 804BA8DC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804BA8E0  C0 44 60 E8 */	lfs f2, lit_1727@l(r4)  /* 0x806460E8@l */
/* 804BA8E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BA8E8  EC 22 00 32 */	fmuls f1, f2, f0
/* 804BA8EC  4B F4 DF 91 */	bl sinf_table
/* 804BA8F0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804BA8F4  3C 60 80 64 */	lis r3, lit_845@ha /* 0x806460B4@ha */
/* 804BA8F8  EC 20 00 72 */	fmuls f1, f0, f1
/* 804BA8FC  C0 03 60 B4 */	lfs f0, lit_845@l(r3)  /* 0x806460B4@l */
/* 804BA900  EC 40 08 28 */	fsubs f2, f0, f1
/* 804BA904  EC 21 00 2A */	fadds f1, f1, f0
/* 804BA908  D0 5F 00 2C */	stfs f2, 0x2c(r31)
/* 804BA90C  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 804BA910  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804BA914:
/* 804BA914  7F C0 07 35 */	extsh. r0, r30
/* 804BA918  40 80 00 0C */	bge lbl_804BA924
/* 804BA91C  7F A0 07 35 */	extsh. r0, r29
/* 804BA920  40 80 00 1C */	bge lbl_804BA93C
lbl_804BA924:
/* 804BA924  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804BA928  28 00 7F FF */	cmplwi r0, 0x7fff
/* 804BA92C  40 80 00 68 */	bge lbl_804BA994
/* 804BA930  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804BA934  28 00 80 00 */	cmplwi r0, 0x8000
/* 804BA938  41 80 00 5C */	blt lbl_804BA994
lbl_804BA93C:
/* 804BA93C  3C 60 80 64 */	lis r3, lit_1728@ha /* 0x806460EC@ha */
/* 804BA940  3C 00 43 30 */	lis r0, 0x4330
/* 804BA944  38 83 60 EC */	addi r4, r3, lit_1728@l /* 0x806460EC@l */
/* 804BA948  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 804BA94C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804BA950  3C 80 80 64 */	lis r4, lit_1729@ha /* 0x806460F0@ha */
/* 804BA954  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BA958  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BA95C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BA960  C8 23 60 AC */	lfd f1, lit_770@l(r3)  /* 0x806460AC@l */
/* 804BA964  C0 44 60 F0 */	lfs f2, lit_1729@l(r4)  /* 0x806460F0@l */
/* 804BA968  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 804BA96C  A8 1F 00 5A */	lha r0, 0x5a(r31)
/* 804BA970  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BA974  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BA978  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804BA97C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BA980  EC 02 00 2A */	fadds f0, f2, f0
/* 804BA984  FC 00 00 1E */	fctiwz f0, f0
/* 804BA988  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804BA98C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804BA990  B0 1F 00 5A */	sth r0, 0x5a(r31)
lbl_804BA994:
/* 804BA994  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804BA998  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 804BA99C  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804BA9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BA9A4  4C 41 13 82 */	cror 2, 1, 2
/* 804BA9A8  40 82 00 08 */	bne lbl_804BA9B0
/* 804BA9AC  48 00 00 08 */	b lbl_804BA9B4
lbl_804BA9B0:
/* 804BA9B0  FC 20 08 50 */	fneg f1, f1
lbl_804BA9B4:
/* 804BA9B4  3C 60 80 64 */	lis r3, lit_1730@ha /* 0x806460F4@ha */
/* 804BA9B8  C0 03 60 F4 */	lfs f0, lit_1730@l(r3)  /* 0x806460F4@l */
/* 804BA9BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BA9C0  40 80 00 E4 */	bge lbl_804BAAA4
/* 804BA9C4  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804BA9C8  28 00 08 63 */	cmplwi r0, 0x863
/* 804BA9CC  40 82 00 A0 */	bne lbl_804BAA6C
/* 804BA9D0  3C C0 80 64 */	lis r6, lit_1731@ha /* 0x806460F8@ha */
/* 804BA9D4  3C A0 80 64 */	lis r5, lit_1732@ha /* 0x806460FC@ha */
/* 804BA9D8  C0 26 60 F8 */	lfs f1, lit_1731@l(r6)  /* 0x806460F8@l */
/* 804BA9DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BA9E0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 804BA9E4  3C 80 80 64 */	lis r4, lit_1733@ha /* 0x80646100@ha */
/* 804BA9E8  C0 65 60 FC */	lfs f3, lit_1732@l(r5)  /* 0x806460FC@l */
/* 804BA9EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BA9F0  EC 81 00 2A */	fadds f4, f1, f0
/* 804BA9F4  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 804BA9F8  C0 24 61 00 */	lfs f1, lit_1733@l(r4)  /* 0x80646100@l */
/* 804BA9FC  3C E3 00 02 */	addis r7, r3, 2
/* 804BAA00  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 804BAA04  EC 43 10 2A */	fadds f2, f3, f2
/* 804BAA08  EC 01 00 2A */	fadds f0, f1, f0
/* 804BAA0C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 804BAA10  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804BAA14  81 67 60 9C */	lwz r11, 0x609c(r7)
/* 804BAA18  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804BAA1C  39 83 52 F0 */	addi r12, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804BAA20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804BAA24  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804BAA28  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804BAA2C  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804BAA30  81 41 00 24 */	lwz r10, 0x24(r1)
/* 804BAA34  38 81 00 14 */	addi r4, r1, 0x14
/* 804BAA38  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804BAA3C  38 60 00 56 */	li r3, 0x56
/* 804BAA40  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804BAA44  38 A0 00 02 */	li r5, 2
/* 804BAA48  80 EC 00 00 */	lwz r7, 0(r12)
/* 804BAA4C  38 C0 00 00 */	li r6, 0
/* 804BAA50  91 41 00 18 */	stw r10, 0x18(r1)
/* 804BAA54  39 20 FF FF */	li r9, -1
/* 804BAA58  39 40 00 00 */	li r10, 0
/* 804BAA5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BAA60  81 8B 00 00 */	lwz r12, 0(r11)
/* 804BAA64  7D 89 03 A6 */	mtctr r12
/* 804BAA68  4E 80 04 21 */	bctrl 
lbl_804BAA6C:
/* 804BAA6C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 804BAA70  38 81 00 08 */	addi r4, r1, 8
/* 804BAA74  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 804BAA78  38 A0 00 01 */	li r5, 1
/* 804BAA7C  90 61 00 08 */	stw r3, 8(r1)
/* 804BAA80  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BAA84  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 804BAA88  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BAA8C  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804BAA90  4B EE CD A1 */	bl mFI_SetFG_common
/* 804BAA94  38 00 00 00 */	li r0, 0
/* 804BAA98  90 1F 00 00 */	stw r0, 0(r31)
/* 804BAA9C  90 1F 00 04 */	stw r0, 4(r31)
/* 804BAAA0  90 1F 00 08 */	stw r0, 8(r31)
lbl_804BAAA4:
/* 804BAAA4  39 61 00 50 */	addi r11, r1, 0x50
/* 804BAAA8  4B BE 04 79 */	bl func_8009AF20
/* 804BAAAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804BAAB0  7C 08 03 A6 */	mtlr r0
/* 804BAAB4  38 21 00 50 */	addi r1, r1, 0x50
/* 804BAAB8  4E 80 00 20 */	blr 
