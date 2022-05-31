lbl_8061BFE0:
/* 8061BFE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061BFE4  7C 08 02 A6 */	mflr r0
/* 8061BFE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061BFEC  39 61 00 30 */	addi r11, r1, 0x30
/* 8061BFF0  4B A7 EE E5 */	bl func_8009AED4
/* 8061BFF4  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8061BFF8  3C 80 43 30 */	lis r4, 0x4330
/* 8061BFFC  38 C5 61 38 */	addi r6, r5, debug_mode@l /* 0x81166138@l */
/* 8061C000  7C 7E 1B 78 */	mr r30, r3
/* 8061C004  80 E6 00 00 */	lwz r7, 0(r6)
/* 8061C008  3C A0 80 65 */	lis r5, lit_387@ha /* 0x8064CAC4@ha */
/* 8061C00C  3C C0 80 65 */	lis r6, lit_402@ha /* 0x8064CACC@ha */
/* 8061C010  C8 65 CA C4 */	lfd f3, lit_387@l(r5)  /* 0x8064CAC4@l */
/* 8061C014  A8 67 19 14 */	lha r3, 0x1914(r7)
/* 8061C018  90 81 00 08 */	stw r4, 8(r1)
/* 8061C01C  38 03 00 2A */	addi r0, r3, 0x2a
/* 8061C020  C0 26 CA CC */	lfs f1, lit_402@l(r6)  /* 0x8064CACC@l */
/* 8061C024  7C 05 07 34 */	extsh r5, r0
/* 8061C028  A8 1E 00 00 */	lha r0, 0(r30)
/* 8061C02C  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8061C030  90 61 00 0C */	stw r3, 0xc(r1)
/* 8061C034  7C 00 28 50 */	subf r0, r0, r5
/* 8061C038  7C 1F 07 34 */	extsh r31, r0
/* 8061C03C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061C040  EC 00 18 28 */	fsubs f0, f0, f3
/* 8061C044  EC 01 00 32 */	fmuls f0, f1, f0
/* 8061C048  FC 40 00 1E */	fctiwz f2, f0
/* 8061C04C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8061C050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061C054  7C 00 07 34 */	extsh r0, r0
/* 8061C058  7C 1F 00 00 */	cmpw r31, r0
/* 8061C05C  40 80 00 4C */	bge lbl_8061C0A8
/* 8061C060  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061C064  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8061C068  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061C06C  3C C0 80 65 */	lis r6, lit_403@ha /* 0x8064CAD0@ha */
/* 8061C070  3C 63 00 02 */	addis r3, r3, 2
/* 8061C074  3C A0 80 65 */	lis r5, lit_404@ha /* 0x8064CAD4@ha */
/* 8061C078  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061C07C  38 E6 CA D0 */	addi r7, r6, lit_403@l /* 0x8064CAD0@l */
/* 8061C080  38 C5 CA D4 */	addi r6, r5, lit_404@l /* 0x8064CAD4@l */
/* 8061C084  7F E3 FB 78 */	mr r3, r31
/* 8061C088  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061C08C  38 80 00 00 */	li r4, 0
/* 8061C090  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8061C094  C0 27 00 00 */	lfs f1, 0(r7)
/* 8061C098  C0 46 00 00 */	lfs f2, 0(r6)
/* 8061C09C  7D 89 03 A6 */	mtctr r12
/* 8061C0A0  4E 80 04 21 */	bctrl 
/* 8061C0A4  48 00 00 BC */	b lbl_8061C160
lbl_8061C0A8:
/* 8061C0A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 8061C0AC  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064CAD8@ha */
/* 8061C0B0  C0 23 CA D8 */	lfs f1, lit_405@l(r3)  /* 0x8064CAD8@l */
/* 8061C0B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8061C0B8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8061C0BC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8061C0C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8061C0C4  FC 00 00 1E */	fctiwz f0, f0
/* 8061C0C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061C0CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061C0D0  7C 00 07 34 */	extsh r0, r0
/* 8061C0D4  7C 1F 00 00 */	cmpw r31, r0
/* 8061C0D8  40 80 00 50 */	bge lbl_8061C128
/* 8061C0DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061C0E0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8061C0E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061C0E8  3C C0 80 65 */	lis r6, lit_404@ha /* 0x8064CAD4@ha */
/* 8061C0EC  3C 63 00 02 */	addis r3, r3, 2
/* 8061C0F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061C0F4  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061C0F8  3C A0 80 65 */	lis r5, lit_406@ha /* 0x8064CADC@ha */
/* 8061C0FC  38 E6 CA D4 */	addi r7, r6, lit_404@l /* 0x8064CAD4@l */
/* 8061C100  7F E3 FB 78 */	mr r3, r31
/* 8061C104  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061C108  38 C5 CA DC */	addi r6, r5, lit_406@l /* 0x8064CADC@l */
/* 8061C10C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8061C110  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8061C114  C0 27 00 00 */	lfs f1, 0(r7)
/* 8061C118  C0 46 00 00 */	lfs f2, 0(r6)
/* 8061C11C  7D 89 03 A6 */	mtctr r12
/* 8061C120  4E 80 04 21 */	bctrl 
/* 8061C124  48 00 00 3C */	b lbl_8061C160
lbl_8061C128:
/* 8061C128  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061C12C  3C E0 80 65 */	lis r7, lit_406@ha /* 0x8064CADC@ha */
/* 8061C130  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061C134  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8061C138  3C 63 00 02 */	addis r3, r3, 2
/* 8061C13C  3C C0 80 65 */	lis r6, lit_403@ha /* 0x8064CAD0@ha */
/* 8061C140  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061C144  7F E3 FB 78 */	mr r3, r31
/* 8061C148  C0 27 CA DC */	lfs f1, lit_406@l(r7)  /* 0x8064CADC@l */
/* 8061C14C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061C150  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8061C154  C0 46 CA D0 */	lfs f2, lit_403@l(r6)  /* 0x8064CAD0@l */
/* 8061C158  7D 89 03 A6 */	mtctr r12
/* 8061C15C  4E 80 04 21 */	bctrl 
lbl_8061C160:
/* 8061C160  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 8061C164  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 8061C168  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8061C16C  7F E3 FB 78 */	mr r3, r31
/* 8061C170  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 8061C174  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8061C178  38 C6 61 38 */	addi r6, r6, debug_mode@l /* 0x81166138@l */
/* 8061C17C  38 80 00 00 */	li r4, 0
/* 8061C180  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 8061C184  3F A5 00 02 */	addis r29, r5, 2
/* 8061C188  80 C6 00 00 */	lwz r6, 0(r6)
/* 8061C18C  80 BD 60 9C */	lwz r5, 0x609c(r29)
/* 8061C190  A8 C6 19 14 */	lha r6, 0x1914(r6)
/* 8061C194  81 85 00 14 */	lwz r12, 0x14(r5)
/* 8061C198  38 06 00 2A */	addi r0, r6, 0x2a
/* 8061C19C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8061C1A0  7C 05 07 34 */	extsh r5, r0
/* 8061C1A4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8061C1A8  7D 89 03 A6 */	mtctr r12
/* 8061C1AC  4E 80 04 21 */	bctrl 
/* 8061C1B0  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 8061C1B4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061C1B8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061C1BC  7F E3 FB 78 */	mr r3, r31
/* 8061C1C0  80 C4 00 00 */	lwz r6, 0(r4)
/* 8061C1C4  38 80 00 00 */	li r4, 0
/* 8061C1C8  80 BD 60 9C */	lwz r5, 0x609c(r29)
/* 8061C1CC  A8 C6 19 14 */	lha r6, 0x1914(r6)
/* 8061C1D0  81 85 00 14 */	lwz r12, 0x14(r5)
/* 8061C1D4  38 06 00 2A */	addi r0, r6, 0x2a
/* 8061C1D8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8061C1DC  7C 05 07 34 */	extsh r5, r0
/* 8061C1E0  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8061C1E4  7D 89 03 A6 */	mtctr r12
/* 8061C1E8  4E 80 04 21 */	bctrl 
/* 8061C1EC  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 8061C1F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8061C1F4  4B A7 ED 2D */	bl func_8009AF20
/* 8061C1F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061C1FC  7C 08 03 A6 */	mtlr r0
/* 8061C200  38 21 00 30 */	addi r1, r1, 0x30
/* 8061C204  4E 80 00 20 */	blr 
