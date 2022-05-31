lbl_805BFD64:
/* 805BFD64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BFD68  7C 08 02 A6 */	mflr r0
/* 805BFD6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BFD70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805BFD74  7C 9F 23 78 */	mr r31, r4
/* 805BFD78  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805BFD7C  7C 7E 1B 78 */	mr r30, r3
/* 805BFD80  80 63 02 BC */	lwz r3, 0x2bc(r3)
/* 805BFD84  2C 03 00 00 */	cmpwi r3, 0
/* 805BFD88  41 81 00 DC */	bgt lbl_805BFE64
/* 805BFD8C  3C 60 80 65 */	lis r3, data_8064AC3C@ha /* 0x8064AC3C@ha */
/* 805BFD90  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805BFD94  C0 03 AC 3C */	lfs f0, data_8064AC3C@l(r3)  /* 0x8064AC3C@l */
/* 805BFD98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BFD9C  4C 41 13 82 */	cror 2, 1, 2
/* 805BFDA0  40 82 00 24 */	bne lbl_805BFDC4
/* 805BFDA4  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064AC5C@ha */
/* 805BFDA8  C0 03 AC 5C */	lfs f0, lit_477@l(r3)  /* 0x8064AC5C@l */
/* 805BFDAC  EC 00 08 24 */	fdivs f0, f0, f1
/* 805BFDB0  FC 00 00 1E */	fctiwz f0, f0
/* 805BFDB4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805BFDB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BFDBC  90 1E 02 BC */	stw r0, 0x2bc(r30)
/* 805BFDC0  48 00 00 0C */	b lbl_805BFDCC
lbl_805BFDC4:
/* 805BFDC4  38 00 00 0C */	li r0, 0xc
/* 805BFDC8  90 1E 02 BC */	stw r0, 0x2bc(r30)
lbl_805BFDCC:
/* 805BFDCC  38 61 00 14 */	addi r3, r1, 0x14
/* 805BFDD0  38 9E 00 28 */	addi r4, r30, 0x28
/* 805BFDD4  4B DF B0 E9 */	bl xyz_t_move
/* 805BFDD8  3C 80 80 65 */	lis r4, lit_478@ha /* 0x8064AC60@ha */
/* 805BFDDC  3C 60 80 65 */	lis r3, lit_479@ha /* 0x8064AC64@ha */
/* 805BFDE0  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805BFDE4  C0 44 AC 60 */	lfs f2, lit_478@l(r4)  /* 0x8064AC60@l */
/* 805BFDE8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805BFDEC  C0 03 AC 64 */	lfs f0, lit_479@l(r3)  /* 0x8064AC64@l */
/* 805BFDF0  EC 43 10 2A */	fadds f2, f3, f2
/* 805BFDF4  EC 01 00 2A */	fadds f0, f1, f0
/* 805BFDF8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805BFDFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805BFE00  4B DD B0 B9 */	bl mEv_CheckTitleDemo
/* 805BFE04  2C 03 00 00 */	cmpwi r3, 0
/* 805BFE08  40 82 00 64 */	bne lbl_805BFE6C
/* 805BFE0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BFE10  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805BFE14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BFE18  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805BFE1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BFE20  3C 63 00 02 */	addis r3, r3, 2
/* 805BFE24  90 81 00 08 */	stw r4, 8(r1)
/* 805BFE28  7F E7 FB 78 */	mr r7, r31
/* 805BFE2C  81 03 60 9C */	lwz r8, 0x609c(r3)
/* 805BFE30  38 81 00 08 */	addi r4, r1, 8
/* 805BFE34  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805BFE38  38 60 00 23 */	li r3, 0x23
/* 805BFE3C  38 A0 00 01 */	li r5, 1
/* 805BFE40  38 C0 00 00 */	li r6, 0
/* 805BFE44  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BFE48  39 20 00 00 */	li r9, 0
/* 805BFE4C  39 40 00 00 */	li r10, 0
/* 805BFE50  81 88 00 00 */	lwz r12, 0(r8)
/* 805BFE54  A1 1E 00 06 */	lhz r8, 6(r30)
/* 805BFE58  7D 89 03 A6 */	mtctr r12
/* 805BFE5C  4E 80 04 21 */	bctrl 
/* 805BFE60  48 00 00 0C */	b lbl_805BFE6C
lbl_805BFE64:
/* 805BFE64  38 03 FF FF */	addi r0, r3, -1
/* 805BFE68  90 1E 02 BC */	stw r0, 0x2bc(r30)
lbl_805BFE6C:
/* 805BFE6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BFE70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805BFE74  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805BFE78  7C 08 03 A6 */	mtlr r0
/* 805BFE7C  38 21 00 30 */	addi r1, r1, 0x30
/* 805BFE80  4E 80 00 20 */	blr 
