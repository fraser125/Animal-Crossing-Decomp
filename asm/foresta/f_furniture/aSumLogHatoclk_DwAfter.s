lbl_8063921C:
/* 8063921C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80639220  7C 08 02 A6 */	mflr r0
/* 80639224  90 01 00 74 */	stw r0, 0x74(r1)
/* 80639228  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8063922C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80639230  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80639234  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80639238  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8063923C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80639240  39 61 00 40 */	addi r11, r1, 0x40
/* 80639244  4B A6 1C 91 */	bl func_8009AED4
/* 80639248  3C C0 80 65 */	lis r6, lit_4712@ha /* 0x8064D38C@ha */
/* 8063924C  3C E0 80 65 */	lis r7, lit_937@ha /* 0x8064D2C4@ha */
/* 80639250  39 66 D3 8C */	addi r11, r6, lit_4712@l /* 0x8064D38C@l */
/* 80639254  3C 80 80 65 */	lis r4, lit_938@ha /* 0x8064D2C8@ha */
/* 80639258  81 4B 00 00 */	lwz r10, 0(r11)
/* 8063925C  38 C4 D2 C8 */	addi r6, r4, lit_938@l /* 0x8064D2C8@l */
/* 80639260  81 2B 00 04 */	lwz r9, 4(r11)
/* 80639264  3C 80 80 65 */	lis r4, lit_920@ha /* 0x8064D2B4@ha */
/* 80639268  80 0B 00 08 */	lwz r0, 8(r11)
/* 8063926C  2C 05 00 07 */	cmpwi r5, 7
/* 80639270  91 41 00 08 */	stw r10, 8(r1)
/* 80639274  7C 7E 1B 78 */	mr r30, r3
/* 80639278  C0 26 00 00 */	lfs f1, 0(r6)
/* 8063927C  91 21 00 0C */	stw r9, 0xc(r1)
/* 80639280  C0 A7 D2 C4 */	lfs f5, lit_937@l(r7)  /* 0x8064D2C4@l */
/* 80639284  90 01 00 10 */	stw r0, 0x10(r1)
/* 80639288  C0 64 D2 B4 */	lfs f3, lit_920@l(r4)  /* 0x8064D2B4@l */
/* 8063928C  C0 08 00 34 */	lfs f0, 0x34(r8)
/* 80639290  C0 48 08 14 */	lfs f2, 0x814(r8)
/* 80639294  EC 81 00 32 */	fmuls f4, f1, f0
/* 80639298  C0 28 08 18 */	lfs f1, 0x818(r8)
/* 8063929C  C0 08 08 1C */	lfs f0, 0x81c(r8)
/* 806392A0  EF E3 00 B2 */	fmuls f31, f3, f2
/* 806392A4  EF C3 00 72 */	fmuls f30, f3, f1
/* 806392A8  83 E3 00 00 */	lwz r31, 0(r3)
/* 806392AC  EC 25 01 32 */	fmuls f1, f5, f4
/* 806392B0  EF A3 00 32 */	fmuls f29, f3, f0
/* 806392B4  FC 00 08 1E */	fctiwz f0, f1
/* 806392B8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806392BC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 806392C0  40 82 00 D4 */	bne lbl_80639394
/* 806392C4  38 61 00 08 */	addi r3, r1, 8
/* 806392C8  38 81 00 14 */	addi r4, r1, 0x14
/* 806392CC  4B DD 41 39 */	bl Matrix_Position
/* 806392D0  4B DD 2F 05 */	bl Matrix_push
/* 806392D4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 806392D8  38 60 00 00 */	li r3, 0
/* 806392DC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 806392E0  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 806392E4  4B DD 30 1D */	bl Matrix_translate
/* 806392E8  7F A3 EB 78 */	mr r3, r29
/* 806392EC  38 80 00 01 */	li r4, 1
/* 806392F0  4B DD 33 6D */	bl Matrix_RotateY
/* 806392F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806392F8  38 80 00 01 */	li r4, 1
/* 806392FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80639300  3C 63 00 02 */	addis r3, r3, 2
/* 80639304  A8 03 61 2A */	lha r0, 0x612a(r3)
/* 80639308  20 00 40 00 */	subfic r0, r0, 0x4000
/* 8063930C  7C 03 07 34 */	extsh r3, r0
/* 80639310  4B DD 34 E1 */	bl Matrix_RotateZ
/* 80639314  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80639318  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063931C  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 80639320  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 80639324  C0 25 00 00 */	lfs f1, 0(r5)
/* 80639328  38 60 00 01 */	li r3, 1
/* 8063932C  FC 40 08 90 */	fmr f2, f1
/* 80639330  4B DD 2F D1 */	bl Matrix_translate
/* 80639334  FC 20 F8 90 */	fmr f1, f31
/* 80639338  38 60 00 01 */	li r3, 1
/* 8063933C  FC 40 F0 90 */	fmr f2, f30
/* 80639340  FC 60 E8 90 */	fmr f3, f29
/* 80639344  4B DD 30 A9 */	bl Matrix_scale
/* 80639348  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 8063934C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80639350  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80639354  38 7D 00 08 */	addi r3, r29, 8
/* 80639358  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063935C  90 1D 00 00 */	stw r0, 0(r29)
/* 80639360  80 7E 00 00 */	lwz r3, 0(r30)
/* 80639364  4B DD 40 71 */	bl _Matrix_to_Mtx_new
/* 80639368  90 7D 00 04 */	stw r3, 4(r29)
/* 8063936C  4B DD 2E A9 */	bl Matrix_pull
/* 80639370  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80639374  3C 60 81 07 */	lis r3, int_sum_log_hatoclk_short_model@ha /* 0x810710B8@ha */
/* 80639378  3C 80 DE 00 */	lis r4, 0xde00
/* 8063937C  38 A6 00 08 */	addi r5, r6, 8
/* 80639380  38 03 10 B8 */	addi r0, r3, int_sum_log_hatoclk_short_model@l /* 0x810710B8@l */
/* 80639384  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 80639388  90 86 00 00 */	stw r4, 0(r6)
/* 8063938C  90 06 00 04 */	stw r0, 4(r6)
/* 80639390  48 00 00 D8 */	b lbl_80639468
lbl_80639394:
/* 80639394  2C 05 00 08 */	cmpwi r5, 8
/* 80639398  40 82 00 D0 */	bne lbl_80639468
/* 8063939C  38 61 00 08 */	addi r3, r1, 8
/* 806393A0  38 81 00 14 */	addi r4, r1, 0x14
/* 806393A4  4B DD 40 61 */	bl Matrix_Position
/* 806393A8  4B DD 2E 2D */	bl Matrix_push
/* 806393AC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 806393B0  38 60 00 00 */	li r3, 0
/* 806393B4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 806393B8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 806393BC  4B DD 2F 45 */	bl Matrix_translate
/* 806393C0  7F A3 EB 78 */	mr r3, r29
/* 806393C4  38 80 00 01 */	li r4, 1
/* 806393C8  4B DD 32 95 */	bl Matrix_RotateY
/* 806393CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806393D0  38 80 00 01 */	li r4, 1
/* 806393D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806393D8  3C 63 00 02 */	addis r3, r3, 2
/* 806393DC  A8 03 61 28 */	lha r0, 0x6128(r3)
/* 806393E0  20 00 40 00 */	subfic r0, r0, 0x4000
/* 806393E4  7C 03 07 34 */	extsh r3, r0
/* 806393E8  4B DD 34 09 */	bl Matrix_RotateZ
/* 806393EC  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 806393F0  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 806393F4  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 806393F8  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 806393FC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80639400  38 60 00 01 */	li r3, 1
/* 80639404  FC 40 08 90 */	fmr f2, f1
/* 80639408  4B DD 2E F9 */	bl Matrix_translate
/* 8063940C  FC 20 F8 90 */	fmr f1, f31
/* 80639410  38 60 00 01 */	li r3, 1
/* 80639414  FC 40 F0 90 */	fmr f2, f30
/* 80639418  FC 60 E8 90 */	fmr f3, f29
/* 8063941C  4B DD 2F D1 */	bl Matrix_scale
/* 80639420  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 80639424  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80639428  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063942C  38 7D 00 08 */	addi r3, r29, 8
/* 80639430  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80639434  90 1D 00 00 */	stw r0, 0(r29)
/* 80639438  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063943C  4B DD 3F 99 */	bl _Matrix_to_Mtx_new
/* 80639440  90 7D 00 04 */	stw r3, 4(r29)
/* 80639444  4B DD 2D D1 */	bl Matrix_pull
/* 80639448  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063944C  3C 60 81 07 */	lis r3, int_sum_log_hatoclk_long_model@ha /* 0x81070F40@ha */
/* 80639450  3C 80 DE 00 */	lis r4, 0xde00
/* 80639454  38 A6 00 08 */	addi r5, r6, 8
/* 80639458  38 03 0F 40 */	addi r0, r3, int_sum_log_hatoclk_long_model@l /* 0x81070F40@l */
/* 8063945C  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 80639460  90 86 00 00 */	stw r4, 0(r6)
/* 80639464  90 06 00 04 */	stw r0, 4(r6)
lbl_80639468:
/* 80639468  38 60 00 01 */	li r3, 1
/* 8063946C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80639470  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80639474  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80639478  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8063947C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80639480  39 61 00 40 */	addi r11, r1, 0x40
/* 80639484  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80639488  4B A6 1A 99 */	bl func_8009AF20
/* 8063948C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80639490  7C 08 03 A6 */	mtlr r0
/* 80639494  38 21 00 70 */	addi r1, r1, 0x70
/* 80639498  4E 80 00 20 */	blr 