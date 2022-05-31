lbl_804FD3EC:
/* 804FD3EC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804FD3F0  7C 08 02 A6 */	mflr r0
/* 804FD3F4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804FD3F8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 804FD3FC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 804FD400  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 804FD404  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 804FD408  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 804FD40C  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 804FD410  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 804FD414  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 804FD418  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 804FD41C  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 804FD420  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 804FD424  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 804FD428  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 804FD42C  F3 21 00 48 */	psq_st f25, 72(r1), 0, 0 /* qr0 */
/* 804FD430  39 61 00 40 */	addi r11, r1, 0x40
/* 804FD434  4B B9 DA A1 */	bl func_8009AED4
/* 804FD438  7C 7D 1B 78 */	mr r29, r3
/* 804FD43C  7C 9E 23 78 */	mr r30, r4
/* 804FD440  38 9D 00 28 */	addi r4, r29, 0x28
/* 804FD444  4B FD 9A 91 */	bl Player_actor_Culc_over_speed_normalize_NoneZero
/* 804FD448  FF A0 08 90 */	fmr f29, f1
/* 804FD44C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804FD450  4B FD AB 61 */	bl Player_actor_Get_DemoPosition
/* 804FD454  C3 C1 00 1C */	lfs f30, 0x1c(r1)
/* 804FD458  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 804FD45C  C3 81 00 24 */	lfs f28, 0x24(r1)
/* 804FD460  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 804FD464  EF 7E 08 28 */	fsubs f27, f30, f1
/* 804FD468  EF 5C 00 28 */	fsubs f26, f28, f0
/* 804FD46C  4B FD 7C 79 */	bl Player_actor_Get_DemoMoveSpeedF
/* 804FD470  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FD474  FF E0 08 90 */	fmr f31, f1
/* 804FD478  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804FD47C  AB FD 00 36 */	lha r31, 0x36(r29)
/* 804FD480  FC 00 D8 00 */	fcmpu cr0, f0, f27
/* 804FD484  40 82 00 0C */	bne lbl_804FD490
/* 804FD488  FC 00 D0 00 */	fcmpu cr0, f0, f26
/* 804FD48C  41 82 01 34 */	beq lbl_804FD5C0
lbl_804FD490:
/* 804FD490  3C 60 80 65 */	lis r3, lit_7898@ha /* 0x8064837C@ha */
/* 804FD494  FC 20 D0 90 */	fmr f1, f26
/* 804FD498  C0 03 83 7C */	lfs f0, lit_7898@l(r3)  /* 0x8064837C@l */
/* 804FD49C  FC 40 D8 90 */	fmr f2, f27
/* 804FD4A0  EF 3F 00 24 */	fdivs f25, f31, f0
/* 804FD4A4  4B F0 EB 5D */	bl atans_table
/* 804FD4A8  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FD4AC  7C 7F 1B 78 */	mr r31, r3
/* 804FD4B0  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FD4B4  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 804FD4B8  4C 41 13 82 */	cror 2, 1, 2
/* 804FD4BC  40 82 00 10 */	bne lbl_804FD4CC
/* 804FD4C0  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FD4C4  C0 43 6C 4C */	lfs f2, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804FD4C8  48 00 00 40 */	b lbl_804FD508
lbl_804FD4CC:
/* 804FD4CC  3C 60 80 65 */	lis r3, lit_7851@ha /* 0x80648368@ha */
/* 804FD4D0  C0 03 83 68 */	lfs f0, lit_7851@l(r3)  /* 0x80648368@l */
/* 804FD4D4  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 804FD4D8  4C 40 13 82 */	cror 2, 0, 2
/* 804FD4DC  40 82 00 10 */	bne lbl_804FD4EC
/* 804FD4E0  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804FD4E4  C0 43 66 68 */	lfs f2, lit_790@l(r3)  /* 0x80646668@l */
/* 804FD4E8  48 00 00 20 */	b lbl_804FD508
lbl_804FD4EC:
/* 804FD4EC  3C 60 80 65 */	lis r3, lit_7852@ha /* 0x8064836C@ha */
/* 804FD4F0  EC 19 00 28 */	fsubs f0, f25, f0
/* 804FD4F4  C0 23 83 6C */	lfs f1, lit_7852@l(r3)  /* 0x8064836C@l */
/* 804FD4F8  3C 80 80 64 */	lis r4, lit_790@ha /* 0x80646668@ha */
/* 804FD4FC  C0 44 66 68 */	lfs f2, lit_790@l(r4)  /* 0x80646668@l */
/* 804FD500  EC 01 00 32 */	fmuls f0, f1, f0
/* 804FD504  EC 42 00 2A */	fadds f2, f2, f0
lbl_804FD508:
/* 804FD508  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FD50C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FD510  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804FD514  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804FD518  EC 81 10 28 */	fsubs f4, f1, f2
/* 804FD51C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804FD520  40 81 00 68 */	ble lbl_804FD588
/* 804FD524  FC 20 20 34 */	frsqrte f1, f4
/* 804FD528  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FD52C  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804FD530  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804FD534  C8 64 00 00 */	lfd f3, 0(r4)
/* 804FD538  FC 01 00 72 */	fmul f0, f1, f1
/* 804FD53C  C8 43 69 FC */	lfd f2, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804FD540  FC 23 00 72 */	fmul f1, f3, f1
/* 804FD544  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD548  FC 02 00 28 */	fsub f0, f2, f0
/* 804FD54C  FC 21 00 32 */	fmul f1, f1, f0
/* 804FD550  FC 01 00 72 */	fmul f0, f1, f1
/* 804FD554  FC 23 00 72 */	fmul f1, f3, f1
/* 804FD558  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD55C  FC 02 00 28 */	fsub f0, f2, f0
/* 804FD560  FC 21 00 32 */	fmul f1, f1, f0
/* 804FD564  FC 01 00 72 */	fmul f0, f1, f1
/* 804FD568  FC 23 00 72 */	fmul f1, f3, f1
/* 804FD56C  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD570  FC 02 00 28 */	fsub f0, f2, f0
/* 804FD574  FC 01 00 32 */	fmul f0, f1, f0
/* 804FD578  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD57C  FC 00 00 18 */	frsp f0, f0
/* 804FD580  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804FD584  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_804FD588:
/* 804FD588  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FD58C  7F E4 FB 78 */	mr r4, r31
/* 804FD590  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FD594  38 7D 00 36 */	addi r3, r29, 0x36
/* 804FD598  C0 05 00 00 */	lfs f0, 0(r5)
/* 804FD59C  38 A0 09 C4 */	li r5, 0x9c4
/* 804FD5A0  38 C0 00 32 */	li r6, 0x32
/* 804FD5A4  EC 20 20 28 */	fsubs f1, f0, f4
/* 804FD5A8  4B EB DD 69 */	bl add_calc_short_angle2
/* 804FD5AC  80 1D 0D B4 */	lwz r0, 0xdb4(r29)
/* 804FD5B0  2C 00 00 00 */	cmpwi r0, 0
/* 804FD5B4  41 82 00 0C */	beq lbl_804FD5C0
/* 804FD5B8  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 804FD5BC  B0 1D 00 DE */	sth r0, 0xde(r29)
lbl_804FD5C0:
/* 804FD5C0  EF FF E8 24 */	fdivs f31, f31, f29
/* 804FD5C4  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 804FD5C8  7C 00 F8 50 */	subf r0, r0, r31
/* 804FD5CC  7C 03 07 34 */	extsh r3, r0
/* 804FD5D0  4B EB D4 CD */	bl cos_s
/* 804FD5D4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FD5D8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804FD5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD5E0  4C 40 13 82 */	cror 2, 0, 2
/* 804FD5E4  40 82 00 0C */	bne lbl_804FD5F0
/* 804FD5E8  FF E0 00 90 */	fmr f31, f0
/* 804FD5EC  48 00 00 08 */	b lbl_804FD5F4
lbl_804FD5F0:
/* 804FD5F0  EF FF 00 72 */	fmuls f31, f31, f1
lbl_804FD5F4:
/* 804FD5F4  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 804FD5F8  FC 01 F8 00 */	fcmpu cr0, f1, f31
/* 804FD5FC  41 82 00 48 */	beq lbl_804FD644
/* 804FD600  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804FD604  40 80 00 20 */	bge lbl_804FD624
/* 804FD608  3C 60 80 65 */	lis r3, lit_7854@ha /* 0x80648374@ha */
/* 804FD60C  C0 03 83 74 */	lfs f0, lit_7854@l(r3)  /* 0x80648374@l */
/* 804FD610  EC 21 00 2A */	fadds f1, f1, f0
/* 804FD614  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804FD618  40 81 00 28 */	ble lbl_804FD640
/* 804FD61C  FC 20 F8 90 */	fmr f1, f31
/* 804FD620  48 00 00 20 */	b lbl_804FD640
lbl_804FD624:
/* 804FD624  40 81 00 1C */	ble lbl_804FD640
/* 804FD628  3C 60 80 64 */	lis r3, lit_1011@ha /* 0x806469F0@ha */
/* 804FD62C  C0 03 69 F0 */	lfs f0, lit_1011@l(r3)  /* 0x806469F0@l */
/* 804FD630  EC 21 00 28 */	fsubs f1, f1, f0
/* 804FD634  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804FD638  40 80 00 08 */	bge lbl_804FD640
/* 804FD63C  FC 20 F8 90 */	fmr f1, f31
lbl_804FD640:
/* 804FD640  D0 3D 00 74 */	stfs f1, 0x74(r29)
lbl_804FD644:
/* 804FD644  EC 5B 06 F2 */	fmuls f2, f27, f27
/* 804FD648  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FD64C  EC 3A 06 B2 */	fmuls f1, f26, f26
/* 804FD650  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804FD654  EC 82 08 2A */	fadds f4, f2, f1
/* 804FD658  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804FD65C  40 81 00 68 */	ble lbl_804FD6C4
/* 804FD660  FC 20 20 34 */	frsqrte f1, f4
/* 804FD664  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FD668  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804FD66C  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804FD670  C8 64 00 00 */	lfd f3, 0(r4)
/* 804FD674  FC 01 00 72 */	fmul f0, f1, f1
/* 804FD678  C8 43 69 FC */	lfd f2, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804FD67C  FC 23 00 72 */	fmul f1, f3, f1
/* 804FD680  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD684  FC 02 00 28 */	fsub f0, f2, f0
/* 804FD688  FC 21 00 32 */	fmul f1, f1, f0
/* 804FD68C  FC 01 00 72 */	fmul f0, f1, f1
/* 804FD690  FC 23 00 72 */	fmul f1, f3, f1
/* 804FD694  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD698  FC 02 00 28 */	fsub f0, f2, f0
/* 804FD69C  FC 21 00 32 */	fmul f1, f1, f0
/* 804FD6A0  FC 01 00 72 */	fmul f0, f1, f1
/* 804FD6A4  FC 23 00 72 */	fmul f1, f3, f1
/* 804FD6A8  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD6AC  FC 02 00 28 */	fsub f0, f2, f0
/* 804FD6B0  FC 01 00 32 */	fmul f0, f1, f0
/* 804FD6B4  FC 04 00 32 */	fmul f0, f4, f0
/* 804FD6B8  FC 00 00 18 */	frsp f0, f0
/* 804FD6BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 804FD6C0  C0 81 00 08 */	lfs f4, 8(r1)
lbl_804FD6C4:
/* 804FD6C4  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FD6C8  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 804FD6CC  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804FD6D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD6D4  40 80 00 0C */	bge lbl_804FD6E0
/* 804FD6D8  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 804FD6DC  FF E0 00 90 */	fmr f31, f0
lbl_804FD6E0:
/* 804FD6E0  3C 60 80 65 */	lis r3, lit_6385@ha /* 0x8064806C@ha */
/* 804FD6E4  C0 03 80 6C */	lfs f0, lit_6385@l(r3)  /* 0x8064806C@l */
/* 804FD6E8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804FD6EC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804FD6F0  4C 41 13 82 */	cror 2, 1, 2
/* 804FD6F4  40 82 00 A0 */	bne lbl_804FD794
/* 804FD6F8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FD6FC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FD700  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 804FD704  40 82 00 B0 */	bne lbl_804FD7B4
/* 804FD708  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804FD70C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804FD710  90 61 00 10 */	stw r3, 0x10(r1)
/* 804FD714  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD718  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804FD71C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804FD720  AB FD 00 36 */	lha r31, 0x36(r29)
/* 804FD724  C3 3D 00 74 */	lfs f25, 0x74(r29)
/* 804FD728  7F E3 FB 78 */	mr r3, r31
/* 804FD72C  4B EB D3 C5 */	bl sin_s
/* 804FD730  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FD734  7F E3 FB 78 */	mr r3, r31
/* 804FD738  C0 04 6C 4C */	lfs f0, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FD73C  EF 40 06 72 */	fmuls f26, f0, f25
/* 804FD740  EF 3A 00 72 */	fmuls f25, f26, f1
/* 804FD744  4B EB D3 59 */	bl cos_s
/* 804FD748  EC 5A 00 72 */	fmuls f2, f26, f1
/* 804FD74C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804FD750  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804FD754  7F A3 EB 78 */	mr r3, r29
/* 804FD758  EC 21 C8 2A */	fadds f1, f1, f25
/* 804FD75C  38 81 00 10 */	addi r4, r1, 0x10
/* 804FD760  EC 00 10 2A */	fadds f0, f0, f2
/* 804FD764  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804FD768  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804FD76C  4B FD 97 69 */	bl Player_actor_Culc_over_speed_normalize_NoneZero
/* 804FD770  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FD774  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FD778  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804FD77C  41 82 00 38 */	beq lbl_804FD7B4
/* 804FD780  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 804FD784  FF A0 08 90 */	fmr f29, f1
/* 804FD788  EC 00 08 24 */	fdivs f0, f0, f1
/* 804FD78C  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 804FD790  48 00 00 24 */	b lbl_804FD7B4
lbl_804FD794:
/* 804FD794  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FD798  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804FD79C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804FD7A0  40 80 00 0C */	bge lbl_804FD7AC
/* 804FD7A4  D0 9D 00 74 */	stfs f4, 0x74(r29)
/* 804FD7A8  48 00 00 0C */	b lbl_804FD7B4
lbl_804FD7AC:
/* 804FD7AC  EC 04 00 32 */	fmuls f0, f4, f0
/* 804FD7B0  D0 1D 00 74 */	stfs f0, 0x74(r29)
lbl_804FD7B4:
/* 804FD7B4  7F A3 EB 78 */	mr r3, r29
/* 804FD7B8  4B FD 81 65 */	bl Player_actor_Movement_Base
/* 804FD7BC  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 804FD7C0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FD7C4  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 804FD7C8  EC 5E 00 28 */	fsubs f2, f30, f0
/* 804FD7CC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804FD7D0  EC 7C 08 28 */	fsubs f3, f28, f1
/* 804FD7D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804FD7D8  4C 41 13 82 */	cror 2, 1, 2
/* 804FD7DC  40 82 00 0C */	bne lbl_804FD7E8
/* 804FD7E0  FC 20 10 90 */	fmr f1, f2
/* 804FD7E4  48 00 00 08 */	b lbl_804FD7EC
lbl_804FD7E8:
/* 804FD7E8  FC 20 10 50 */	fneg f1, f2
lbl_804FD7EC:
/* 804FD7EC  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FD7F0  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804FD7F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD7F8  40 80 00 08 */	bge lbl_804FD800
/* 804FD7FC  D3 DD 00 28 */	stfs f30, 0x28(r29)
lbl_804FD800:
/* 804FD800  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FD804  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804FD808  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804FD80C  4C 41 13 82 */	cror 2, 1, 2
/* 804FD810  40 82 00 0C */	bne lbl_804FD81C
/* 804FD814  FC 20 18 90 */	fmr f1, f3
/* 804FD818  48 00 00 08 */	b lbl_804FD820
lbl_804FD81C:
/* 804FD81C  FC 20 18 50 */	fneg f1, f3
lbl_804FD820:
/* 804FD820  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FD824  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804FD828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD82C  40 80 00 08 */	bge lbl_804FD834
/* 804FD830  D3 9D 00 30 */	stfs f28, 0x30(r29)
lbl_804FD834:
/* 804FD834  D3 BE 00 00 */	stfs f29, 0(r30)
/* 804FD838  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 804FD83C  FC 1E 00 00 */	fcmpu cr0, f30, f0
/* 804FD840  40 82 00 18 */	bne lbl_804FD858
/* 804FD844  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 804FD848  FC 1C 00 00 */	fcmpu cr0, f28, f0
/* 804FD84C  40 82 00 0C */	bne lbl_804FD858
/* 804FD850  38 60 00 01 */	li r3, 1
/* 804FD854  48 00 00 08 */	b lbl_804FD85C
lbl_804FD858:
/* 804FD858  38 60 00 00 */	li r3, 0
lbl_804FD85C:
/* 804FD85C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 804FD860  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 804FD864  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 804FD868  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 804FD86C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 804FD870  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 804FD874  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 804FD878  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 804FD87C  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 804FD880  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 804FD884  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 804FD888  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 804FD88C  E3 21 00 48 */	psq_l f25, 72(r1), 0, 0 /* qr0 */
/* 804FD890  39 61 00 40 */	addi r11, r1, 0x40
/* 804FD894  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 804FD898  4B B9 D6 89 */	bl func_8009AF20
/* 804FD89C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804FD8A0  7C 08 03 A6 */	mtlr r0
/* 804FD8A4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804FD8A8  4E 80 00 20 */	blr 
