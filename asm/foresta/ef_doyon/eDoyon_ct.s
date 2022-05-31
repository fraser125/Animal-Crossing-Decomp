lbl_8060AA74:
/* 8060AA74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060AA78  7C 08 02 A6 */	mflr r0
/* 8060AA7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060AA80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060AA84  7C 7F 1B 78 */	mr r31, r3
/* 8060AA88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8060AA8C  4B A5 22 41 */	bl func_8005CCCC
/* 8060AA90  7C 63 07 34 */	extsh r3, r3
/* 8060AA94  3C 00 43 30 */	lis r0, 0x4330
/* 8060AA98  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8060AA9C  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064BED4@ha */
/* 8060AAA0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8060AAA4  38 64 BE D4 */	addi r3, r4, lit_389@l /* 0x8064BED4@l */
/* 8060AAA8  3C 80 80 65 */	lis r4, data_8064BEBC@ha /* 0x8064BEBC@ha */
/* 8060AAAC  C8 23 00 00 */	lfd f1, 0(r3)
/* 8060AAB0  90 01 00 08 */	stw r0, 8(r1)
/* 8060AAB4  C0 44 BE BC */	lfs f2, data_8064BEBC@l(r4)  /* 0x8064BEBC@l */
/* 8060AAB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8060AABC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060AAC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060AAC4  FC 00 00 1E */	fctiwz f0, f0
/* 8060AAC8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8060AACC  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 8060AAD0  7F C3 F3 78 */	mr r3, r30
/* 8060AAD4  4B DB 00 1D */	bl sin_s
/* 8060AAD8  3C 60 80 65 */	lis r3, lit_384@ha /* 0x8064BEC0@ha */
/* 8060AADC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8060AAE0  38 83 BE C0 */	addi r4, r3, lit_384@l /* 0x8064BEC0@l */
/* 8060AAE4  7F C3 F3 78 */	mr r3, r30
/* 8060AAE8  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060AAEC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060AAF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8060AAF4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8060AAF8  4B DA FF A5 */	bl cos_s
/* 8060AAFC  3C 60 80 65 */	lis r3, lit_384@ha /* 0x8064BEC0@ha */
/* 8060AB00  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8060AB04  38 83 BE C0 */	addi r4, r3, lit_384@l /* 0x8064BEC0@l */
/* 8060AB08  7F C3 F3 78 */	mr r3, r30
/* 8060AB0C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060AB10  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060AB14  EC 00 08 2A */	fadds f0, f0, f1
/* 8060AB18  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8060AB1C  4B DA FF D5 */	bl sin_s
/* 8060AB20  3C 60 80 65 */	lis r3, lit_385@ha /* 0x8064BEC4@ha */
/* 8060AB24  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8060AB28  38 83 BE C4 */	addi r4, r3, lit_385@l /* 0x8064BEC4@l */
/* 8060AB2C  7F C3 F3 78 */	mr r3, r30
/* 8060AB30  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060AB34  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060AB38  EC 00 08 2A */	fadds f0, f0, f1
/* 8060AB3C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8060AB40  4B DA FF 5D */	bl cos_s
/* 8060AB44  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064BEC4@ha */
/* 8060AB48  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8060AB4C  38 A4 BE C4 */	addi r5, r4, lit_385@l /* 0x8064BEC4@l */
/* 8060AB50  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064BEC8@ha */
/* 8060AB54  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060AB58  38 A3 BE C8 */	addi r5, r3, lit_386@l /* 0x8064BEC8@l */
/* 8060AB5C  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8060AB60  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064BECC@ha */
/* 8060AB64  EC 60 00 72 */	fmuls f3, f0, f1
/* 8060AB68  38 E4 F0 50 */	addi r7, r4, data_8065F050@l /* 0x8065F050@l */
/* 8060AB6C  C0 03 BE CC */	lfs f0, lit_387@l(r3)  /* 0x8064BECC@l */
/* 8060AB70  38 00 00 3C */	li r0, 0x3c
/* 8060AB74  C0 25 00 00 */	lfs f1, 0(r5)
/* 8060AB78  38 9F 00 10 */	addi r4, r31, 0x10
/* 8060AB7C  EC 42 18 2A */	fadds f2, f2, f3
/* 8060AB80  38 60 01 3F */	li r3, 0x13f
/* 8060AB84  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 8060AB88  D0 3F 00 48 */	stfs f1, 0x48(r31)
/* 8060AB8C  80 C7 00 00 */	lwz r6, 0(r7)
/* 8060AB90  80 A7 00 04 */	lwz r5, 4(r7)
/* 8060AB94  90 DF 00 34 */	stw r6, 0x34(r31)
/* 8060AB98  90 BF 00 38 */	stw r5, 0x38(r31)
/* 8060AB9C  80 A7 00 08 */	lwz r5, 8(r7)
/* 8060ABA0  90 BF 00 3C */	stw r5, 0x3c(r31)
/* 8060ABA4  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8060ABA8  B0 1F 00 00 */	sth r0, 0(r31)
/* 8060ABAC  48 02 33 FD */	bl sAdo_OngenTrgStart
/* 8060ABB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060ABB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060ABB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8060ABBC  7C 08 03 A6 */	mtlr r0
/* 8060ABC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8060ABC4  4E 80 00 20 */	blr 
