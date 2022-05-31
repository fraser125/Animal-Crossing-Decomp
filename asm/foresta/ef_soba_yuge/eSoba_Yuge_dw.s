lbl_8061E9D0:
/* 8061E9D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8061E9D4  7C 08 02 A6 */	mflr r0
/* 8061E9D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8061E9DC  39 61 00 60 */	addi r11, r1, 0x60
/* 8061E9E0  4B A7 C4 E5 */	bl func_8009AEC4
/* 8061E9E4  7C 79 1B 78 */	mr r25, r3
/* 8061E9E8  3C 60 80 6D */	lis r3, data_806D35C0@ha /* 0x806D35C0@ha */
/* 8061E9EC  A8 19 00 00 */	lha r0, 0(r25)
/* 8061E9F0  7C 9A 23 78 */	mr r26, r4
/* 8061E9F4  3B A3 35 C0 */	addi r29, r3, data_806D35C0@l /* 0x806D35C0@l */
/* 8061E9F8  20 00 00 2C */	subfic r0, r0, 0x2c
/* 8061E9FC  7C 1F 07 34 */	extsh r31, r0
/* 8061EA00  7F E3 0E 71 */	srawi. r3, r31, 1
/* 8061EA04  40 80 00 0C */	bge lbl_8061EA10
/* 8061EA08  38 00 00 00 */	li r0, 0
/* 8061EA0C  48 00 00 14 */	b lbl_8061EA20
lbl_8061EA10:
/* 8061EA10  2C 03 00 16 */	cmpwi r3, 0x16
/* 8061EA14  38 00 00 16 */	li r0, 0x16
/* 8061EA18  41 81 00 08 */	bgt lbl_8061EA20
/* 8061EA1C  7C 60 1B 78 */	mr r0, r3
lbl_8061EA20:
/* 8061EA20  7C 1E 07 34 */	extsh r30, r0
/* 8061EA24  A8 19 00 08 */	lha r0, 8(r25)
/* 8061EA28  57 C5 08 3C */	slwi r5, r30, 1
/* 8061EA2C  38 9D 00 28 */	addi r4, r29, 0x28
/* 8061EA30  7C 64 2A 14 */	add r3, r4, r5
/* 8061EA34  2C 00 00 00 */	cmpwi r0, 0
/* 8061EA38  7F 84 28 AE */	lbzx r28, r4, r5
/* 8061EA3C  8B 63 00 01 */	lbz r27, 1(r3)
/* 8061EA40  40 82 00 B0 */	bne lbl_8061EAF0
/* 8061EA44  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061EA48  3C A0 43 30 */	lis r5, 0x4330
/* 8061EA4C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061EA50  3C C0 80 65 */	lis r6, lit_384@ha /* 0x8064CC0C@ha */
/* 8061EA54  81 24 00 00 */	lwz r9, 0(r4)
/* 8061EA58  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC14@ha */
/* 8061EA5C  38 E3 CC 14 */	addi r7, r3, lit_387@l /* 0x8064CC14@l */
/* 8061EA60  39 06 CC 0C */	addi r8, r6, lit_384@l /* 0x8064CC0C@l */
/* 8061EA64  A8 89 1B 82 */	lha r4, 0x1b82(r9)
/* 8061EA68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061EA6C  A8 09 1B 84 */	lha r0, 0x1b84(r9)
/* 8061EA70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061EA74  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8061EA78  3D 20 80 65 */	lis r9, lit_383@ha /* 0x8064CC08@ha */
/* 8061EA7C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8061EA80  3C C3 00 02 */	addis r6, r3, 2
/* 8061EA84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061EA88  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 8061EA8C  90 A1 00 08 */	stw r5, 8(r1)
/* 8061EA90  3C 60 80 65 */	lis r3, lit_449@ha /* 0x8064CC20@ha */
/* 8061EA94  C8 47 00 00 */	lfd f2, 0(r7)
/* 8061EA98  38 E3 CC 20 */	addi r7, r3, lit_449@l /* 0x8064CC20@l */
/* 8061EA9C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061EAA0  7F E3 FB 78 */	mr r3, r31
/* 8061EAA4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8061EAA8  38 80 00 00 */	li r4, 0
/* 8061EAAC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8061EAB0  C0 68 00 00 */	lfs f3, 0(r8)
/* 8061EAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061EAB8  38 A0 00 2C */	li r5, 0x2c
/* 8061EABC  C0 89 CC 08 */	lfs f4, lit_383@l(r9)  /* 0x8064CC08@l */
/* 8061EAC0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8061EAC4  EC 23 00 72 */	fmuls f1, f3, f1
/* 8061EAC8  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061EACC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8061EAD0  C0 47 00 00 */	lfs f2, 0(r7)
/* 8061EAD4  EC 24 08 2A */	fadds f1, f4, f1
/* 8061EAD8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061EADC  EC 42 00 2A */	fadds f2, f2, f0
/* 8061EAE0  7D 89 03 A6 */	mtctr r12
/* 8061EAE4  4E 80 04 21 */	bctrl 
/* 8061EAE8  D0 39 00 34 */	stfs f1, 0x34(r25)
/* 8061EAEC  48 00 00 44 */	b lbl_8061EB30
lbl_8061EAF0:
/* 8061EAF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061EAF4  3C 80 80 65 */	lis r4, lit_383@ha /* 0x8064CC08@ha */
/* 8061EAF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061EAFC  3C A0 80 65 */	lis r5, lit_450@ha /* 0x8064CC24@ha */
/* 8061EB00  3C 63 00 02 */	addis r3, r3, 2
/* 8061EB04  38 C4 CC 08 */	addi r6, r4, lit_383@l /* 0x8064CC08@l */
/* 8061EB08  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061EB0C  7F E3 FB 78 */	mr r3, r31
/* 8061EB10  C0 45 CC 24 */	lfs f2, lit_450@l(r5)  /* 0x8064CC24@l */
/* 8061EB14  38 A0 00 2C */	li r5, 0x2c
/* 8061EB18  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061EB1C  38 80 00 00 */	li r4, 0
/* 8061EB20  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061EB24  7D 89 03 A6 */	mtctr r12
/* 8061EB28  4E 80 04 21 */	bctrl 
/* 8061EB2C  D0 39 00 34 */	stfs f1, 0x34(r25)
lbl_8061EB30:
/* 8061EB30  C0 19 00 34 */	lfs f0, 0x34(r25)
/* 8061EB34  D0 19 00 3C */	stfs f0, 0x3c(r25)
/* 8061EB38  D0 19 00 38 */	stfs f0, 0x38(r25)
/* 8061EB3C  A8 19 00 08 */	lha r0, 8(r25)
/* 8061EB40  2C 00 00 00 */	cmpwi r0, 0
/* 8061EB44  40 82 00 A8 */	bne lbl_8061EBEC
/* 8061EB48  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061EB4C  3D 00 43 30 */	lis r8, 0x4330
/* 8061EB50  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061EB54  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC14@ha */
/* 8061EB58  80 C4 00 00 */	lwz r6, 0(r4)
/* 8061EB5C  38 A3 CC 14 */	addi r5, r3, lit_387@l /* 0x8064CC14@l */
/* 8061EB60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061EB64  3C E0 80 65 */	lis r7, lit_451@ha /* 0x8064CC28@ha */
/* 8061EB68  A8 86 1B 7E */	lha r4, 0x1b7e(r6)
/* 8061EB6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061EB70  A8 06 1B 80 */	lha r0, 0x1b80(r6)
/* 8061EB74  3C C3 00 02 */	addis r6, r3, 2
/* 8061EB78  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8061EB7C  3C 60 80 65 */	lis r3, lit_452@ha /* 0x8064CC2C@ha */
/* 8061EB80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061EB84  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061EB88  39 27 CC 28 */	addi r9, r7, lit_451@l /* 0x8064CC28@l */
/* 8061EB8C  38 E3 CC 2C */	addi r7, r3, lit_452@l /* 0x8064CC2C@l */
/* 8061EB90  91 01 00 10 */	stw r8, 0x10(r1)
/* 8061EB94  7F E3 FB 78 */	mr r3, r31
/* 8061EB98  C8 65 00 00 */	lfd f3, 0(r5)
/* 8061EB9C  38 80 00 00 */	li r4, 0
/* 8061EBA0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8061EBA4  38 A0 00 2C */	li r5, 0x2c
/* 8061EBA8  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 8061EBAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061EBB0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8061EBB4  C0 29 00 00 */	lfs f1, 0(r9)
/* 8061EBB8  91 01 00 08 */	stw r8, 8(r1)
/* 8061EBBC  C0 47 00 00 */	lfs f2, 0(r7)
/* 8061EBC0  EC 21 00 2A */	fadds f1, f1, f0
/* 8061EBC4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061EBC8  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061EBCC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8061EBD0  EC 42 00 2A */	fadds f2, f2, f0
/* 8061EBD4  7D 89 03 A6 */	mtctr r12
/* 8061EBD8  4E 80 04 21 */	bctrl 
/* 8061EBDC  FC 00 08 1E */	fctiwz f0, f1
/* 8061EBE0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8061EBE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061EBE8  48 00 00 A4 */	b lbl_8061EC8C
lbl_8061EBEC:
/* 8061EBEC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061EBF0  3D 00 43 30 */	lis r8, 0x4330
/* 8061EBF4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061EBF8  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC14@ha */
/* 8061EBFC  80 C4 00 00 */	lwz r6, 0(r4)
/* 8061EC00  38 A3 CC 14 */	addi r5, r3, lit_387@l /* 0x8064CC14@l */
/* 8061EC04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061EC08  3C E0 80 65 */	lis r7, lit_453@ha /* 0x8064CC30@ha */
/* 8061EC0C  A8 86 1B 7E */	lha r4, 0x1b7e(r6)
/* 8061EC10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061EC14  A8 06 1B 80 */	lha r0, 0x1b80(r6)
/* 8061EC18  3C C3 00 02 */	addis r6, r3, 2
/* 8061EC1C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8061EC20  3C 60 80 65 */	lis r3, lit_452@ha /* 0x8064CC2C@ha */
/* 8061EC24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061EC28  90 81 00 24 */	stw r4, 0x24(r1)
/* 8061EC2C  39 27 CC 30 */	addi r9, r7, lit_453@l /* 0x8064CC30@l */
/* 8061EC30  38 E3 CC 2C */	addi r7, r3, lit_452@l /* 0x8064CC2C@l */
/* 8061EC34  91 01 00 20 */	stw r8, 0x20(r1)
/* 8061EC38  7F E3 FB 78 */	mr r3, r31
/* 8061EC3C  C8 65 00 00 */	lfd f3, 0(r5)
/* 8061EC40  38 80 00 00 */	li r4, 0
/* 8061EC44  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8061EC48  38 A0 00 2C */	li r5, 0x2c
/* 8061EC4C  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 8061EC50  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8061EC54  EC 00 18 28 */	fsubs f0, f0, f3
/* 8061EC58  C0 29 00 00 */	lfs f1, 0(r9)
/* 8061EC5C  91 01 00 28 */	stw r8, 0x28(r1)
/* 8061EC60  C0 47 00 00 */	lfs f2, 0(r7)
/* 8061EC64  EC 21 00 2A */	fadds f1, f1, f0
/* 8061EC68  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8061EC6C  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061EC70  EC 00 18 28 */	fsubs f0, f0, f3
/* 8061EC74  EC 42 00 2A */	fadds f2, f2, f0
/* 8061EC78  7D 89 03 A6 */	mtctr r12
/* 8061EC7C  4E 80 04 21 */	bctrl 
/* 8061EC80  FC 00 08 1E */	fctiwz f0, f1
/* 8061EC84  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8061EC88  83 E1 00 34 */	lwz r31, 0x34(r1)
lbl_8061EC8C:
/* 8061EC8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8061EC90  7F 43 D3 78 */	mr r3, r26
/* 8061EC94  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8061EC98  38 99 00 10 */	addi r4, r25, 0x10
/* 8061EC9C  3C C5 00 02 */	addis r6, r5, 2
/* 8061ECA0  38 B9 00 34 */	addi r5, r25, 0x34
/* 8061ECA4  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 8061ECA8  83 5A 00 00 */	lwz r26, 0(r26)
/* 8061ECAC  81 86 00 18 */	lwz r12, 0x18(r6)
/* 8061ECB0  7D 89 03 A6 */	mtctr r12
/* 8061ECB4  4E 80 04 21 */	bctrl 
/* 8061ECB8  80 FA 02 E0 */	lwz r7, 0x2e0(r26)
/* 8061ECBC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8061ECC0  38 A3 00 20 */	addi r5, r3, 0x0020 /* 0xDB060020@l */
/* 8061ECC4  57 84 10 3A */	slwi r4, r28, 2
/* 8061ECC8  38 07 00 08 */	addi r0, r7, 8
/* 8061ECCC  38 DD 00 00 */	addi r6, r29, 0
/* 8061ECD0  90 1A 02 E0 */	stw r0, 0x2e0(r26)
/* 8061ECD4  38 63 00 24 */	addi r3, r3, 0x24
/* 8061ECD8  57 60 10 3A */	slwi r0, r27, 2
/* 8061ECDC  90 A7 00 00 */	stw r5, 0(r7)
/* 8061ECE0  7C 86 20 2E */	lwzx r4, r6, r4
/* 8061ECE4  90 87 00 04 */	stw r4, 4(r7)
/* 8061ECE8  80 BA 02 E0 */	lwz r5, 0x2e0(r26)
/* 8061ECEC  38 85 00 08 */	addi r4, r5, 8
/* 8061ECF0  90 9A 02 E0 */	stw r4, 0x2e0(r26)
/* 8061ECF4  90 65 00 00 */	stw r3, 0(r5)
/* 8061ECF8  7C 06 00 2E */	lwzx r0, r6, r0
/* 8061ECFC  90 05 00 04 */	stw r0, 4(r5)
/* 8061ED00  A8 19 00 08 */	lha r0, 8(r25)
/* 8061ED04  2C 00 00 00 */	cmpwi r0, 0
/* 8061ED08  40 82 00 34 */	bne lbl_8061ED3C
/* 8061ED0C  80 BA 02 E0 */	lwz r5, 0x2e0(r26)
/* 8061ED10  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8061ED14  64 00 FF FF */	oris r0, r0, 0xffff
/* 8061ED18  38 7D 00 54 */	addi r3, r29, 0x54
/* 8061ED1C  38 85 00 08 */	addi r4, r5, 8
/* 8061ED20  90 9A 02 E0 */	stw r4, 0x2e0(r26)
/* 8061ED24  60 00 FF 00 */	ori r0, r0, 0xff00
/* 8061ED28  7C 63 F0 AE */	lbzx r3, r3, r30
/* 8061ED2C  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8061ED30  90 65 00 00 */	stw r3, 0(r5)
/* 8061ED34  90 05 00 04 */	stw r0, 4(r5)
/* 8061ED38  48 00 00 30 */	b lbl_8061ED68
lbl_8061ED3C:
/* 8061ED3C  80 BA 02 E0 */	lwz r5, 0x2e0(r26)
/* 8061ED40  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8061ED44  64 00 FF C8 */	oris r0, r0, 0xffc8
/* 8061ED48  38 7D 00 54 */	addi r3, r29, 0x54
/* 8061ED4C  38 85 00 08 */	addi r4, r5, 8
/* 8061ED50  90 9A 02 E0 */	stw r4, 0x2e0(r26)
/* 8061ED54  60 00 82 00 */	ori r0, r0, 0x8200
/* 8061ED58  7C 63 F0 AE */	lbzx r3, r3, r30
/* 8061ED5C  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8061ED60  90 65 00 00 */	stw r3, 0(r5)
/* 8061ED64  90 05 00 04 */	stw r0, 4(r5)
lbl_8061ED68:
/* 8061ED68  A8 19 00 08 */	lha r0, 8(r25)
/* 8061ED6C  2C 00 00 00 */	cmpwi r0, 0
/* 8061ED70  40 82 00 28 */	bne lbl_8061ED98
/* 8061ED74  80 DA 02 E0 */	lwz r6, 0x2e0(r26)
/* 8061ED78  3C 60 80 CB */	lis r3, ef_dust01_modelT@ha /* 0x80CB2540@ha */
/* 8061ED7C  3C 80 DE 00 */	lis r4, 0xde00
/* 8061ED80  38 A6 00 08 */	addi r5, r6, 8
/* 8061ED84  38 03 25 40 */	addi r0, r3, ef_dust01_modelT@l /* 0x80CB2540@l */
/* 8061ED88  90 BA 02 E0 */	stw r5, 0x2e0(r26)
/* 8061ED8C  90 86 00 00 */	stw r4, 0(r6)
/* 8061ED90  90 06 00 04 */	stw r0, 4(r6)
/* 8061ED94  48 00 00 24 */	b lbl_8061EDB8
lbl_8061ED98:
/* 8061ED98  80 DA 02 E0 */	lwz r6, 0x2e0(r26)
/* 8061ED9C  3C 60 80 CB */	lis r3, ef_dust01_stew_modelT@ha /* 0x80CB2598@ha */
/* 8061EDA0  3C 80 DE 00 */	lis r4, 0xde00
/* 8061EDA4  38 A6 00 08 */	addi r5, r6, 8
/* 8061EDA8  38 03 25 98 */	addi r0, r3, ef_dust01_stew_modelT@l /* 0x80CB2598@l */
/* 8061EDAC  90 BA 02 E0 */	stw r5, 0x2e0(r26)
/* 8061EDB0  90 86 00 00 */	stw r4, 0(r6)
/* 8061EDB4  90 06 00 04 */	stw r0, 4(r6)
lbl_8061EDB8:
/* 8061EDB8  39 61 00 60 */	addi r11, r1, 0x60
/* 8061EDBC  4B A7 C1 55 */	bl func_8009AF10
/* 8061EDC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8061EDC4  7C 08 03 A6 */	mtlr r0
/* 8061EDC8  38 21 00 60 */	addi r1, r1, 0x60
/* 8061EDCC  4E 80 00 20 */	blr 
