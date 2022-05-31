lbl_8061C680:
/* 8061C680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061C684  7C 08 02 A6 */	mflr r0
/* 8061C688  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061C68C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FD20@ha */
/* 8061C690  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061C694  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061C698  3C 63 00 02 */	addis r3, r3, 2
/* 8061C69C  38 85 FD 20 */	addi r4, r5, 0xFD20 /* 0x0000FD20@l */
/* 8061C6A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061C6A4  80 63 61 1C */	lwz r3, 0x611c(r3)
/* 8061C6A8  7C 03 20 00 */	cmpw r3, r4
/* 8061C6AC  41 80 00 10 */	blt lbl_8061C6BC
/* 8061C6B0  38 05 27 50 */	addi r0, r5, 0x2750
/* 8061C6B4  7C 03 00 00 */	cmpw r3, r0
/* 8061C6B8  41 80 00 0C */	blt lbl_8061C6C4
lbl_8061C6BC:
/* 8061C6BC  3B E0 02 58 */	li r31, 0x258
/* 8061C6C0  48 00 00 5C */	b lbl_8061C71C
lbl_8061C6C4:
/* 8061C6C4  38 A5 12 38 */	addi r5, r5, 0x1238
/* 8061C6C8  7C 03 28 00 */	cmpw r3, r5
/* 8061C6CC  40 80 00 28 */	bge lbl_8061C6F4
/* 8061C6D0  3C E0 80 65 */	lis r7, lit_424@ha /* 0x8064CB14@ha */
/* 8061C6D4  3C C0 80 65 */	lis r6, lit_425@ha /* 0x8064CB18@ha */
/* 8061C6D8  C0 27 CB 14 */	lfs f1, lit_424@l(r7)  /* 0x8064CB14@l */
/* 8061C6DC  C0 46 CB 18 */	lfs f2, lit_425@l(r6)  /* 0x8064CB18@l */
/* 8061C6E0  4B FF FF 21 */	bl eShooting_AdjustValue
/* 8061C6E4  FC 00 08 1E */	fctiwz f0, f1
/* 8061C6E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061C6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061C6F0  48 00 00 2C */	b lbl_8061C71C
lbl_8061C6F4:
/* 8061C6F4  3C C0 80 65 */	lis r6, lit_425@ha /* 0x8064CB18@ha */
/* 8061C6F8  3C 80 80 65 */	lis r4, lit_424@ha /* 0x8064CB14@ha */
/* 8061C6FC  C0 44 CB 14 */	lfs f2, lit_424@l(r4)  /* 0x8064CB14@l */
/* 8061C700  7C A4 2B 78 */	mr r4, r5
/* 8061C704  C0 26 CB 18 */	lfs f1, lit_425@l(r6)  /* 0x8064CB18@l */
/* 8061C708  7C 05 03 78 */	mr r5, r0
/* 8061C70C  4B FF FE F5 */	bl eShooting_AdjustValue
/* 8061C710  FC 00 08 1E */	fctiwz f0, f1
/* 8061C714  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061C718  83 E1 00 0C */	lwz r31, 0xc(r1)
lbl_8061C71C:
/* 8061C71C  4B A4 05 D9 */	bl fqrand
/* 8061C720  7F E3 07 34 */	extsh r3, r31
/* 8061C724  3C 80 80 65 */	lis r4, lit_425@ha /* 0x8064CB18@ha */
/* 8061C728  C0 04 CB 18 */	lfs f0, lit_425@l(r4)  /* 0x8064CB18@l */
/* 8061C72C  3C 00 43 30 */	lis r0, 0x4330
/* 8061C730  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8061C734  90 01 00 08 */	stw r0, 8(r1)
/* 8061C738  3C A0 80 65 */	lis r5, lit_426@ha /* 0x8064CB1C@ha */
/* 8061C73C  3C 80 80 65 */	lis r4, lit_411@ha /* 0x8064CB0C@ha */
/* 8061C740  EC 60 00 72 */	fmuls f3, f0, f1
/* 8061C744  90 61 00 0C */	stw r3, 0xc(r1)
/* 8061C748  C0 45 CB 1C */	lfs f2, lit_426@l(r5)  /* 0x8064CB1C@l */
/* 8061C74C  C8 24 CB 0C */	lfd f1, lit_411@l(r4)  /* 0x8064CB0C@l */
/* 8061C750  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061C754  EC 43 10 28 */	fsubs f2, f3, f2
/* 8061C758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061C75C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061C760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061C764  EC 00 10 2A */	fadds f0, f0, f2
/* 8061C768  FC 00 00 1E */	fctiwz f0, f0
/* 8061C76C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8061C770  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8061C774  7C 08 03 A6 */	mtlr r0
/* 8061C778  38 21 00 20 */	addi r1, r1, 0x20
/* 8061C77C  4E 80 00 20 */	blr 
