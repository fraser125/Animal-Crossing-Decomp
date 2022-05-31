lbl_804E4384:
/* 804E4384  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804E4388  7C 08 02 A6 */	mflr r0
/* 804E438C  90 01 00 74 */	stw r0, 0x74(r1)
/* 804E4390  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804E4394  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804E4398  39 61 00 60 */	addi r11, r1, 0x60
/* 804E439C  4B BB 6B 1D */	bl func_8009AEB8
/* 804E43A0  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 804E43A4  7C 7C 1B 78 */	mr r28, r3
/* 804E43A8  7C 9F 23 78 */	mr r31, r4
/* 804E43AC  82 C3 0C F8 */	lwz r22, 0xcf8(r3)
/* 804E43B0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 804E43B4  3B 7C 01 74 */	addi r27, r28, 0x174
/* 804E43B8  1C 80 03 40 */	mulli r4, r0, 0x340
/* 804E43BC  3B 44 03 98 */	addi r26, r4, 0x398
/* 804E43C0  7F 5C D2 14 */	add r26, r28, r26
/* 804E43C4  4B FF 11 31 */	bl Player_actor_Get_eye_tex_p
/* 804E43C8  7C 7D 1B 78 */	mr r29, r3
/* 804E43CC  7F 83 E3 78 */	mr r3, r28
/* 804E43D0  4B FF 11 51 */	bl Player_actor_Get_mouth_tex_p
/* 804E43D4  83 3F 00 00 */	lwz r25, 0(r31)
/* 804E43D8  7C 7E 1B 78 */	mr r30, r3
/* 804E43DC  3B 00 00 00 */	li r24, 0
/* 804E43E0  7F 23 CB 78 */	mr r3, r25
/* 804E43E4  4B F0 0D 25 */	bl _texture_z_light_fog_prim
/* 804E43E8  38 16 FF 8F */	addi r0, r22, -113
/* 804E43EC  82 F9 02 D0 */	lwz r23, 0x2d0(r25)
/* 804E43F0  28 00 00 02 */	cmplwi r0, 2
/* 804E43F4  40 81 00 0C */	ble lbl_804E4400
/* 804E43F8  2C 16 00 74 */	cmpwi r22, 0x74
/* 804E43FC  40 82 00 08 */	bne lbl_804E4404
lbl_804E4400:
/* 804E4400  3B 00 00 01 */	li r24, 1
lbl_804E4404:
/* 804E4404  2C 18 00 00 */	cmpwi r24, 0
/* 804E4408  41 82 00 50 */	beq lbl_804E4458
/* 804E440C  2C 16 00 71 */	cmpwi r22, 0x71
/* 804E4410  40 82 00 14 */	bne lbl_804E4424
/* 804E4414  A8 1C 0D 18 */	lha r0, 0xd18(r28)
/* 804E4418  7C 00 00 D0 */	neg r0, r0
/* 804E441C  7C 16 07 34 */	extsh r22, r0
/* 804E4420  48 00 00 28 */	b lbl_804E4448
lbl_804E4424:
/* 804E4424  2C 16 00 74 */	cmpwi r22, 0x74
/* 804E4428  40 82 00 14 */	bne lbl_804E443C
/* 804E442C  A8 1C 0D 26 */	lha r0, 0xd26(r28)
/* 804E4430  7C 00 00 D0 */	neg r0, r0
/* 804E4434  7C 16 07 34 */	extsh r22, r0
/* 804E4438  48 00 00 10 */	b lbl_804E4448
lbl_804E443C:
/* 804E443C  A8 1C 12 48 */	lha r0, 0x1248(r28)
/* 804E4440  7C 00 00 D0 */	neg r0, r0
/* 804E4444  7C 16 07 34 */	extsh r22, r0
lbl_804E4448:
/* 804E4448  4B F2 7D 8D */	bl Matrix_push
/* 804E444C  7E C3 B3 78 */	mr r3, r22
/* 804E4450  38 80 00 01 */	li r4, 1
/* 804E4454  4B F2 83 9D */	bl Matrix_RotateZ
lbl_804E4458:
/* 804E4458  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 804E445C  7F E3 FB 78 */	mr r3, r31
/* 804E4460  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 804E4464  90 17 00 00 */	stw r0, 0(r23)
/* 804E4468  38 85 00 24 */	addi r4, r5, 0x24
/* 804E446C  38 05 00 28 */	addi r0, r5, 0x28
/* 804E4470  93 B7 00 04 */	stw r29, 4(r23)
/* 804E4474  90 97 00 08 */	stw r4, 8(r23)
/* 804E4478  93 D7 00 0C */	stw r30, 0xc(r23)
/* 804E447C  3A F7 00 10 */	addi r23, r23, 0x10
/* 804E4480  7E F6 BB 78 */	mr r22, r23
/* 804E4484  90 17 00 00 */	stw r0, 0(r23)
/* 804E4488  3A F7 00 08 */	addi r23, r23, 8
/* 804E448C  4B EF 4E F9 */	bl mPlib_get_player_tex_p
/* 804E4490  90 76 00 04 */	stw r3, 4(r22)
/* 804E4494  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB06002C@ha */
/* 804E4498  38 03 00 2C */	addi r0, r3, 0x002C /* 0xDB06002C@l */
/* 804E449C  7E F6 BB 78 */	mr r22, r23
/* 804E44A0  90 17 00 00 */	stw r0, 0(r23)
/* 804E44A4  7F E3 FB 78 */	mr r3, r31
/* 804E44A8  3A F7 00 08 */	addi r23, r23, 8
/* 804E44AC  4B EF 4F 21 */	bl mPlib_get_player_pallet_p
/* 804E44B0  90 76 00 04 */	stw r3, 4(r22)
/* 804E44B4  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060030@ha */
/* 804E44B8  38 03 00 30 */	addi r0, r3, 0x0030 /* 0xDB060030@l */
/* 804E44BC  7E F6 BB 78 */	mr r22, r23
/* 804E44C0  90 17 00 00 */	stw r0, 0(r23)
/* 804E44C4  7F E3 FB 78 */	mr r3, r31
/* 804E44C8  3A F7 00 08 */	addi r23, r23, 8
/* 804E44CC  4B EF 4F 65 */	bl mPlib_get_player_face_pallet_p
/* 804E44D0  90 76 00 04 */	stw r3, 4(r22)
/* 804E44D4  92 F9 02 D0 */	stw r23, 0x2d0(r25)
/* 804E44D8  80 1C 12 50 */	lwz r0, 0x1250(r28)
/* 804E44DC  2C 00 00 00 */	cmpwi r0, 0
/* 804E44E0  41 82 01 C4 */	beq lbl_804E46A4
/* 804E44E4  3C 60 80 65 */	lis r3, lit_7314@ha /* 0x80648338@ha */
/* 804E44E8  C0 3C 12 54 */	lfs f1, 0x1254(r28)
/* 804E44EC  C0 03 83 38 */	lfs f0, lit_7314@l(r3)  /* 0x80648338@l */
/* 804E44F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 804E44F4  FC 00 00 1E */	fctiwz f0, f0
/* 804E44F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E44FC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 804E4500  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804E4504  41 82 00 14 */	beq lbl_804E4518
/* 804E4508  38 00 00 01 */	li r0, 1
/* 804E450C  90 1C 12 64 */	stw r0, 0x1264(r28)
/* 804E4510  90 1C 12 68 */	stw r0, 0x1268(r28)
/* 804E4514  48 00 01 6C */	b lbl_804E4680
lbl_804E4518:
/* 804E4518  7C 60 0E 70 */	srawi r0, r3, 1
/* 804E451C  7C 00 01 95 */	addze. r0, r0
/* 804E4520  41 80 01 54 */	blt lbl_804E4674
/* 804E4524  2C 00 00 04 */	cmpwi r0, 4
/* 804E4528  40 80 01 4C */	bge lbl_804E4674
/* 804E452C  3C 60 80 65 */	lis r3, color_data@ha /* 0x80648308@ha */
/* 804E4530  54 04 10 3A */	slwi r4, r0, 2
/* 804E4534  38 63 83 08 */	addi r3, r3, color_data@l /* 0x80648308@l */
/* 804E4538  3A FF 1A 8C */	addi r23, r31, 0x1a8c
/* 804E453C  7C 03 20 2E */	lwzx r0, r3, r4
/* 804E4540  7C A3 22 14 */	add r5, r3, r4
/* 804E4544  80 85 00 0C */	lwz r4, 0xc(r5)
/* 804E4548  38 61 00 1C */	addi r3, r1, 0x1c
/* 804E454C  90 1C 12 58 */	stw r0, 0x1258(r28)
/* 804E4550  80 05 00 18 */	lwz r0, 0x18(r5)
/* 804E4554  90 9C 12 5C */	stw r4, 0x125c(r28)
/* 804E4558  90 1C 12 60 */	stw r0, 0x1260(r28)
/* 804E455C  C0 3F 1A 98 */	lfs f1, 0x1a98(r31)
/* 804E4560  C0 1F 1A 8C */	lfs f0, 0x1a8c(r31)
/* 804E4564  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E4568  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E456C  C0 3F 1A 9C */	lfs f1, 0x1a9c(r31)
/* 804E4570  C0 1F 1A 90 */	lfs f0, 0x1a90(r31)
/* 804E4574  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E4578  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E457C  C0 3F 1A A0 */	lfs f1, 0x1aa0(r31)
/* 804E4580  C0 1F 1A 94 */	lfs f0, 0x1a94(r31)
/* 804E4584  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E4588  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E458C  4B F2 48 91 */	bl Math3DVecLength
/* 804E4590  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E4594  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E4598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E459C  40 81 00 C8 */	ble lbl_804E4664
/* 804E45A0  C0 9C 00 28 */	lfs f4, 0x28(r28)
/* 804E45A4  3C 60 80 65 */	lis r3, lit_7317@ha /* 0x80648344@ha */
/* 804E45A8  C0 77 00 00 */	lfs f3, 0(r23)
/* 804E45AC  38 A3 83 44 */	addi r5, r3, lit_7317@l /* 0x80648344@l */
/* 804E45B0  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 804E45B4  3C 60 80 65 */	lis r3, lit_7319@ha /* 0x8064834C@ha */
/* 804E45B8  C0 17 00 04 */	lfs f0, 4(r23)
/* 804E45BC  EC 84 18 28 */	fsubs f4, f4, f3
/* 804E45C0  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 804E45C4  3C 80 80 65 */	lis r4, lit_7318@ha /* 0x80648348@ha */
/* 804E45C8  EC 42 00 28 */	fsubs f2, f2, f0
/* 804E45CC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E45D0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 804E45D4  C0 DC 00 30 */	lfs f6, 0x30(r28)
/* 804E45D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804E45DC  C0 B7 00 08 */	lfs f5, 8(r23)
/* 804E45E0  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 804E45E4  EC A6 28 28 */	fsubs f5, f6, f5
/* 804E45E8  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E45EC  EC 63 00 2A */	fadds f3, f3, f0
/* 804E45F0  C0 03 83 4C */	lfs f0, lit_7319@l(r3)  /* 0x8064834C@l */
/* 804E45F4  3C A0 80 65 */	lis r5, lit_7315@ha /* 0x8064833C@ha */
/* 804E45F8  EC 85 01 32 */	fmuls f4, f5, f4
/* 804E45FC  EC 41 10 28 */	fsubs f2, f1, f2
/* 804E4600  3C 60 80 65 */	lis r3, lit_7316@ha /* 0x80648340@ha */
/* 804E4604  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E4608  C0 C5 83 3C */	lfs f6, lit_7315@l(r5)  /* 0x8064833C@l */
/* 804E460C  EC 84 18 2A */	fadds f4, f4, f3
/* 804E4610  C0 64 83 48 */	lfs f3, lit_7318@l(r4)  /* 0x80648348@l */
/* 804E4614  EC A4 08 24 */	fdivs f5, f4, f1
/* 804E4618  C0 83 83 40 */	lfs f4, lit_7316@l(r3)  /* 0x80648340@l */
/* 804E461C  EC A1 28 28 */	fsubs f5, f1, f5
/* 804E4620  EC 42 00 F2 */	fmuls f2, f2, f3
/* 804E4624  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804E4628  EC 25 08 24 */	fdivs f1, f5, f1
/* 804E462C  EC A6 08 2A */	fadds f5, f6, f1
/* 804E4630  EC 24 10 2A */	fadds f1, f4, f2
/* 804E4634  FC 40 28 1E */	fctiwz f2, f5
/* 804E4638  EC 01 00 2A */	fadds f0, f1, f0
/* 804E463C  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 804E4640  FC 00 00 1E */	fctiwz f0, f0
/* 804E4644  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E4648  90 1C 12 64 */	stw r0, 0x1264(r28)
/* 804E464C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E4650  80 7C 12 64 */	lwz r3, 0x1264(r28)
/* 804E4654  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E4658  7C 03 02 14 */	add r0, r3, r0
/* 804E465C  90 1C 12 68 */	stw r0, 0x1268(r28)
/* 804E4660  48 00 00 20 */	b lbl_804E4680
lbl_804E4664:
/* 804E4664  38 00 00 01 */	li r0, 1
/* 804E4668  90 1C 12 64 */	stw r0, 0x1264(r28)
/* 804E466C  90 1C 12 68 */	stw r0, 0x1268(r28)
/* 804E4670  48 00 00 10 */	b lbl_804E4680
lbl_804E4674:
/* 804E4674  38 00 00 01 */	li r0, 1
/* 804E4678  90 1C 12 64 */	stw r0, 0x1264(r28)
/* 804E467C  90 1C 12 68 */	stw r0, 0x1268(r28)
lbl_804E4680:
/* 804E4680  80 79 02 D0 */	lwz r3, 0x2d0(r25)
/* 804E4684  38 E0 00 FF */	li r7, 0xff
/* 804E4688  80 9C 12 58 */	lwz r4, 0x1258(r28)
/* 804E468C  80 BC 12 5C */	lwz r5, 0x125c(r28)
/* 804E4690  80 DC 12 60 */	lwz r6, 0x1260(r28)
/* 804E4694  81 1C 12 64 */	lwz r8, 0x1264(r28)
/* 804E4698  81 3C 12 68 */	lwz r9, 0x1268(r28)
/* 804E469C  4B F0 09 C5 */	bl gfx_set_fog_nosync
/* 804E46A0  90 79 02 D0 */	stw r3, 0x2d0(r25)
lbl_804E46A4:
/* 804E46A4  3C 60 80 4E */	lis r3, Player_actor_draw_Before@ha /* 0x804E3FB4@ha */
/* 804E46A8  3C 80 80 4E */	lis r4, Player_actor_draw_After@ha /* 0x804E4310@ha */
/* 804E46AC  38 C3 3F B4 */	addi r6, r3, Player_actor_draw_Before@l /* 0x804E3FB4@l */
/* 804E46B0  7F 45 D3 78 */	mr r5, r26
/* 804E46B4  38 E4 43 10 */	addi r7, r4, Player_actor_draw_After@l /* 0x804E4310@l */
/* 804E46B8  7F E3 FB 78 */	mr r3, r31
/* 804E46BC  7F 64 DB 78 */	mr r4, r27
/* 804E46C0  7F 88 E3 78 */	mr r8, r28
/* 804E46C4  4B E8 D0 75 */	bl cKF_Si3_draw_R_SV
/* 804E46C8  80 1C 12 50 */	lwz r0, 0x1250(r28)
/* 804E46CC  2C 00 00 00 */	cmpwi r0, 0
/* 804E46D0  41 82 00 28 */	beq lbl_804E46F8
/* 804E46D4  80 79 02 D0 */	lwz r3, 0x2d0(r25)
/* 804E46D8  38 E0 00 00 */	li r7, 0
/* 804E46DC  88 9F 1D 97 */	lbz r4, 0x1d97(r31)
/* 804E46E0  88 BF 1D 98 */	lbz r5, 0x1d98(r31)
/* 804E46E4  88 DF 1D 99 */	lbz r6, 0x1d99(r31)
/* 804E46E8  A9 1F 1D 9A */	lha r8, 0x1d9a(r31)
/* 804E46EC  A9 3F 1D 9C */	lha r9, 0x1d9c(r31)
/* 804E46F0  4B F0 09 71 */	bl gfx_set_fog_nosync
/* 804E46F4  90 79 02 D0 */	stw r3, 0x2d0(r25)
lbl_804E46F8:
/* 804E46F8  7F 83 E3 78 */	mr r3, r28
/* 804E46FC  7F E4 FB 78 */	mr r4, r31
/* 804E4700  4B FF F6 8D */	bl Player_actor_Item_draw
/* 804E4704  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E4708  7F E3 FB 78 */	mr r3, r31
/* 804E470C  C3 E4 65 68 */	lfs f31, lit_604@l(r4)  /* 0x80646568@l */
/* 804E4710  3A E0 00 00 */	li r23, 0
/* 804E4714  3B 20 00 00 */	li r25, 0
/* 804E4718  3B 40 00 00 */	li r26, 0
/* 804E471C  3B 60 00 00 */	li r27, 0
/* 804E4720  4B EF 4F 51 */	bl mPlib_get_player_actor_main_index
/* 804E4724  2C 03 00 1E */	cmpwi r3, 0x1e
/* 804E4728  40 82 00 20 */	bne lbl_804E4748
/* 804E472C  80 1C 0D 4C */	lwz r0, 0xd4c(r28)
/* 804E4730  2C 00 00 00 */	cmpwi r0, 0
/* 804E4734  40 82 00 A8 */	bne lbl_804E47DC
/* 804E4738  A2 FC 0D 44 */	lhz r23, 0xd44(r28)
/* 804E473C  3B 3C 0D 24 */	addi r25, r28, 0xd24
/* 804E4740  C3 FC 0D 3C */	lfs f31, 0xd3c(r28)
/* 804E4744  48 00 00 98 */	b lbl_804E47DC
lbl_804E4748:
/* 804E4748  7F E3 FB 78 */	mr r3, r31
/* 804E474C  4B EF 4F 25 */	bl mPlib_get_player_actor_main_index
/* 804E4750  2C 03 00 1F */	cmpwi r3, 0x1f
/* 804E4754  40 82 00 2C */	bne lbl_804E4780
/* 804E4758  38 7C 0D 18 */	addi r3, r28, 0xd18
/* 804E475C  80 1C 0D 44 */	lwz r0, 0xd44(r28)
/* 804E4760  2C 00 00 00 */	cmpwi r0, 0
/* 804E4764  40 82 00 78 */	bne lbl_804E47DC
/* 804E4768  A2 E3 00 28 */	lhz r23, 0x28(r3)
/* 804E476C  7C 7B 1B 78 */	mr r27, r3
/* 804E4770  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 804E4774  3B 23 00 0C */	addi r25, r3, 0xc
/* 804E4778  3B 40 00 01 */	li r26, 1
/* 804E477C  48 00 00 60 */	b lbl_804E47DC
lbl_804E4780:
/* 804E4780  7F E3 FB 78 */	mr r3, r31
/* 804E4784  4B EF 4E ED */	bl mPlib_get_player_actor_main_index
/* 804E4788  2C 03 00 3E */	cmpwi r3, 0x3e
/* 804E478C  40 82 00 34 */	bne lbl_804E47C0
/* 804E4790  3C 60 80 65 */	lis r3, lit_7320@ha /* 0x80648350@ha */
/* 804E4794  C0 3C 01 84 */	lfs f1, 0x184(r28)
/* 804E4798  C0 03 83 50 */	lfs f0, lit_7320@l(r3)  /* 0x80648350@l */
/* 804E479C  A2 FC 0D 24 */	lhz r23, 0xd24(r28)
/* 804E47A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E47A4  C3 FC 0D 28 */	lfs f31, 0xd28(r28)
/* 804E47A8  4C 40 13 82 */	cror 2, 0, 2
/* 804E47AC  40 82 00 0C */	bne lbl_804E47B8
/* 804E47B0  3B 3C 10 04 */	addi r25, r28, 0x1004
/* 804E47B4  48 00 00 28 */	b lbl_804E47DC
lbl_804E47B8:
/* 804E47B8  3B 3C 10 5C */	addi r25, r28, 0x105c
/* 804E47BC  48 00 00 20 */	b lbl_804E47DC
lbl_804E47C0:
/* 804E47C0  7F E3 FB 78 */	mr r3, r31
/* 804E47C4  4B EF 4E AD */	bl mPlib_get_player_actor_main_index
/* 804E47C8  2C 03 00 3F */	cmpwi r3, 0x3f
/* 804E47CC  40 82 00 10 */	bne lbl_804E47DC
/* 804E47D0  A2 FC 0D 24 */	lhz r23, 0xd24(r28)
/* 804E47D4  3B 3C 10 5C */	addi r25, r28, 0x105c
/* 804E47D8  C3 FC 0D 28 */	lfs f31, 0xd28(r28)
lbl_804E47DC:
/* 804E47DC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E47E0  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E47E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E47E8  40 81 01 14 */	ble lbl_804E48FC
/* 804E47EC  56 E0 04 3F */	clrlwi. r0, r23, 0x10
/* 804E47F0  41 82 01 0C */	beq lbl_804E48FC
/* 804E47F4  28 19 00 00 */	cmplwi r25, 0
/* 804E47F8  41 82 01 04 */	beq lbl_804E48FC
/* 804E47FC  4B EC 04 D1 */	bl mFI_GetFieldId
/* 804E4800  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 804E4804  40 82 00 50 */	bne lbl_804E4854
/* 804E4808  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E480C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E4810  3C 63 00 02 */	addis r3, r3, 2
/* 804E4814  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804E4818  28 03 00 00 */	cmplwi r3, 0
/* 804E481C  41 82 00 E0 */	beq lbl_804E48FC
/* 804E4820  81 83 00 08 */	lwz r12, 8(r3)
/* 804E4824  28 0C 00 00 */	cmplwi r12, 0
/* 804E4828  41 82 00 D4 */	beq lbl_804E48FC
/* 804E482C  FC 20 F8 90 */	fmr f1, f31
/* 804E4830  7F E3 FB 78 */	mr r3, r31
/* 804E4834  7E E4 BB 78 */	mr r4, r23
/* 804E4838  7F 25 CB 78 */	mr r5, r25
/* 804E483C  38 C0 00 00 */	li r6, 0
/* 804E4840  38 E0 00 00 */	li r7, 0
/* 804E4844  39 00 00 00 */	li r8, 0
/* 804E4848  7D 89 03 A6 */	mtctr r12
/* 804E484C  4E 80 04 21 */	bctrl 
/* 804E4850  48 00 00 AC */	b lbl_804E48FC
lbl_804E4854:
/* 804E4854  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E4858  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E485C  3F 83 00 02 */	addis r28, r3, 2
/* 804E4860  80 7C 60 BC */	lwz r3, 0x60bc(r28)
/* 804E4864  28 03 00 00 */	cmplwi r3, 0
/* 804E4868  41 82 00 94 */	beq lbl_804E48FC
/* 804E486C  80 03 00 00 */	lwz r0, 0(r3)
/* 804E4870  28 00 00 00 */	cmplwi r0, 0
/* 804E4874  41 82 00 88 */	beq lbl_804E48FC
/* 804E4878  28 1B 00 00 */	cmplwi r27, 0
/* 804E487C  41 82 00 58 */	beq lbl_804E48D4
/* 804E4880  80 DB 00 00 */	lwz r6, 0(r27)
/* 804E4884  38 61 00 08 */	addi r3, r1, 8
/* 804E4888  80 1B 00 04 */	lwz r0, 4(r27)
/* 804E488C  38 81 00 0C */	addi r4, r1, 0xc
/* 804E4890  38 A1 00 10 */	addi r5, r1, 0x10
/* 804E4894  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804E4898  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E489C  80 1B 00 08 */	lwz r0, 8(r27)
/* 804E48A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E48A4  4B EC 0A C5 */	bl mFI_Wpos2UtNum
/* 804E48A8  2C 03 00 00 */	cmpwi r3, 0
/* 804E48AC  41 82 00 28 */	beq lbl_804E48D4
/* 804E48B0  80 9C 60 BC */	lwz r4, 0x60bc(r28)
/* 804E48B4  7F 45 D3 78 */	mr r5, r26
/* 804E48B8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804E48BC  81 84 00 08 */	lwz r12, 8(r4)
/* 804E48C0  80 81 00 08 */	lwz r4, 8(r1)
/* 804E48C4  7D 89 03 A6 */	mtctr r12
/* 804E48C8  4E 80 04 21 */	bctrl 
/* 804E48CC  7C 66 1B 78 */	mr r6, r3
/* 804E48D0  48 00 00 08 */	b lbl_804E48D8
lbl_804E48D4:
/* 804E48D4  38 C0 00 00 */	li r6, 0
lbl_804E48D8:
/* 804E48D8  80 BC 60 BC */	lwz r5, 0x60bc(r28)
/* 804E48DC  FC 20 F8 90 */	fmr f1, f31
/* 804E48E0  7F E3 FB 78 */	mr r3, r31
/* 804E48E4  7E E4 BB 78 */	mr r4, r23
/* 804E48E8  81 85 00 00 */	lwz r12, 0(r5)
/* 804E48EC  7F 25 CB 78 */	mr r5, r25
/* 804E48F0  7F 47 D3 78 */	mr r7, r26
/* 804E48F4  7D 89 03 A6 */	mtctr r12
/* 804E48F8  4E 80 04 21 */	bctrl 
lbl_804E48FC:
/* 804E48FC  2C 18 00 00 */	cmpwi r24, 0
/* 804E4900  41 82 00 08 */	beq lbl_804E4908
/* 804E4904  4B F2 79 11 */	bl Matrix_pull
lbl_804E4908:
/* 804E4908  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804E490C  39 61 00 60 */	addi r11, r1, 0x60
/* 804E4910  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804E4914  4B BB 65 F1 */	bl func_8009AF04
/* 804E4918  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804E491C  7C 08 03 A6 */	mtlr r0
/* 804E4920  38 21 00 70 */	addi r1, r1, 0x70
/* 804E4924  4E 80 00 20 */	blr 
