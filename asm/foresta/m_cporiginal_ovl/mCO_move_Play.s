lbl_805CD904:
/* 805CD904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CD908  7C 08 02 A6 */	mflr r0
/* 805CD90C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD910  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD914  4B AC D5 C1 */	bl func_8009AED4
/* 805CD918  7C 9E 23 78 */	mr r30, r4
/* 805CD91C  7C 7D 1B 78 */	mr r29, r3
/* 805CD920  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 805CD924  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CD928  2C 00 00 00 */	cmpwi r0, 0
/* 805CD92C  83 E6 09 DC */	lwz r31, 0x9dc(r6)
/* 805CD930  40 82 00 3C */	bne lbl_805CD96C
/* 805CD934  3C 80 80 65 */	lis r4, lit_651@ha /* 0x8064B00C@ha */
/* 805CD938  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805CD93C  38 A4 B0 0C */	addi r5, r4, lit_651@l /* 0x8064B00C@l */
/* 805CD940  38 80 00 12 */	li r4, 0x12
/* 805CD944  C0 25 00 00 */	lfs f1, 0(r5)
/* 805CD948  38 A0 00 00 */	li r5, 0
/* 805CD94C  81 86 02 E4 */	lwz r12, 0x2e4(r6)
/* 805CD950  38 C0 00 00 */	li r6, 0
/* 805CD954  FC 40 08 90 */	fmr f2, f1
/* 805CD958  7D 89 03 A6 */	mtctr r12
/* 805CD95C  4E 80 04 21 */	bctrl 
/* 805CD960  38 00 00 01 */	li r0, 1
/* 805CD964  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 805CD968  48 00 01 10 */	b lbl_805CDA78
lbl_805CD96C:
/* 805CD96C  A8 BF 00 0C */	lha r5, 0xc(r31)
/* 805CD970  2C 05 00 00 */	cmpwi r5, 0
/* 805CD974  41 82 00 F8 */	beq lbl_805CDA6C
/* 805CD978  38 65 FF FF */	addi r3, r5, -1
/* 805CD97C  3C 00 43 30 */	lis r0, 0x4330
/* 805CD980  B0 7F 00 0C */	sth r3, 0xc(r31)
/* 805CD984  3C 60 80 65 */	lis r3, lit_655@ha /* 0x8064B01C@ha */
/* 805CD988  3C A0 80 65 */	lis r5, lit_653@ha /* 0x8064B014@ha */
/* 805CD98C  C8 23 B0 1C */	lfd f1, lit_655@l(r3)  /* 0x8064B01C@l */
/* 805CD990  A8 9F 00 0C */	lha r4, 0xc(r31)
/* 805CD994  90 01 00 08 */	stw r0, 8(r1)
/* 805CD998  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805CD99C  C0 45 B0 14 */	lfs f2, lit_653@l(r5)  /* 0x8064B014@l */
/* 805CD9A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CD9A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CD9A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CD9AC  EC 22 00 32 */	fmuls f1, f2, f0
/* 805CD9B0  4B E3 AE CD */	bl sinf_table
/* 805CD9B4  3C 60 80 65 */	lis r3, lit_652@ha /* 0x8064B010@ha */
/* 805CD9B8  C0 03 B0 10 */	lfs f0, lit_652@l(r3)  /* 0x8064B010@l */
/* 805CD9BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805CD9C0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805CD9C4  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 805CD9C8  2C 00 00 14 */	cmpwi r0, 0x14
/* 805CD9CC  40 82 00 58 */	bne lbl_805CDA24
/* 805CD9D0  38 00 00 08 */	li r0, 8
/* 805CD9D4  38 9F 00 04 */	addi r4, r31, 4
/* 805CD9D8  38 A0 00 00 */	li r5, 0
/* 805CD9DC  7C 09 03 A6 */	mtctr r0
lbl_805CD9E0:
/* 805CD9E0  88 64 00 00 */	lbz r3, 0(r4)
/* 805CD9E4  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 805CD9E8  7C 03 00 40 */	cmplw r3, r0
/* 805CD9EC  41 82 00 10 */	beq lbl_805CD9FC
/* 805CD9F0  38 A5 00 01 */	addi r5, r5, 1
/* 805CD9F4  38 84 00 01 */	addi r4, r4, 1
/* 805CD9F8  42 00 FF E8 */	bdnz lbl_805CD9E0
lbl_805CD9FC:
/* 805CD9FC  7C A9 03 A6 */	mtctr r5
/* 805CDA00  2C 05 00 00 */	cmpwi r5, 0
/* 805CDA04  40 81 00 14 */	ble lbl_805CDA18
lbl_805CDA08:
/* 805CDA08  88 04 FF FF */	lbz r0, -1(r4)
/* 805CDA0C  98 04 00 00 */	stb r0, 0(r4)
/* 805CDA10  38 84 FF FF */	addi r4, r4, -1
/* 805CDA14  42 00 FF F4 */	bdnz lbl_805CDA08
lbl_805CDA18:
/* 805CDA18  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 805CDA1C  98 1F 00 04 */	stb r0, 4(r31)
/* 805CDA20  48 00 00 58 */	b lbl_805CDA78
lbl_805CDA24:
/* 805CDA24  7C 00 07 35 */	extsh. r0, r0
/* 805CDA28  40 82 00 50 */	bne lbl_805CDA78
/* 805CDA2C  3C 80 80 65 */	lis r4, lit_651@ha /* 0x8064B00C@ha */
/* 805CDA30  7F A3 EB 78 */	mr r3, r29
/* 805CDA34  C0 04 B0 0C */	lfs f0, lit_651@l(r4)  /* 0x8064B00C@l */
/* 805CDA38  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805CDA3C  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805CDA40  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805CDA44  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805CDA48  7D 89 03 A6 */	mtctr r12
/* 805CDA4C  4E 80 04 21 */	bctrl 
/* 805CDA50  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805CDA54  7F A3 EB 78 */	mr r3, r29
/* 805CDA58  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805CDA5C  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805CDA60  7D 89 03 A6 */	mtctr r12
/* 805CDA64  4E 80 04 21 */	bctrl 
/* 805CDA68  48 00 00 10 */	b lbl_805CDA78
lbl_805CDA6C:
/* 805CDA6C  81 86 09 1C */	lwz r12, 0x91c(r6)
/* 805CDA70  7D 89 03 A6 */	mtctr r12
/* 805CDA74  4E 80 04 21 */	bctrl 
lbl_805CDA78:
/* 805CDA78  39 61 00 20 */	addi r11, r1, 0x20
/* 805CDA7C  4B AC D4 A5 */	bl func_8009AF20
/* 805CDA80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CDA84  7C 08 03 A6 */	mtlr r0
/* 805CDA88  38 21 00 20 */	addi r1, r1, 0x20
/* 805CDA8C  4E 80 00 20 */	blr 
