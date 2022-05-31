lbl_805B4458:
/* 805B4458  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805B445C  7C 08 02 A6 */	mflr r0
/* 805B4460  90 01 00 84 */	stw r0, 0x84(r1)
/* 805B4464  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805B4468  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805B446C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805B4470  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805B4474  39 61 00 60 */	addi r11, r1, 0x60
/* 805B4478  4B AE 6A 41 */	bl func_8009AEB8
/* 805B447C  3C 80 80 65 */	lis r4, lit_443@ha /* 0x8064A92C@ha */
/* 805B4480  3C C0 80 65 */	lis r6, lit_461@ha /* 0x8064A93C@ha */
/* 805B4484  39 04 A9 2C */	addi r8, r4, lit_443@l /* 0x8064A92C@l */
/* 805B4488  3C E0 80 65 */	lis r7, lit_458@ha /* 0x8064A938@ha */
/* 805B448C  81 28 00 00 */	lwz r9, 0(r8)
/* 805B4490  3C 80 80 65 */	lis r4, rewrite_data@ha /* 0x8064A924@ha */
/* 805B4494  38 A4 A9 24 */	addi r5, r4, rewrite_data@l /* 0x8064A924@l */
/* 805B4498  83 C8 00 04 */	lwz r30, 4(r8)
/* 805B449C  80 08 00 08 */	lwz r0, 8(r8)
/* 805B44A0  39 07 A9 38 */	addi r8, r7, lit_458@l /* 0x8064A938@l */
/* 805B44A4  3C E0 80 6C */	lis r7, unit_offset@ha /* 0x806C5BF4@ha */
/* 805B44A8  3C 80 80 6C */	lis r4, lit_459@ha /* 0x806C5C80@ha */
/* 805B44AC  91 21 00 1C */	stw r9, 0x1c(r1)
/* 805B44B0  7C 7C 1B 78 */	mr r28, r3
/* 805B44B4  C3 C8 00 00 */	lfs f30, 0(r8)
/* 805B44B8  3B E7 5B F4 */	addi r31, r7, unit_offset@l /* 0x806C5BF4@l */
/* 805B44BC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 805B44C0  3B 44 5C 80 */	addi r26, r4, lit_459@l /* 0x806C5C80@l */
/* 805B44C4  CB E6 A9 3C */	lfd f31, lit_461@l(r6)  /* 0x8064A93C@l */
/* 805B44C8  3B A0 00 00 */	li r29, 0
/* 805B44CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B44D0  3B 60 00 00 */	li r27, 0
/* 805B44D4  82 E5 00 00 */	lwz r23, 0(r5)
/* 805B44D8  3E C0 43 30 */	lis r22, 0x4330
/* 805B44DC  A3 05 00 04 */	lhz r24, 4(r5)
/* 805B44E0  8B 25 00 06 */	lbz r25, 6(r5)
lbl_805B44E4:
/* 805B44E4  7C 7F DA 14 */	add r3, r31, r27
/* 805B44E8  92 C1 00 28 */	stw r22, 0x28(r1)
/* 805B44EC  A8 83 00 00 */	lha r4, 0(r3)
/* 805B44F0  7F 45 D3 78 */	mr r5, r26
/* 805B44F4  A8 03 00 02 */	lha r0, 2(r3)
/* 805B44F8  38 61 00 10 */	addi r3, r1, 0x10
/* 805B44FC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805B4500  92 C1 00 30 */	stw r22, 0x30(r1)
/* 805B4504  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B4508  C0 7C 00 28 */	lfs f3, 0x28(r28)
/* 805B450C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 805B4510  38 81 00 08 */	addi r4, r1, 8
/* 805B4514  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 805B4518  38 C0 01 23 */	li r6, 0x123
/* 805B451C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B4520  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 805B4524  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805B4528  EC 42 F8 28 */	fsubs f2, f2, f31
/* 805B452C  92 E1 00 08 */	stw r23, 8(r1)
/* 805B4530  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805B4534  B3 01 00 0C */	sth r24, 0xc(r1)
/* 805B4538  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 805B453C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 805B4540  9B 21 00 0E */	stb r25, 0xe(r1)
/* 805B4544  EC 43 10 2A */	fadds f2, f3, f2
/* 805B4548  93 C1 00 14 */	stw r30, 0x14(r1)
/* 805B454C  EC 01 00 2A */	fadds f0, f1, f0
/* 805B4550  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805B4554  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B4558  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 805B455C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B4560  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805B4564  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B4568  4B DD D8 11 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B456C  3B BD 00 01 */	addi r29, r29, 1
/* 805B4570  3B 7B 00 04 */	addi r27, r27, 4
/* 805B4574  2C 1D 00 23 */	cmpwi r29, 0x23
/* 805B4578  41 80 FF 6C */	blt lbl_805B44E4
/* 805B457C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805B4580  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805B4584  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805B4588  39 61 00 60 */	addi r11, r1, 0x60
/* 805B458C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805B4590  4B AE 69 75 */	bl func_8009AF04
/* 805B4594  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805B4598  7C 08 03 A6 */	mtlr r0
/* 805B459C  38 21 00 80 */	addi r1, r1, 0x80
/* 805B45A0  4E 80 00 20 */	blr 
