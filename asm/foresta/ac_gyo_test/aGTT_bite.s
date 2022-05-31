lbl_805A4358:
/* 805A4358  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805A435C  7C 08 02 A6 */	mflr r0
/* 805A4360  90 01 00 54 */	stw r0, 0x54(r1)
/* 805A4364  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805A4368  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805A436C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805A4370  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805A4374  39 61 00 30 */	addi r11, r1, 0x30
/* 805A4378  4B AF 6B 5D */	bl func_8009AED4
/* 805A437C  C3 E3 00 2C */	lfs f31, 0x2c(r3)
/* 805A4380  7C 7F 1B 78 */	mr r31, r3
/* 805A4384  83 C3 01 CC */	lwz r30, 0x1cc(r3)
/* 805A4388  7C 9D 23 78 */	mr r29, r4
/* 805A438C  C3 C3 00 40 */	lfs f30, 0x40(r3)
/* 805A4390  4B FF F0 F1 */	bl aGTT_warp_event
/* 805A4394  2C 03 00 00 */	cmpwi r3, 0
/* 805A4398  40 82 02 5C */	bne lbl_805A45F4
/* 805A439C  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A43A0  2C 00 00 04 */	cmpwi r0, 4
/* 805A43A4  40 82 01 5C */	bne lbl_805A4500
/* 805A43A8  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 805A43AC  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 805A43B0  28 00 00 0D */	cmplwi r0, 0xd
/* 805A43B4  40 82 00 40 */	bne lbl_805A43F4
/* 805A43B8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 805A43BC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A43C0  90 7F 00 28 */	stw r3, 0x28(r31)
/* 805A43C4  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 805A43C8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A43CC  90 1F 00 30 */	stw r0, 0x30(r31)
/* 805A43D0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805A43D4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A43D8  40 80 00 08 */	bge lbl_805A43E0
/* 805A43DC  D3 FF 00 2C */	stfs f31, 0x2c(r31)
lbl_805A43E0:
/* 805A43E0  7F E3 FB 78 */	mr r3, r31
/* 805A43E4  38 BF 00 28 */	addi r5, r31, 0x28
/* 805A43E8  38 80 00 24 */	li r4, 0x24
/* 805A43EC  48 08 9B 59 */	bl sAdo_OngenPos
/* 805A43F0  48 00 01 EC */	b lbl_805A45DC
lbl_805A43F4:
/* 805A43F4  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 805A43F8  3C 60 80 6C */	lis r3, rr_812@ha /* 0x806C3F4C@ha */
/* 805A43FC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A4400  3C 80 80 65 */	lis r4, lit_594@ha /* 0x8064A3E0@ha */
/* 805A4404  38 E3 3F 4C */	addi r7, r3, rr_812@l /* 0x806C3F4C@l */
/* 805A4408  C0 24 A3 E0 */	lfs f1, lit_594@l(r4)  /* 0x8064A3E0@l */
/* 805A440C  90 C1 00 08 */	stw r6, 8(r1)
/* 805A4410  7F A5 EB 78 */	mr r5, r29
/* 805A4414  38 61 00 14 */	addi r3, r1, 0x14
/* 805A4418  38 81 00 08 */	addi r4, r1, 8
/* 805A441C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A4420  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A4424  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A4428  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A442C  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 805A4430  54 00 10 3A */	slwi r0, r0, 2
/* 805A4434  7C 47 04 2E */	lfsx f2, r7, r0
/* 805A4438  4B FF EA F1 */	bl aGTT_pos_calc
/* 805A443C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805A4440  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 805A4444  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805A4448  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805A444C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805A4450  40 80 00 08 */	bge lbl_805A4458
/* 805A4454  D3 DF 00 2C */	stfs f30, 0x2c(r31)
lbl_805A4458:
/* 805A4458  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 805A445C  7F E3 FB 78 */	mr r3, r31
/* 805A4460  4B FF EA BD */	bl aGTT_set_angle
/* 805A4464  7F E3 FB 78 */	mr r3, r31
/* 805A4468  38 BF 00 28 */	addi r5, r31, 0x28
/* 805A446C  38 80 00 24 */	li r4, 0x24
/* 805A4470  48 08 9A D5 */	bl sAdo_OngenPos
/* 805A4474  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A4478  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A447C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805A4480  A8 9F 01 DC */	lha r4, 0x1dc(r31)
/* 805A4484  3C A5 00 02 */	addis r5, r5, 2
/* 805A4488  80 A5 60 B8 */	lwz r5, 0x60b8(r5)
/* 805A448C  81 85 00 10 */	lwz r12, 0x10(r5)
/* 805A4490  7D 89 03 A6 */	mtctr r12
/* 805A4494  4E 80 04 21 */	bctrl 
/* 805A4498  A8 7F 02 2C */	lha r3, 0x22c(r31)
/* 805A449C  2C 03 00 00 */	cmpwi r3, 0
/* 805A44A0  40 82 00 0C */	bne lbl_805A44AC
/* 805A44A4  38 00 00 00 */	li r0, 0
/* 805A44A8  48 00 00 10 */	b lbl_805A44B8
lbl_805A44AC:
/* 805A44AC  38 03 FF FF */	addi r0, r3, -1
/* 805A44B0  B0 1F 02 2C */	sth r0, 0x22c(r31)
/* 805A44B4  7C 00 07 34 */	extsh r0, r0
lbl_805A44B8:
/* 805A44B8  2C 00 00 00 */	cmpwi r0, 0
/* 805A44BC  40 82 01 20 */	bne lbl_805A45DC
/* 805A44C0  3C 60 80 65 */	lis r3, lit_731@ha /* 0x8064A3FC@ha */
/* 805A44C4  C0 23 A3 FC */	lfs f1, lit_731@l(r3)  /* 0x8064A3FC@l */
/* 805A44C8  4B FF EE D5 */	bl aGTT_random_check
/* 805A44CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A44D0  41 82 00 24 */	beq lbl_805A44F4
/* 805A44D4  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A44D8  3C 60 80 6C */	lis r3, eff_arg@ha /* 0x806C3F3C@ha */
/* 805A44DC  38 A3 3F 3C */	addi r5, r3, eff_arg@l /* 0x806C3F3C@l */
/* 805A44E0  7F E3 FB 78 */	mr r3, r31
/* 805A44E4  54 00 08 3C */	slwi r0, r0, 1
/* 805A44E8  7F A4 EB 78 */	mr r4, r29
/* 805A44EC  7C A5 02 AE */	lhax r5, r5, r0
/* 805A44F0  4B FF EB 31 */	bl aGTT_effect_sibuki
lbl_805A44F4:
/* 805A44F4  38 00 00 03 */	li r0, 3
/* 805A44F8  B0 1F 02 2C */	sth r0, 0x22c(r31)
/* 805A44FC  48 00 00 E0 */	b lbl_805A45DC
lbl_805A4500:
/* 805A4500  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805A4504  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 805A4508  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805A450C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805A4510  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805A4514  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805A4518  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 805A451C  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 805A4520  28 00 00 0D */	cmplwi r0, 0xd
/* 805A4524  40 82 00 30 */	bne lbl_805A4554
/* 805A4528  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 805A452C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A4530  90 7F 00 28 */	stw r3, 0x28(r31)
/* 805A4534  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 805A4538  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A453C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 805A4540  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805A4544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A4548  40 80 00 18 */	bge lbl_805A4560
/* 805A454C  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 805A4550  48 00 00 10 */	b lbl_805A4560
lbl_805A4554:
/* 805A4554  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 805A4558  40 80 00 08 */	bge lbl_805A4560
/* 805A455C  D0 5F 00 2C */	stfs f2, 0x2c(r31)
lbl_805A4560:
/* 805A4560  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 805A4564  7F E3 FB 78 */	mr r3, r31
/* 805A4568  4B FF E9 B5 */	bl aGTT_set_angle
/* 805A456C  7F E3 FB 78 */	mr r3, r31
/* 805A4570  4B FF EF A9 */	bl aGTT_position_calc
/* 805A4574  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A4578  2C 00 00 05 */	cmpwi r0, 5
/* 805A457C  40 82 00 24 */	bne lbl_805A45A0
/* 805A4580  3C 80 80 65 */	lis r4, lit_458@ha /* 0x8064A3CC@ha */
/* 805A4584  7F E3 FB 78 */	mr r3, r31
/* 805A4588  38 A4 A3 CC */	addi r5, r4, lit_458@l /* 0x8064A3CC@l */
/* 805A458C  38 80 00 06 */	li r4, 6
/* 805A4590  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A4594  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 805A4598  48 00 06 AD */	bl aGTT_setupAction
/* 805A459C  48 00 00 40 */	b lbl_805A45DC
lbl_805A45A0:
/* 805A45A0  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 805A45A4  2C 03 00 00 */	cmpwi r3, 0
/* 805A45A8  40 82 00 0C */	bne lbl_805A45B4
/* 805A45AC  38 00 00 00 */	li r0, 0
/* 805A45B0  48 00 00 0C */	b lbl_805A45BC
lbl_805A45B4:
/* 805A45B4  38 03 FF FF */	addi r0, r3, -1
/* 805A45B8  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_805A45BC:
/* 805A45BC  2C 00 00 00 */	cmpwi r0, 0
/* 805A45C0  40 82 00 1C */	bne lbl_805A45DC
/* 805A45C4  38 00 00 00 */	li r0, 0
/* 805A45C8  7F E3 FB 78 */	mr r3, r31
/* 805A45CC  90 1E 02 88 */	stw r0, 0x288(r30)
/* 805A45D0  7F A4 EB 78 */	mr r4, r29
/* 805A45D4  38 A0 00 00 */	li r5, 0
/* 805A45D8  4B FF EB 95 */	bl aGTT_kage_make_actor
lbl_805A45DC:
/* 805A45DC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805A45E0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A45E4  90 7E 02 74 */	stw r3, 0x274(r30)
/* 805A45E8  90 1E 02 78 */	stw r0, 0x278(r30)
/* 805A45EC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A45F0  90 1E 02 7C */	stw r0, 0x27c(r30)
lbl_805A45F4:
/* 805A45F4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805A45F8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805A45FC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805A4600  39 61 00 30 */	addi r11, r1, 0x30
/* 805A4604  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805A4608  4B AF 69 19 */	bl func_8009AF20
/* 805A460C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A4610  7C 08 03 A6 */	mtlr r0
/* 805A4614  38 21 00 50 */	addi r1, r1, 0x50
/* 805A4618  4E 80 00 20 */	blr 
