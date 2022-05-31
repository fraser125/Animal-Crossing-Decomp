lbl_8060BA48:
/* 8060BA48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060BA4C  7C 08 02 A6 */	mflr r0
/* 8060BA50  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060BA54  39 61 00 40 */	addi r11, r1, 0x40
/* 8060BA58  4B A8 F4 7D */	bl func_8009AED4
/* 8060BA5C  A8 03 00 00 */	lha r0, 0(r3)
/* 8060BA60  7C 7E 1B 78 */	mr r30, r3
/* 8060BA64  7C 9F 23 78 */	mr r31, r4
/* 8060BA68  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8060BA6C  40 82 01 40 */	bne lbl_8060BBAC
/* 8060BA70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060BA74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060BA78  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8060BA7C  38 03 FF FA */	addi r0, r3, -6
/* 8060BA80  28 00 00 2A */	cmplwi r0, 0x2a
/* 8060BA84  41 81 00 34 */	bgt lbl_8060BAB8
/* 8060BA88  3C 60 80 6D */	lis r3, lit_468@ha /* 0x806D2284@ha */
/* 8060BA8C  54 00 10 3A */	slwi r0, r0, 2
/* 8060BA90  38 63 22 84 */	addi r3, r3, lit_468@l /* 0x806D2284@l */
/* 8060BA94  7C 03 00 2E */	lwzx r0, r3, r0
/* 8060BA98  7C 09 03 A6 */	mtctr r0
/* 8060BA9C  4E 80 04 20 */	bctr 
lbl_8060BAA0:
/* 8060BAA0  3B A0 00 04 */	li r29, 4
/* 8060BAA4  48 00 00 18 */	b lbl_8060BABC
lbl_8060BAA8:
/* 8060BAA8  3B A0 00 06 */	li r29, 6
/* 8060BAAC  48 00 00 10 */	b lbl_8060BABC
lbl_8060BAB0:
/* 8060BAB0  3B A0 00 08 */	li r29, 8
/* 8060BAB4  48 00 00 08 */	b lbl_8060BABC
lbl_8060BAB8:
/* 8060BAB8  3B A0 FF FF */	li r29, -1
lbl_8060BABC:
/* 8060BABC  2C 1D FF FF */	cmpwi r29, -1
/* 8060BAC0  41 82 00 EC */	beq lbl_8060BBAC
/* 8060BAC4  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064BFA8@ha */
/* 8060BAC8  C0 03 BF A8 */	lfs f0, lit_463@l(r3)  /* 0x8064BFA8@l */
/* 8060BACC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060BAD0  4B A5 12 25 */	bl fqrand
/* 8060BAD4  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 8060BAD8  3C 00 43 30 */	lis r0, 0x4330
/* 8060BADC  90 61 00 24 */	stw r3, 0x24(r1)
/* 8060BAE0  3C 80 80 65 */	lis r4, lit_470@ha /* 0x8064BFBC@ha */
/* 8060BAE4  3C 60 80 65 */	lis r3, lit_464@ha /* 0x8064BFAC@ha */
/* 8060BAE8  C8 64 BF BC */	lfd f3, lit_470@l(r4)  /* 0x8064BFBC@l */
/* 8060BAEC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060BAF0  C0 43 BF AC */	lfs f2, lit_464@l(r3)  /* 0x8064BFAC@l */
/* 8060BAF4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8060BAF8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8060BAFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060BB00  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060BB04  EC 02 00 2A */	fadds f0, f2, f0
/* 8060BB08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8060BB0C  4B A5 11 E9 */	bl fqrand
/* 8060BB10  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064BFB8@ha */
/* 8060BB14  3C 80 80 65 */	lis r4, lit_466@ha /* 0x8064BFB4@ha */
/* 8060BB18  38 A3 BF B8 */	addi r5, r3, lit_467@l /* 0x8064BFB8@l */
/* 8060BB1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8060BB20  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060BB24  38 C4 BF B4 */	addi r6, r4, lit_466@l /* 0x8064BFB4@l */
/* 8060BB28  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064BFB0@ha */
/* 8060BB2C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8060BB30  EC 40 00 72 */	fmuls f2, f0, f1
/* 8060BB34  C0 26 00 00 */	lfs f1, 0(r6)
/* 8060BB38  38 A3 BF B0 */	addi r5, r3, lit_465@l /* 0x8064BFB0@l */
/* 8060BB3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060BB40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060BB44  90 81 00 08 */	stw r4, 8(r1)
/* 8060BB48  EC 21 10 2A */	fadds f1, f1, f2
/* 8060BB4C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060BB50  3C 63 00 02 */	addis r3, r3, 2
/* 8060BB54  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060BB58  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 8060BB5C  7F E7 FB 78 */	mr r7, r31
/* 8060BB60  EC 00 08 2A */	fadds f0, f0, f1
/* 8060BB64  38 81 00 08 */	addi r4, r1, 8
/* 8060BB68  38 60 00 78 */	li r3, 0x78
/* 8060BB6C  38 C0 00 00 */	li r6, 0
/* 8060BB70  39 40 00 00 */	li r10, 0
/* 8060BB74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060BB78  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8060BB7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060BB80  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 8060BB84  81 85 00 00 */	lwz r12, 0(r5)
/* 8060BB88  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8060BB8C  A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 8060BB90  88 BE 00 0E */	lbz r5, 0xe(r30)
/* 8060BB94  7C 09 07 34 */	extsh r9, r0
/* 8060BB98  7D 89 03 A6 */	mtctr r12
/* 8060BB9C  4E 80 04 21 */	bctrl 
/* 8060BBA0  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 8060BBA4  38 03 00 01 */	addi r0, r3, 1
/* 8060BBA8  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_8060BBAC:
/* 8060BBAC  39 61 00 40 */	addi r11, r1, 0x40
/* 8060BBB0  4B A8 F3 71 */	bl func_8009AF20
/* 8060BBB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060BBB8  7C 08 03 A6 */	mtlr r0
/* 8060BBBC  38 21 00 40 */	addi r1, r1, 0x40
/* 8060BBC0  4E 80 00 20 */	blr 
