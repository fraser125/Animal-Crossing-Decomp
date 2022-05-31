lbl_8060B73C:
/* 8060B73C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060B740  7C 08 02 A6 */	mflr r0
/* 8060B744  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060B748  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060B74C  7C 7F 1B 78 */	mr r31, r3
/* 8060B750  4B A5 15 A5 */	bl fqrand
/* 8060B754  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064BF90@ha */
/* 8060B758  3C 60 80 65 */	lis r3, data_8064BF8C@ha /* 0x8064BF8C@ha */
/* 8060B75C  C0 44 BF 90 */	lfs f2, lit_391@l(r4)  /* 0x8064BF90@l */
/* 8060B760  A8 1F 00 06 */	lha r0, 6(r31)
/* 8060B764  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060B768  C0 03 BF 8C */	lfs f0, data_8064BF8C@l(r3)  /* 0x8064BF8C@l */
/* 8060B76C  2C 00 00 01 */	cmpwi r0, 1
/* 8060B770  EC 00 08 2A */	fadds f0, f0, f1
/* 8060B774  FC 00 00 1E */	fctiwz f0, f0
/* 8060B778  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8060B77C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8060B780  7C 80 07 34 */	extsh r0, r4
/* 8060B784  7C 00 0E 70 */	srawi r0, r0, 1
/* 8060B788  7C 05 07 34 */	extsh r5, r0
/* 8060B78C  40 82 00 34 */	bne lbl_8060B7C0
/* 8060B790  3C C0 80 6D */	lis r6, light_color@ha /* 0x806D2268@ha */
/* 8060B794  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060B798  80 06 22 68 */	lwz r0, light_color@l(r6)  /* 0x806D2268@l */
/* 8060B79C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060B7A0  3C C3 00 02 */	addis r6, r3, 2
/* 8060B7A4  80 E6 60 9C */	lwz r7, 0x609c(r6)
/* 8060B7A8  38 61 00 08 */	addi r3, r1, 8
/* 8060B7AC  90 01 00 08 */	stw r0, 8(r1)
/* 8060B7B0  38 C0 00 01 */	li r6, 1
/* 8060B7B4  81 87 00 30 */	lwz r12, 0x30(r7)
/* 8060B7B8  7D 89 03 A6 */	mtctr r12
/* 8060B7BC  4E 80 04 21 */	bctrl 
lbl_8060B7C0:
/* 8060B7C0  38 00 00 05 */	li r0, 5
/* 8060B7C4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8060B7C8  4B A5 15 2D */	bl fqrand
/* 8060B7CC  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064BF98@ha */
/* 8060B7D0  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064BF94@ha */
/* 8060B7D4  C0 44 BF 98 */	lfs f2, lit_393@l(r4)  /* 0x8064BF98@l */
/* 8060B7D8  C0 03 BF 94 */	lfs f0, lit_392@l(r3)  /* 0x8064BF94@l */
/* 8060B7DC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060B7E0  EC 00 08 2A */	fadds f0, f0, f1
/* 8060B7E4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8060B7E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060B7EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060B7F0  7C 08 03 A6 */	mtlr r0
/* 8060B7F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8060B7F8  4E 80 00 20 */	blr 
