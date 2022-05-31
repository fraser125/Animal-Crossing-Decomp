lbl_8060CAFC:
/* 8060CAFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060CB00  7C 08 02 A6 */	mflr r0
/* 8060CB04  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060CB08  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060CB0C  7C 7F 1B 78 */	mr r31, r3
/* 8060CB10  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8060CB14  A8 63 00 00 */	lha r3, 0(r3)
/* 8060CB18  2C 03 00 A0 */	cmpwi r3, 0xa0
/* 8060CB1C  40 81 00 4C */	ble lbl_8060CB68
/* 8060CB20  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060CB24  3C C0 80 65 */	lis r6, lit_427@ha /* 0x8064C05C@ha */
/* 8060CB28  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8060CB2C  3C A0 80 65 */	lis r5, lit_428@ha /* 0x8064C060@ha */
/* 8060CB30  3C 84 00 02 */	addis r4, r4, 2
/* 8060CB34  C0 45 C0 60 */	lfs f2, lit_428@l(r5)  /* 0x8064C060@l */
/* 8060CB38  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 8060CB3C  38 A0 00 BE */	li r5, 0xbe
/* 8060CB40  C0 26 C0 5C */	lfs f1, lit_427@l(r6)  /* 0x8064C05C@l */
/* 8060CB44  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8060CB48  38 80 00 A0 */	li r4, 0xa0
/* 8060CB4C  7D 89 03 A6 */	mtctr r12
/* 8060CB50  4E 80 04 21 */	bctrl 
/* 8060CB54  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060CB58  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8060CB5C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8060CB60  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8060CB64  48 00 00 7C */	b lbl_8060CBE0
lbl_8060CB68:
/* 8060CB68  2C 03 00 3C */	cmpwi r3, 0x3c
/* 8060CB6C  40 80 00 74 */	bge lbl_8060CBE0
/* 8060CB70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060CB74  3C C0 80 65 */	lis r6, lit_428@ha /* 0x8064C060@ha */
/* 8060CB78  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8060CB7C  3C A0 80 65 */	lis r5, lit_427@ha /* 0x8064C05C@ha */
/* 8060CB80  3F C4 00 02 */	addis r30, r4, 2
/* 8060CB84  C0 45 C0 5C */	lfs f2, lit_427@l(r5)  /* 0x8064C05C@l */
/* 8060CB88  80 9E 60 9C */	lwz r4, 0x609c(r30)
/* 8060CB8C  38 A0 00 3C */	li r5, 0x3c
/* 8060CB90  C0 26 C0 60 */	lfs f1, lit_428@l(r6)  /* 0x8064C060@l */
/* 8060CB94  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8060CB98  38 80 00 00 */	li r4, 0
/* 8060CB9C  7D 89 03 A6 */	mtctr r12
/* 8060CBA0  4E 80 04 21 */	bctrl 
/* 8060CBA4  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060CBA8  3C C0 80 65 */	lis r6, lit_429@ha /* 0x8064C064@ha */
/* 8060CBAC  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064C05C@ha */
/* 8060CBB0  38 80 00 00 */	li r4, 0
/* 8060CBB4  80 BE 60 9C */	lwz r5, 0x609c(r30)
/* 8060CBB8  38 E6 C0 64 */	addi r7, r6, lit_429@l /* 0x8064C064@l */
/* 8060CBBC  38 C3 C0 5C */	addi r6, r3, lit_427@l /* 0x8064C05C@l */
/* 8060CBC0  A8 7F 00 00 */	lha r3, 0(r31)
/* 8060CBC4  81 85 00 14 */	lwz r12, 0x14(r5)
/* 8060CBC8  38 A0 00 3C */	li r5, 0x3c
/* 8060CBCC  C0 27 00 00 */	lfs f1, 0(r7)
/* 8060CBD0  C0 46 00 00 */	lfs f2, 0(r6)
/* 8060CBD4  7D 89 03 A6 */	mtctr r12
/* 8060CBD8  4E 80 04 21 */	bctrl 
/* 8060CBDC  D0 3F 00 38 */	stfs f1, 0x38(r31)
lbl_8060CBE0:
/* 8060CBE0  A8 1F 00 00 */	lha r0, 0(r31)
/* 8060CBE4  2C 00 00 50 */	cmpwi r0, 0x50
/* 8060CBE8  40 80 01 24 */	bge lbl_8060CD0C
/* 8060CBEC  3C 60 80 65 */	lis r3, lit_430@ha /* 0x8064C06C@ha */
/* 8060CBF0  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064C074@ha */
/* 8060CBF4  38 A3 C0 6C */	addi r5, r3, lit_430@l /* 0x8064C06C@l */
/* 8060CBF8  C8 A4 C0 74 */	lfd f5, lit_431@l(r4)  /* 0x8064C074@l */
/* 8060CBFC  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8060CC00  3C 60 80 65 */	lis r3, lit_432@ha /* 0x8064C07C@ha */
/* 8060CC04  38 A3 C0 7C */	addi r5, r3, lit_432@l /* 0x8064C07C@l */
/* 8060CC08  FC 60 30 34 */	frsqrte f3, f6
/* 8060CC0C  3C 60 80 65 */	lis r3, lit_433@ha /* 0x8064C084@ha */
/* 8060CC10  38 83 C0 84 */	addi r4, r3, lit_433@l /* 0x8064C084@l */
/* 8060CC14  C8 85 00 00 */	lfd f4, 0(r5)
/* 8060CC18  3C 60 80 65 */	lis r3, lit_434@ha /* 0x8064C088@ha */
/* 8060CC1C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8060CC20  FC 23 00 F2 */	fmul f1, f3, f3
/* 8060CC24  C0 43 C0 88 */	lfs f2, lit_434@l(r3)  /* 0x8064C088@l */
/* 8060CC28  38 7F 00 44 */	addi r3, r31, 0x44
/* 8060CC2C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8060CC30  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CC34  FC 24 08 28 */	fsub f1, f4, f1
/* 8060CC38  FC 63 00 72 */	fmul f3, f3, f1
/* 8060CC3C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8060CC40  FC 65 00 F2 */	fmul f3, f5, f3
/* 8060CC44  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CC48  FC 24 08 28 */	fsub f1, f4, f1
/* 8060CC4C  FC 63 00 72 */	fmul f3, f3, f1
/* 8060CC50  FC 23 00 F2 */	fmul f1, f3, f3
/* 8060CC54  FC 65 00 F2 */	fmul f3, f5, f3
/* 8060CC58  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CC5C  FC 24 08 28 */	fsub f1, f4, f1
/* 8060CC60  FC 23 00 72 */	fmul f1, f3, f1
/* 8060CC64  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CC68  FC 20 08 18 */	frsp f1, f1
/* 8060CC6C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8060CC70  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8060CC74  EC 20 08 28 */	fsubs f1, f0, f1
/* 8060CC78  4B DA E6 61 */	bl add_calc0
/* 8060CC7C  3C 60 80 65 */	lis r3, lit_430@ha /* 0x8064C06C@ha */
/* 8060CC80  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064C074@ha */
/* 8060CC84  38 A3 C0 6C */	addi r5, r3, lit_430@l /* 0x8064C06C@l */
/* 8060CC88  C8 A4 C0 74 */	lfd f5, lit_431@l(r4)  /* 0x8064C074@l */
/* 8060CC8C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8060CC90  3C 60 80 65 */	lis r3, lit_432@ha /* 0x8064C07C@ha */
/* 8060CC94  38 A3 C0 7C */	addi r5, r3, lit_432@l /* 0x8064C07C@l */
/* 8060CC98  FC 60 30 34 */	frsqrte f3, f6
/* 8060CC9C  3C 60 80 65 */	lis r3, lit_433@ha /* 0x8064C084@ha */
/* 8060CCA0  38 83 C0 84 */	addi r4, r3, lit_433@l /* 0x8064C084@l */
/* 8060CCA4  C8 85 00 00 */	lfd f4, 0(r5)
/* 8060CCA8  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064C08C@ha */
/* 8060CCAC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8060CCB0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8060CCB4  C0 43 C0 8C */	lfs f2, lit_435@l(r3)  /* 0x8064C08C@l */
/* 8060CCB8  38 7F 00 48 */	addi r3, r31, 0x48
/* 8060CCBC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8060CCC0  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CCC4  FC 24 08 28 */	fsub f1, f4, f1
/* 8060CCC8  FC 63 00 72 */	fmul f3, f3, f1
/* 8060CCCC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8060CCD0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8060CCD4  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CCD8  FC 24 08 28 */	fsub f1, f4, f1
/* 8060CCDC  FC 63 00 72 */	fmul f3, f3, f1
/* 8060CCE0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8060CCE4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8060CCE8  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CCEC  FC 24 08 28 */	fsub f1, f4, f1
/* 8060CCF0  FC 23 00 72 */	fmul f1, f3, f1
/* 8060CCF4  FC 26 00 72 */	fmul f1, f6, f1
/* 8060CCF8  FC 20 08 18 */	frsp f1, f1
/* 8060CCFC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8060CD00  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8060CD04  EC 20 08 28 */	fsubs f1, f0, f1
/* 8060CD08  4B DA E5 D1 */	bl add_calc0
lbl_8060CD0C:
/* 8060CD0C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8060CD10  38 9F 00 28 */	addi r4, r31, 0x28
/* 8060CD14  7C 65 1B 78 */	mr r5, r3
/* 8060CD18  4B DA E2 2D */	bl xyz_t_add
/* 8060CD1C  38 7F 00 10 */	addi r3, r31, 0x10
/* 8060CD20  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8060CD24  7C 65 1B 78 */	mr r5, r3
/* 8060CD28  4B DA E2 1D */	bl xyz_t_add
/* 8060CD2C  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064C094@ha */
/* 8060CD30  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064C074@ha */
/* 8060CD34  38 A3 C0 94 */	addi r5, r3, lit_436@l /* 0x8064C094@l */
/* 8060CD38  C8 84 C0 74 */	lfd f4, lit_431@l(r4)  /* 0x8064C074@l */
/* 8060CD3C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8060CD40  3C 60 80 65 */	lis r3, lit_432@ha /* 0x8064C07C@ha */
/* 8060CD44  C8 63 C0 7C */	lfd f3, lit_432@l(r3)  /* 0x8064C07C@l */
/* 8060CD48  FC 40 28 34 */	frsqrte f2, f5
/* 8060CD4C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8060CD50  FC 22 00 B2 */	fmul f1, f2, f2
/* 8060CD54  FC 44 00 B2 */	fmul f2, f4, f2
/* 8060CD58  FC 25 00 72 */	fmul f1, f5, f1
/* 8060CD5C  FC 23 08 28 */	fsub f1, f3, f1
/* 8060CD60  FC 42 00 72 */	fmul f2, f2, f1
/* 8060CD64  FC 22 00 B2 */	fmul f1, f2, f2
/* 8060CD68  FC 44 00 B2 */	fmul f2, f4, f2
/* 8060CD6C  FC 25 00 72 */	fmul f1, f5, f1
/* 8060CD70  FC 23 08 28 */	fsub f1, f3, f1
/* 8060CD74  FC 42 00 72 */	fmul f2, f2, f1
/* 8060CD78  FC 22 00 B2 */	fmul f1, f2, f2
/* 8060CD7C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8060CD80  FC 25 00 72 */	fmul f1, f5, f1
/* 8060CD84  FC 23 08 28 */	fsub f1, f3, f1
/* 8060CD88  FC 22 00 72 */	fmul f1, f2, f1
/* 8060CD8C  FC 25 00 72 */	fmul f1, f5, f1
/* 8060CD90  FC 20 08 18 */	frsp f1, f1
/* 8060CD94  D0 21 00 08 */	stfs f1, 8(r1)
/* 8060CD98  C0 21 00 08 */	lfs f1, 8(r1)
/* 8060CD9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060CDA0  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8060CDA4  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 8060CDA8  38 03 03 E8 */	addi r0, r3, 0x3e8
/* 8060CDAC  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8060CDB0  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 8060CDB4  4B DA DD 3D */	bl sin_s
/* 8060CDB8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8060CDBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060CDC0  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8060CDC4  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 8060CDC8  4B DA DC D5 */	bl cos_s
/* 8060CDCC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8060CDD0  FC 00 00 50 */	fneg f0, f0
/* 8060CDD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060CDD8  FC 00 00 1E */	fctiwz f0, f0
/* 8060CDDC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8060CDE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8060CDE4  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060CDE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060CDEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8060CDF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060CDF4  7C 08 03 A6 */	mtlr r0
/* 8060CDF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8060CDFC  4E 80 00 20 */	blr 
