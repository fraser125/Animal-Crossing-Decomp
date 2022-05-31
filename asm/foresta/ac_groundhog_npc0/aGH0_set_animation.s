lbl_80590A60:
/* 80590A60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80590A64  7C 08 02 A6 */	mflr r0
/* 80590A68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80590A6C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80590A70  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80590A74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80590A78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80590A7C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80590A80  7C 9F 23 78 */	mr r31, r4
/* 80590A84  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80590A88  3C C0 80 6C */	lis r6, animeNo@ha /* 0x806C2810@ha */
/* 80590A8C  3C 84 00 02 */	addis r4, r4, 2
/* 80590A90  57 E0 10 3A */	slwi r0, r31, 2
/* 80590A94  80 A4 60 4C */	lwz r5, 0x604c(r4)
/* 80590A98  38 86 28 10 */	addi r4, r6, animeNo@l /* 0x806C2810@l */
/* 80590A9C  7C 7E 1B 78 */	mr r30, r3
/* 80590AA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80590AA4  81 85 01 14 */	lwz r12, 0x114(r5)
/* 80590AA8  38 A0 00 00 */	li r5, 0
/* 80590AAC  7D 89 03 A6 */	mtctr r12
/* 80590AB0  4E 80 04 21 */	bctrl 
/* 80590AB4  80 1E 09 AC */	lwz r0, 0x9ac(r30)
/* 80590AB8  2C 00 00 00 */	cmpwi r0, 0
/* 80590ABC  40 82 00 70 */	bne lbl_80590B2C
/* 80590AC0  2C 1F 00 00 */	cmpwi r31, 0
/* 80590AC4  40 82 00 68 */	bne lbl_80590B2C
/* 80590AC8  C0 5E 01 B0 */	lfs f2, 0x1b0(r30)
/* 80590ACC  3C 60 80 65 */	lis r3, lit_495@ha /* 0x80649C7C@ha */
/* 80590AD0  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 80590AD4  C0 03 9C 7C */	lfs f0, lit_495@l(r3)  /* 0x80649C7C@l */
/* 80590AD8  EF E2 08 28 */	fsubs f31, f2, f1
/* 80590ADC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80590AE0  40 81 00 4C */	ble lbl_80590B2C
/* 80590AE4  4B AC C2 11 */	bl fqrand
/* 80590AE8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80590AEC  3C 60 80 65 */	lis r3, lit_472@ha /* 0x80649C74@ha */
/* 80590AF0  3C 00 43 30 */	lis r0, 0x4330
/* 80590AF4  C8 43 9C 74 */	lfd f2, lit_472@l(r3)  /* 0x80649C74@l */
/* 80590AF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80590AFC  38 00 00 01 */	li r0, 1
/* 80590B00  FC 20 08 1E */	fctiwz f1, f1
/* 80590B04  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 80590B08  D8 21 00 08 */	stfd f1, 8(r1)
/* 80590B0C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80590B10  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80590B14  90 61 00 14 */	stw r3, 0x14(r1)
/* 80590B18  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80590B1C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80590B20  EC 00 08 2A */	fadds f0, f0, f1
/* 80590B24  D0 1E 01 B8 */	stfs f0, 0x1b8(r30)
/* 80590B28  90 1E 09 AC */	stw r0, 0x9ac(r30)
lbl_80590B2C:
/* 80590B2C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80590B30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80590B34  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80590B38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80590B3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80590B40  7C 08 03 A6 */	mtlr r0
/* 80590B44  38 21 00 30 */	addi r1, r1, 0x30
/* 80590B48  4E 80 00 20 */	blr 
