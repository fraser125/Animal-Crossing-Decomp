lbl_803F74AC:
/* 803F74AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F74B0  7C 08 02 A6 */	mflr r0
/* 803F74B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F74B8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803F74BC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803F74C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F74C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F74C8  83 C3 1D D8 */	lwz r30, 0x1dd8(r3)
/* 803F74CC  7C 9F 23 78 */	mr r31, r4
/* 803F74D0  48 00 00 8C */	b lbl_803F755C
lbl_803F74D4:
/* 803F74D4  A8 1E 00 00 */	lha r0, 0(r30)
/* 803F74D8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 803F74DC  40 82 00 7C */	bne lbl_803F7558
/* 803F74E0  3C 60 80 64 */	lis r3, lit_608@ha /* 0x80643438@ha */
/* 803F74E4  3C A0 80 64 */	lis r5, lit_599@ha /* 0x80643430@ha */
/* 803F74E8  38 83 34 38 */	addi r4, r3, lit_608@l /* 0x80643438@l */
/* 803F74EC  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 803F74F0  C0 24 00 00 */	lfs f1, 0(r4)
/* 803F74F4  3C 60 80 64 */	lis r3, lit_660@ha /* 0x80643448@ha */
/* 803F74F8  38 83 34 48 */	addi r4, r3, lit_660@l /* 0x80643448@l */
/* 803F74FC  C0 45 34 30 */	lfs f2, lit_599@l(r5)  /* 0x80643430@l */
/* 803F7500  EC 21 00 32 */	fmuls f1, f1, f0
/* 803F7504  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F7508  38 7E 00 28 */	addi r3, r30, 0x28
/* 803F750C  EF E2 08 2A */	fadds f31, f2, f1
/* 803F7510  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803F7514  40 80 00 08 */	bge lbl_803F751C
/* 803F7518  48 00 00 08 */	b lbl_803F7520
lbl_803F751C:
/* 803F751C  FF E0 00 90 */	fmr f31, f0
lbl_803F7520:
/* 803F7520  7F E4 FB 78 */	mr r4, r31
/* 803F7524  38 A1 00 14 */	addi r5, r1, 0x14
/* 803F7528  4B FC 3A 51 */	bl xyz_t_sub
/* 803F752C  3C 60 80 64 */	lis r3, lit_660@ha /* 0x80643448@ha */
/* 803F7530  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 803F7534  C0 03 34 48 */	lfs f0, lit_660@l(r3)  /* 0x80643448@l */
/* 803F7538  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 803F753C  EF FF 00 2A */	fadds f31, f31, f0
/* 803F7540  48 01 17 59 */	bl Math3DVecLengthSquare2D
/* 803F7544  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 803F7548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F754C  40 80 00 0C */	bge lbl_803F7558
/* 803F7550  38 60 00 01 */	li r3, 1
/* 803F7554  48 00 00 94 */	b lbl_803F75E8
lbl_803F7558:
/* 803F7558  83 DE 01 58 */	lwz r30, 0x158(r30)
lbl_803F755C:
/* 803F755C  28 1E 00 00 */	cmplwi r30, 0
/* 803F7560  40 82 FF 74 */	bne lbl_803F74D4
/* 803F7564  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F7568  3C A0 80 64 */	lis r5, data_806433EC@ha /* 0x806433EC@ha */
/* 803F756C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803F7570  C0 25 33 EC */	lfs f1, data_806433EC@l(r5)  /* 0x806433EC@l */
/* 803F7574  3C 64 00 03 */	addis r3, r4, 3
/* 803F7578  C4 03 88 6C */	lfsu f0, -0x7794(r3)
/* 803F757C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803F7580  40 82 00 20 */	bne lbl_803F75A0
/* 803F7584  3C 84 00 03 */	addis r4, r4, 3
/* 803F7588  C0 04 88 70 */	lfs f0, -0x7790(r4)
/* 803F758C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803F7590  40 82 00 10 */	bne lbl_803F75A0
/* 803F7594  C0 04 88 74 */	lfs f0, -0x778c(r4)
/* 803F7598  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803F759C  41 82 00 48 */	beq lbl_803F75E4
lbl_803F75A0:
/* 803F75A0  3C 80 80 64 */	lis r4, lit_608@ha /* 0x80643438@ha */
/* 803F75A4  38 A4 34 38 */	addi r5, r4, lit_608@l /* 0x80643438@l */
/* 803F75A8  C3 E5 00 00 */	lfs f31, 0(r5)
/* 803F75AC  7F E4 FB 78 */	mr r4, r31
/* 803F75B0  38 A1 00 08 */	addi r5, r1, 8
/* 803F75B4  4B FC 39 C5 */	bl xyz_t_sub
/* 803F75B8  3C 60 80 64 */	lis r3, lit_660@ha /* 0x80643448@ha */
/* 803F75BC  C0 21 00 08 */	lfs f1, 8(r1)
/* 803F75C0  C0 03 34 48 */	lfs f0, lit_660@l(r3)  /* 0x80643448@l */
/* 803F75C4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 803F75C8  EF FF 00 2A */	fadds f31, f31, f0
/* 803F75CC  48 01 16 CD */	bl Math3DVecLengthSquare2D
/* 803F75D0  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 803F75D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F75D8  40 80 00 0C */	bge lbl_803F75E4
/* 803F75DC  38 60 00 01 */	li r3, 1
/* 803F75E0  48 00 00 08 */	b lbl_803F75E8
lbl_803F75E4:
/* 803F75E4  38 60 00 00 */	li r3, 0
lbl_803F75E8:
/* 803F75E8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803F75EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F75F0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803F75F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F75F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F75FC  7C 08 03 A6 */	mtlr r0
/* 803F7600  38 21 00 40 */	addi r1, r1, 0x40
/* 803F7604  4E 80 00 20 */	blr 
