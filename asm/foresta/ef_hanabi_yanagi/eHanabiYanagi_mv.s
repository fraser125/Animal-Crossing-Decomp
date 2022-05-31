lbl_8060F824:
/* 8060F824  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060F828  7C 08 02 A6 */	mflr r0
/* 8060F82C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8060F830  39 61 00 70 */	addi r11, r1, 0x70
/* 8060F834  4B A8 B6 9D */	bl func_8009AED0
/* 8060F838  7C 7C 1B 78 */	mr r28, r3
/* 8060F83C  7C 9D 23 78 */	mr r29, r4
/* 8060F840  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060F844  A8 9C 00 00 */	lha r4, 0(r28)
/* 8060F848  38 03 03 00 */	addi r0, r3, 0x300
/* 8060F84C  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 8060F850  20 04 00 6E */	subfic r0, r4, 0x6e
/* 8060F854  7C 1E 07 34 */	extsh r30, r0
/* 8060F858  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060F85C  38 03 01 00 */	addi r0, r3, 0x100
/* 8060F860  B0 1C 00 4E */	sth r0, 0x4e(r28)
/* 8060F864  A8 7C 00 50 */	lha r3, 0x50(r28)
/* 8060F868  38 03 00 80 */	addi r0, r3, 0x80
/* 8060F86C  B0 1C 00 50 */	sth r0, 0x50(r28)
/* 8060F870  A8 7C 00 50 */	lha r3, 0x50(r28)
/* 8060F874  4B DA B2 7D */	bl sin_s
/* 8060F878  3C 60 80 65 */	lis r3, lit_417@ha /* 0x8064C284@ha */
/* 8060F87C  C0 03 C2 84 */	lfs f0, lit_417@l(r3)  /* 0x8064C284@l */
/* 8060F880  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060F884  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 8060F888  A8 1C 00 50 */	lha r0, 0x50(r28)
/* 8060F88C  7C 00 00 D0 */	neg r0, r0
/* 8060F890  7C 03 07 34 */	extsh r3, r0
/* 8060F894  4B DA B2 09 */	bl cos_s
/* 8060F898  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064C28C@ha */
/* 8060F89C  3C 80 80 65 */	lis r4, lit_419@ha /* 0x8064C294@ha */
/* 8060F8A0  38 A3 C2 8C */	addi r5, r3, lit_418@l /* 0x8064C28C@l */
/* 8060F8A4  C8 C4 C2 94 */	lfd f6, lit_419@l(r4)  /* 0x8064C294@l */
/* 8060F8A8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8060F8AC  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064C29C@ha */
/* 8060F8B0  38 C3 C2 9C */	addi r6, r3, lit_420@l /* 0x8064C29C@l */
/* 8060F8B4  FC 60 38 34 */	frsqrte f3, f7
/* 8060F8B8  3C 60 80 65 */	lis r3, lit_417@ha /* 0x8064C284@ha */
/* 8060F8BC  38 83 C2 84 */	addi r4, r3, lit_417@l /* 0x8064C284@l */
/* 8060F8C0  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8060F8C4  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060F8C8  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C2A8@ha */
/* 8060F8CC  FC 03 00 F2 */	fmul f0, f3, f3
/* 8060F8D0  38 A3 C2 A8 */	addi r5, r3, lit_422@l /* 0x8064C2A8@l */
/* 8060F8D4  3C 80 80 65 */	lis r4, lit_421@ha /* 0x8064C2A4@ha */
/* 8060F8D8  3C 60 80 65 */	lis r3, lit_423@ha /* 0x8064C2AC@ha */
/* 8060F8DC  EC 42 00 72 */	fmuls f2, f2, f1
/* 8060F8E0  38 C4 C2 A4 */	addi r6, r4, lit_421@l /* 0x8064C2A4@l */
/* 8060F8E4  FC 27 00 32 */	fmul f1, f7, f0
/* 8060F8E8  D0 5C 00 48 */	stfs f2, 0x48(r28)
/* 8060F8EC  38 83 C2 AC */	addi r4, r3, lit_423@l /* 0x8064C2AC@l */
/* 8060F8F0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060F8F4  FC 86 00 F2 */	fmul f4, f6, f3
/* 8060F8F8  C0 64 00 00 */	lfs f3, 0(r4)
/* 8060F8FC  FC 45 08 28 */	fsub f2, f5, f1
/* 8060F900  C0 26 00 00 */	lfs f1, 0(r6)
/* 8060F904  38 7C 00 34 */	addi r3, r28, 0x34
/* 8060F908  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060F90C  FC 44 01 32 */	fmul f2, f4, f4
/* 8060F910  FC 86 01 32 */	fmul f4, f6, f4
/* 8060F914  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060F918  FC 45 10 28 */	fsub f2, f5, f2
/* 8060F91C  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060F920  FC 44 01 32 */	fmul f2, f4, f4
/* 8060F924  FC 86 01 32 */	fmul f4, f6, f4
/* 8060F928  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060F92C  FC 45 10 28 */	fsub f2, f5, f2
/* 8060F930  FC 44 00 B2 */	fmul f2, f4, f2
/* 8060F934  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060F938  FC 40 10 18 */	frsp f2, f2
/* 8060F93C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8060F940  C0 41 00 08 */	lfs f2, 8(r1)
/* 8060F944  EC 40 10 28 */	fsubs f2, f0, f2
/* 8060F948  4B DA B9 4D */	bl add_calc2
/* 8060F94C  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8060F950  40 82 01 3C */	bne lbl_8060FA8C
/* 8060F954  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8060F958  3C 60 80 6D */	lis r3, yanagi_light@ha /* 0x806D2A00@ha */
/* 8060F95C  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 8060F960  38 83 2A 00 */	addi r4, r3, yanagi_light@l /* 0x806D2A00@l */
/* 8060F964  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060F968  3C A0 80 65 */	lis r5, lit_417@ha /* 0x8064C284@ha */
/* 8060F96C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060F970  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060F974  80 04 00 00 */	lwz r0, 0(r4)
/* 8060F978  3F E3 00 02 */	addis r31, r3, 2
/* 8060F97C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8060F980  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C280@ha */
/* 8060F984  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060F988  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C2B0@ha */
/* 8060F98C  80 DC 00 18 */	lwz r6, 0x18(r28)
/* 8060F990  39 45 C2 84 */	addi r10, r5, lit_417@l /* 0x8064C284@l */
/* 8060F994  39 24 C2 80 */	addi r9, r4, lit_385@l /* 0x8064C280@l */
/* 8060F998  39 03 C2 B0 */	addi r8, r3, lit_424@l /* 0x8064C2B0@l */
/* 8060F99C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8060F9A0  7F A6 EB 78 */	mr r6, r29
/* 8060F9A4  38 61 00 14 */	addi r3, r1, 0x14
/* 8060F9A8  38 81 00 10 */	addi r4, r1, 0x10
/* 8060F9AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060F9B0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8060F9B4  C0 2A 00 00 */	lfs f1, 0(r10)
/* 8060F9B8  81 87 00 34 */	lwz r12, 0x34(r7)
/* 8060F9BC  C0 49 00 00 */	lfs f2, 0(r9)
/* 8060F9C0  C0 68 00 00 */	lfs f3, 0(r8)
/* 8060F9C4  7D 89 03 A6 */	mtctr r12
/* 8060F9C8  4E 80 04 21 */	bctrl 
/* 8060F9CC  A8 1C 00 06 */	lha r0, 6(r28)
/* 8060F9D0  2C 00 00 00 */	cmpwi r0, 0
/* 8060F9D4  41 82 00 90 */	beq lbl_8060FA64
/* 8060F9D8  88 C1 00 14 */	lbz r6, 0x14(r1)
/* 8060F9DC  3C 80 43 30 */	lis r4, 0x4330
/* 8060F9E0  88 61 00 15 */	lbz r3, 0x15(r1)
/* 8060F9E4  3C A0 80 65 */	lis r5, lit_428@ha /* 0x8064C2BC@ha */
/* 8060F9E8  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8060F9EC  3C C0 80 65 */	lis r6, lit_425@ha /* 0x8064C2B4@ha */
/* 8060F9F0  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8060F9F4  90 81 00 30 */	stw r4, 0x30(r1)
/* 8060F9F8  C8 65 C2 BC */	lfd f3, lit_428@l(r5)  /* 0x8064C2BC@l */
/* 8060F9FC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8060FA00  90 61 00 44 */	stw r3, 0x44(r1)
/* 8060FA04  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060FA08  C0 86 C2 B4 */	lfs f4, lit_425@l(r6)  /* 0x8064C2B4@l */
/* 8060FA0C  90 81 00 40 */	stw r4, 0x40(r1)
/* 8060FA10  EC 44 00 72 */	fmuls f2, f4, f1
/* 8060FA14  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8060FA18  90 01 00 54 */	stw r0, 0x54(r1)
/* 8060FA1C  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060FA20  90 81 00 50 */	stw r4, 0x50(r1)
/* 8060FA24  FC 40 10 1E */	fctiwz f2, f2
/* 8060FA28  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8060FA2C  EC 24 00 72 */	fmuls f1, f4, f1
/* 8060FA30  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8060FA34  EC 00 18 28 */	fsubs f0, f0, f3
/* 8060FA38  FC 20 08 1E */	fctiwz f1, f1
/* 8060FA3C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8060FA40  EC 04 00 32 */	fmuls f0, f4, f0
/* 8060FA44  98 01 00 14 */	stb r0, 0x14(r1)
/* 8060FA48  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8060FA4C  FC 00 00 1E */	fctiwz f0, f0
/* 8060FA50  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8060FA54  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8060FA58  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8060FA5C  98 61 00 15 */	stb r3, 0x15(r1)
/* 8060FA60  98 01 00 16 */	stb r0, 0x16(r1)
lbl_8060FA64:
/* 8060FA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060FA68  38 61 00 0C */	addi r3, r1, 0xc
/* 8060FA6C  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060FA70  38 80 00 14 */	li r4, 0x14
/* 8060FA74  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060FA78  38 A0 00 32 */	li r5, 0x32
/* 8060FA7C  38 C0 00 01 */	li r6, 1
/* 8060FA80  81 87 00 30 */	lwz r12, 0x30(r7)
/* 8060FA84  7D 89 03 A6 */	mtctr r12
/* 8060FA88  4E 80 04 21 */	bctrl 
lbl_8060FA8C:
/* 8060FA8C  2C 1E 00 48 */	cmpwi r30, 0x48
/* 8060FA90  40 82 00 3C */	bne lbl_8060FACC
/* 8060FA94  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8060FA98  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064C2B8@ha */
/* 8060FA9C  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8060FAA0  38 81 00 24 */	addi r4, r1, 0x24
/* 8060FAA4  C0 03 C2 B8 */	lfs f0, lit_426@l(r3)  /* 0x8064C2B8@l */
/* 8060FAA8  38 60 21 12 */	li r3, 0x2112
/* 8060FAAC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060FAB0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8060FAB4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8060FAB8  EC 01 00 2A */	fadds f0, f1, f0
/* 8060FABC  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8060FAC0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8060FAC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060FAC8  48 01 E4 E1 */	bl sAdo_OngenTrgStart
lbl_8060FACC:
/* 8060FACC  39 61 00 70 */	addi r11, r1, 0x70
/* 8060FAD0  4B A8 B4 4D */	bl func_8009AF1C
/* 8060FAD4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060FAD8  7C 08 03 A6 */	mtlr r0
/* 8060FADC  38 21 00 70 */	addi r1, r1, 0x70
/* 8060FAE0  4E 80 00 20 */	blr 
