lbl_804C4428:
/* 804C4428  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804C442C  7C 08 02 A6 */	mflr r0
/* 804C4430  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804C4434  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804C4438  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804C443C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804C4440  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 804C4444  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804C4448  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 804C444C  39 61 00 90 */	addi r11, r1, 0x90
/* 804C4450  4B BD 6A 49 */	bl __save_gpr
/* 804C4454  90 61 00 08 */	stw r3, 8(r1)
/* 804C4458  7C 91 23 78 */	mr r17, r4
/* 804C445C  7C AE 2B 78 */	mr r14, r5
/* 804C4460  7C CF 33 78 */	mr r15, r6
/* 804C4464  91 01 00 0C */	stw r8, 0xc(r1)
/* 804C4468  7C F0 3B 78 */	mr r16, r7
/* 804C446C  4B F4 7D 69 */	bl Matrix_push
/* 804C4470  8A 4E 00 00 */	lbz r18, 0(r14)
/* 804C4474  3B 11 00 48 */	addi r24, r17, 0x48
/* 804C4478  8A 6E 00 01 */	lbz r19, 1(r14)
/* 804C447C  3A A0 00 01 */	li r21, 1
/* 804C4480  7E 52 07 74 */	extsb r18, r18
/* 804C4484  C3 EE 00 04 */	lfs f31, 4(r14)
/* 804C4488  7E 73 07 74 */	extsb r19, r19
/* 804C448C  C3 CE 00 08 */	lfs f30, 8(r14)
/* 804C4490  56 51 20 36 */	slwi r17, r18, 4
/* 804C4494  56 74 20 36 */	slwi r20, r19, 4
/* 804C4498  7E 23 8B 78 */	mr r3, r17
/* 804C449C  7E 84 A3 78 */	mr r4, r20
/* 804C44A0  4B EE 1C 0D */	bl mFI_UtNum2BaseHeight
/* 804C44A4  3C 80 80 64 */	lis r4, lit_845@ha /* 0x80646164@ha */
/* 804C44A8  7E 43 93 78 */	mr r3, r18
/* 804C44AC  38 A4 61 64 */	addi r5, r4, lit_845@l /* 0x80646164@l */
/* 804C44B0  7E 64 9B 78 */	mr r4, r19
/* 804C44B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804C44B8  EF A0 08 2A */	fadds f29, f0, f1
/* 804C44BC  4B EE 0C FD */	bl mFI_GetBlockNum
/* 804C44C0  3C A0 81 16 */	lis r5, g_fdinfo@ha /* 0x81167A58@ha */
/* 804C44C4  7E 84 A3 78 */	mr r4, r20
/* 804C44C8  38 C5 7A 58 */	addi r6, r5, g_fdinfo@l /* 0x81167A58@l */
/* 804C44CC  1C A3 06 14 */	mulli r5, r3, 0x614
/* 804C44D0  80 C6 00 00 */	lwz r6, 0(r6)
/* 804C44D4  7E 23 8B 78 */	mr r3, r17
/* 804C44D8  80 06 00 74 */	lwz r0, 0x74(r6)
/* 804C44DC  3A 25 04 20 */	addi r17, r5, 0x420
/* 804C44E0  7E 20 8A 14 */	add r17, r0, r17
/* 804C44E4  4B EE 21 0D */	bl mFI_UtNum2UtCol
/* 804C44E8  7C 60 1B 78 */	mr r0, r3
/* 804C44EC  7E 43 93 78 */	mr r3, r18
/* 804C44F0  7C 16 03 78 */	mr r22, r0
/* 804C44F4  7E 64 9B 78 */	mr r4, r19
/* 804C44F8  4B EE 47 39 */	bl mFI_GetDepositP
/* 804C44FC  3C A0 80 6A */	lis r5, rnd_data_x@ha /* 0x8069881C@ha */
/* 804C4500  3C 80 80 6A */	lis r4, rnd_data_z@ha /* 0x8069885C@ha */
/* 804C4504  82 EE 00 0C */	lwz r23, 0xc(r14)
/* 804C4508  7C 72 1B 78 */	mr r18, r3
/* 804C450C  3B 85 88 1C */	addi r28, r5, rnd_data_x@l /* 0x8069881C@l */
/* 804C4510  39 C4 88 5C */	addi r14, r4, rnd_data_z@l /* 0x8069885C@l */
/* 804C4514  3A 80 00 00 */	li r20, 0
/* 804C4518  3B E0 00 00 */	li r31, 0
lbl_804C451C:
/* 804C451C  56 80 17 3A */	rlwinm r0, r20, 2, 0x1c, 0x1d
/* 804C4520  3A 60 00 00 */	li r19, 0
/* 804C4524  7F 7C 02 14 */	add r27, r28, r0
/* 804C4528  3B C0 00 00 */	li r30, 0
/* 804C452C  7F 4E 02 14 */	add r26, r14, r0
lbl_804C4530:
/* 804C4530  A0 77 00 00 */	lhz r3, 0(r23)
/* 804C4534  4B FF AA E5 */	bl bIT_individual_draw_check
/* 804C4538  2C 03 00 00 */	cmpwi r3, 0
/* 804C453C  41 82 01 C0 */	beq lbl_804C46FC
/* 804C4540  A0 77 00 00 */	lhz r3, 0(r23)
/* 804C4544  7E C5 B3 78 */	mr r5, r22
/* 804C4548  7E 06 83 78 */	mr r6, r16
/* 804C454C  38 81 00 1C */	addi r4, r1, 0x1c
/* 804C4550  3B 20 00 01 */	li r25, 1
/* 804C4554  4B FF ED 31 */	bl fg_no2fg_type
/* 804C4558  28 12 00 00 */	cmplwi r18, 0
/* 804C455C  41 82 00 20 */	beq lbl_804C457C
/* 804C4560  A0 12 00 00 */	lhz r0, 0(r18)
/* 804C4564  7C 00 9E 30 */	sraw r0, r0, r19
/* 804C4568  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C456C  41 82 00 10 */	beq lbl_804C457C
/* 804C4570  A8 01 00 1E */	lha r0, 0x1e(r1)
/* 804C4574  2C 00 00 79 */	cmpwi r0, 0x79
/* 804C4578  40 82 00 2C */	bne lbl_804C45A4
lbl_804C457C:
/* 804C457C  A0 77 00 00 */	lhz r3, 0(r23)
/* 804C4580  28 03 00 00 */	cmplwi r3, 0
/* 804C4584  41 82 00 18 */	beq lbl_804C459C
/* 804C4588  7E C5 B3 78 */	mr r5, r22
/* 804C458C  7E 06 83 78 */	mr r6, r16
/* 804C4590  38 81 00 1C */	addi r4, r1, 0x1c
/* 804C4594  4B FF EC F1 */	bl fg_no2fg_type
/* 804C4598  48 00 00 64 */	b lbl_804C45FC
lbl_804C459C:
/* 804C459C  3B 20 00 00 */	li r25, 0
/* 804C45A0  48 00 00 5C */	b lbl_804C45FC
lbl_804C45A4:
/* 804C45A4  7E C3 B3 78 */	mr r3, r22
/* 804C45A8  4B EC BC E1 */	bl mCoBG_GetHoleNumber_ClData
/* 804C45AC  7C 7D 1B 79 */	or. r29, r3, r3
/* 804C45B0  41 80 00 48 */	blt lbl_804C45F8
/* 804C45B4  80 90 00 10 */	lwz r4, 0x10(r16)
/* 804C45B8  7E C3 B3 78 */	mr r3, r22
/* 804C45BC  88 04 00 00 */	lbz r0, 0(r4)
/* 804C45C0  98 01 00 1C */	stb r0, 0x1c(r1)
/* 804C45C4  A8 04 00 02 */	lha r0, 2(r4)
/* 804C45C8  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 804C45CC  80 04 00 04 */	lwz r0, 4(r4)
/* 804C45D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C45D4  80 04 00 08 */	lwz r0, 8(r4)
/* 804C45D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C45DC  4B EC BF 59 */	bl mCoBG_CheckSandHole_ClData
/* 804C45E0  2C 03 00 00 */	cmpwi r3, 0
/* 804C45E4  41 82 00 0C */	beq lbl_804C45F0
/* 804C45E8  38 00 00 0E */	li r0, 0xe
/* 804C45EC  B0 01 00 1E */	sth r0, 0x1e(r1)
lbl_804C45F0:
/* 804C45F0  9B A1 00 1C */	stb r29, 0x1c(r1)
/* 804C45F4  48 00 00 08 */	b lbl_804C45FC
lbl_804C45F8:
/* 804C45F8  3B 20 00 00 */	li r25, 0
lbl_804C45FC:
/* 804C45FC  2C 19 00 00 */	cmpwi r25, 0
/* 804C4600  41 82 00 FC */	beq lbl_804C46FC
/* 804C4604  80 61 00 20 */	lwz r3, 0x20(r1)
/* 804C4608  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804C460C  7C 03 F4 2E */	lfsx f0, r3, r30
/* 804C4610  AB 21 00 1E */	lha r25, 0x1e(r1)
/* 804C4614  EC 7F 00 2A */	fadds f3, f31, f0
/* 804C4618  57 23 18 38 */	slwi r3, r25, 3
/* 804C461C  38 03 00 04 */	addi r0, r3, 4
/* 804C4620  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804C4624  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 804C4628  7C 1F 24 2E */	lfsx f0, r31, r4
/* 804C462C  EC 5E 00 2A */	fadds f2, f30, f0
/* 804C4630  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804C4634  7C 03 02 2E */	lhzx r0, r3, r0
/* 804C4638  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C463C  41 82 00 20 */	beq lbl_804C465C
/* 804C4640  56 60 26 B6 */	rlwinm r0, r19, 4, 0x1a, 0x1b
/* 804C4644  7C 3B 04 2E */	lfsx f1, r27, r0
/* 804C4648  7C 1A 04 2E */	lfsx f0, r26, r0
/* 804C464C  EC 23 08 2A */	fadds f1, f3, f1
/* 804C4650  EC 02 00 2A */	fadds f0, f2, f0
/* 804C4654  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C4658  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_804C465C:
/* 804C465C  A0 17 00 00 */	lhz r0, 0(r23)
/* 804C4660  28 00 25 30 */	cmplwi r0, 0x2530
/* 804C4664  40 82 00 38 */	bne lbl_804C469C
/* 804C4668  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804C466C  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C4670  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804C4674  38 83 61 3C */	addi r4, r3, data_8064613C@l /* 0x8064613C@l */
/* 804C4678  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804C467C  38 61 00 10 */	addi r3, r1, 0x10
/* 804C4680  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804C4684  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C4688  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804C468C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C4690  4B EC B1 91 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804C4694  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804C4698  48 00 00 38 */	b lbl_804C46D0
lbl_804C469C:
/* 804C469C  88 91 00 00 */	lbz r4, 0(r17)
/* 804C46A0  3C 00 43 30 */	lis r0, 0x4330
/* 804C46A4  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x8064618C@ha */
/* 804C46A8  3C A0 80 64 */	lis r5, lit_1733@ha /* 0x806461B0@ha */
/* 804C46AC  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804C46B0  C8 23 61 8C */	lfd f1, lit_1524@l(r3)  /* 0x8064618C@l */
/* 804C46B4  90 01 00 38 */	stw r0, 0x38(r1)
/* 804C46B8  C0 45 61 B0 */	lfs f2, lit_1733@l(r5)  /* 0x806461B0@l */
/* 804C46BC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804C46C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C46C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C46C8  EC 00 E8 2A */	fadds f0, f0, f29
/* 804C46CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804C46D0:
/* 804C46D0  57 25 08 3C */	slwi r5, r25, 1
/* 804C46D4  80 61 00 08 */	lwz r3, 8(r1)
/* 804C46D8  7C 0F 2A 2E */	lhzx r0, r15, r5
/* 804C46DC  7F 04 C3 78 */	mr r4, r24
/* 804C46E0  38 E1 00 28 */	addi r7, r1, 0x28
/* 804C46E4  7E AF 2B 2E */	sthx r21, r15, r5
/* 804C46E8  7C 15 00 50 */	subf r0, r21, r0
/* 804C46EC  7C 05 07 34 */	extsh r5, r0
/* 804C46F0  88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 804C46F4  7C C6 07 74 */	extsb r6, r6
/* 804C46F8  4B FF FC BD */	bl bg_item_common_outPutData
lbl_804C46FC:
/* 804C46FC  3A 73 00 01 */	addi r19, r19, 1
/* 804C4700  3A F7 00 02 */	addi r23, r23, 2
/* 804C4704  2C 13 00 10 */	cmpwi r19, 0x10
/* 804C4708  3B 18 00 48 */	addi r24, r24, 0x48
/* 804C470C  3A B5 00 01 */	addi r21, r21, 1
/* 804C4710  3A D6 00 04 */	addi r22, r22, 4
/* 804C4714  3A 31 00 01 */	addi r17, r17, 1
/* 804C4718  3B DE 00 04 */	addi r30, r30, 4
/* 804C471C  41 80 FE 14 */	blt lbl_804C4530
/* 804C4720  28 12 00 00 */	cmplwi r18, 0
/* 804C4724  41 82 00 08 */	beq lbl_804C472C
/* 804C4728  3A 52 00 02 */	addi r18, r18, 2
lbl_804C472C:
/* 804C472C  3A 94 00 01 */	addi r20, r20, 1
/* 804C4730  3B FF 00 04 */	addi r31, r31, 4
/* 804C4734  2C 14 00 10 */	cmpwi r20, 0x10
/* 804C4738  41 80 FD E4 */	blt lbl_804C451C
/* 804C473C  4B F4 7A D9 */	bl Matrix_pull
/* 804C4740  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804C4744  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804C4748  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804C474C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804C4750  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804C4754  39 61 00 90 */	addi r11, r1, 0x90
/* 804C4758  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804C475C  4B BD 67 89 */	bl __restore_gpr
/* 804C4760  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804C4764  7C 08 03 A6 */	mtlr r0
/* 804C4768  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804C476C  4E 80 00 20 */	blr 
