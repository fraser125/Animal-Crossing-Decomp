lbl_803DB97C:
/* 803DB97C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803DB980  7C 08 02 A6 */	mflr r0
/* 803DB984  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DB988  39 61 00 30 */	addi r11, r1, 0x30
/* 803DB98C  4B CB F5 49 */	bl func_8009AED4
/* 803DB990  7C 7D 1B 78 */	mr r29, r3
/* 803DB994  7C 9E 23 78 */	mr r30, r4
/* 803DB998  7C BF 2B 78 */	mr r31, r5
/* 803DB99C  38 60 00 00 */	li r3, 0
/* 803DB9A0  38 80 00 02 */	li r4, 2
/* 803DB9A4  4B FB CA D9 */	bl mDemo_Get_OrderValue
/* 803DB9A8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803DB9AC  3C 00 43 30 */	lis r0, 0x4330
/* 803DB9B0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803DB9B4  3C 80 80 64 */	lis r4, lit_1308@ha /* 0x80642FEC@ha */
/* 803DB9B8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803DB9BC  38 60 00 00 */	li r3, 0
/* 803DB9C0  C8 24 2F EC */	lfd f1, lit_1308@l(r4)  /* 0x80642FEC@l */
/* 803DB9C4  38 80 00 04 */	li r4, 4
/* 803DB9C8  90 01 00 08 */	stw r0, 8(r1)
/* 803DB9CC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803DB9D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 803DB9D4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 803DB9D8  4B FB CA A5 */	bl mDemo_Get_OrderValue
/* 803DB9DC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803DB9E0  3C 00 43 30 */	lis r0, 0x4330
/* 803DB9E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803DB9E8  3C 80 80 64 */	lis r4, lit_1308@ha /* 0x80642FEC@ha */
/* 803DB9EC  90 61 00 14 */	stw r3, 0x14(r1)
/* 803DB9F0  38 60 00 00 */	li r3, 0
/* 803DB9F4  C8 24 2F EC */	lfd f1, lit_1308@l(r4)  /* 0x80642FEC@l */
/* 803DB9F8  38 80 00 07 */	li r4, 7
/* 803DB9FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 803DBA00  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803DBA04  EC 00 08 28 */	fsubs f0, f0, f1
/* 803DBA08  D0 1E 00 00 */	stfs f0, 0(r30)
/* 803DBA0C  4B FB CA 71 */	bl mDemo_Get_OrderValue
/* 803DBA10  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803DBA14  3C 00 43 30 */	lis r0, 0x4330
/* 803DBA18  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803DBA1C  3C 80 80 64 */	lis r4, lit_1308@ha /* 0x80642FEC@ha */
/* 803DBA20  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803DBA24  3C 60 80 64 */	lis r3, lit_1306@ha /* 0x80642FE8@ha */
/* 803DBA28  C8 44 2F EC */	lfd f2, lit_1308@l(r4)  /* 0x80642FEC@l */
/* 803DBA2C  39 61 00 30 */	addi r11, r1, 0x30
/* 803DBA30  90 01 00 18 */	stw r0, 0x18(r1)
/* 803DBA34  C0 03 2F E8 */	lfs f0, lit_1306@l(r3)  /* 0x80642FE8@l */
/* 803DBA38  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803DBA3C  EC 21 10 28 */	fsubs f1, f1, f2
/* 803DBA40  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DBA44  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803DBA48  4B CB F4 D9 */	bl func_8009AF20
/* 803DBA4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803DBA50  7C 08 03 A6 */	mtlr r0
/* 803DBA54  38 21 00 30 */	addi r1, r1, 0x30
/* 803DBA58  4E 80 00 20 */	blr 
