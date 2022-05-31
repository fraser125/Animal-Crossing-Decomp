lbl_80635F94:
/* 80635F94  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80635F98  7C 08 02 A6 */	mflr r0
/* 80635F9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80635FA0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80635FA4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80635FA8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80635FAC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80635FB0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80635FB4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80635FB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80635FBC  4B A6 4F 11 */	bl func_8009AECC
/* 80635FC0  3C C0 80 65 */	lis r6, lit_3377@ha /* 0x8064D36C@ha */
/* 80635FC4  3C E0 80 65 */	lis r7, lit_937@ha /* 0x8064D2C4@ha */
/* 80635FC8  39 66 D3 6C */	addi r11, r6, lit_3377@l /* 0x8064D36C@l */
/* 80635FCC  3C 80 80 65 */	lis r4, lit_938@ha /* 0x8064D2C8@ha */
/* 80635FD0  81 4B 00 00 */	lwz r10, 0(r11)
/* 80635FD4  38 C4 D2 C8 */	addi r6, r4, lit_938@l /* 0x8064D2C8@l */
/* 80635FD8  81 2B 00 04 */	lwz r9, 4(r11)
/* 80635FDC  3C 80 80 65 */	lis r4, lit_920@ha /* 0x8064D2B4@ha */
/* 80635FE0  80 0B 00 08 */	lwz r0, 8(r11)
/* 80635FE4  7C 7E 1B 78 */	mr r30, r3
/* 80635FE8  91 41 00 08 */	stw r10, 8(r1)
/* 80635FEC  2C 05 00 06 */	cmpwi r5, 6
/* 80635FF0  C0 26 00 00 */	lfs f1, 0(r6)
/* 80635FF4  7D 1B 43 78 */	mr r27, r8
/* 80635FF8  91 21 00 0C */	stw r9, 0xc(r1)
/* 80635FFC  7F DD F3 78 */	mr r29, r30
/* 80636000  C0 A7 D2 C4 */	lfs f5, lit_937@l(r7)  /* 0x8064D2C4@l */
/* 80636004  90 01 00 10 */	stw r0, 0x10(r1)
/* 80636008  C0 64 D2 B4 */	lfs f3, lit_920@l(r4)  /* 0x8064D2B4@l */
/* 8063600C  C0 08 00 34 */	lfs f0, 0x34(r8)
/* 80636010  C0 48 08 14 */	lfs f2, 0x814(r8)
/* 80636014  EC 81 00 32 */	fmuls f4, f1, f0
/* 80636018  C0 28 08 18 */	lfs f1, 0x818(r8)
/* 8063601C  C0 08 08 1C */	lfs f0, 0x81c(r8)
/* 80636020  EF E3 00 B2 */	fmuls f31, f3, f2
/* 80636024  EF C3 00 72 */	fmuls f30, f3, f1
/* 80636028  83 E3 00 00 */	lwz r31, 0(r3)
/* 8063602C  EC 25 01 32 */	fmuls f1, f5, f4
/* 80636030  EF A3 00 32 */	fmuls f29, f3, f0
/* 80636034  FC 00 08 1E */	fctiwz f0, f1
/* 80636038  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8063603C  83 81 00 24 */	lwz r28, 0x24(r1)
/* 80636040  40 82 00 B4 */	bne lbl_806360F4
/* 80636044  7F E3 FB 78 */	mr r3, r31
/* 80636048  4B DA F1 11 */	bl _texture_z_light_fog_prim_xlu
/* 8063604C  7F A4 EB 78 */	mr r4, r29
/* 80636050  38 7B 00 08 */	addi r3, r27, 8
/* 80636054  4B D3 FF C5 */	bl Setpos_HiliteReflect_xlu_init
/* 80636058  38 61 00 08 */	addi r3, r1, 8
/* 8063605C  38 81 00 14 */	addi r4, r1, 0x14
/* 80636060  4B DD 73 A5 */	bl Matrix_Position
/* 80636064  4B DD 61 71 */	bl Matrix_push
/* 80636068  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8063606C  38 60 00 00 */	li r3, 0
/* 80636070  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80636074  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80636078  4B DD 62 89 */	bl Matrix_translate
/* 8063607C  7F 83 E3 78 */	mr r3, r28
/* 80636080  38 80 00 01 */	li r4, 1
/* 80636084  4B DD 65 D9 */	bl Matrix_RotateY
/* 80636088  38 60 40 00 */	li r3, 0x4000
/* 8063608C  38 80 00 01 */	li r4, 1
/* 80636090  4B DD 67 61 */	bl Matrix_RotateZ
/* 80636094  FC 20 F8 90 */	fmr f1, f31
/* 80636098  38 60 00 01 */	li r3, 1
/* 8063609C  FC 40 F0 90 */	fmr f2, f30
/* 806360A0  FC 60 E8 90 */	fmr f3, f29
/* 806360A4  4B DD 63 49 */	bl Matrix_scale
/* 806360A8  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 806360AC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806360B0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806360B4  38 7D 00 08 */	addi r3, r29, 8
/* 806360B8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 806360BC  90 1D 00 00 */	stw r0, 0(r29)
/* 806360C0  80 7E 00 00 */	lwz r3, 0(r30)
/* 806360C4  4B DD 73 11 */	bl _Matrix_to_Mtx_new
/* 806360C8  90 7D 00 04 */	stw r3, 4(r29)
/* 806360CC  4B DD 61 49 */	bl Matrix_pull
/* 806360D0  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 806360D4  3C 60 81 00 */	lis r3, int_sum_blue_clk_evw_model@ha /* 0x80FFA3F0@ha */
/* 806360D8  3C 80 DE 00 */	lis r4, 0xde00
/* 806360DC  38 A6 00 08 */	addi r5, r6, 8
/* 806360E0  38 03 A3 F0 */	addi r0, r3, int_sum_blue_clk_evw_model@l /* 0x80FFA3F0@l */
/* 806360E4  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 806360E8  90 86 00 00 */	stw r4, 0(r6)
/* 806360EC  90 06 00 04 */	stw r0, 4(r6)
/* 806360F0  48 00 01 B0 */	b lbl_806362A0
lbl_806360F4:
/* 806360F4  2C 05 00 05 */	cmpwi r5, 5
/* 806360F8  40 82 00 D4 */	bne lbl_806361CC
/* 806360FC  38 61 00 08 */	addi r3, r1, 8
/* 80636100  38 81 00 14 */	addi r4, r1, 0x14
/* 80636104  4B DD 73 01 */	bl Matrix_Position
/* 80636108  4B DD 60 CD */	bl Matrix_push
/* 8063610C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80636110  38 60 00 00 */	li r3, 0
/* 80636114  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80636118  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8063611C  4B DD 61 E5 */	bl Matrix_translate
/* 80636120  7F 83 E3 78 */	mr r3, r28
/* 80636124  38 80 00 01 */	li r4, 1
/* 80636128  4B DD 65 35 */	bl Matrix_RotateY
/* 8063612C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80636130  38 80 00 01 */	li r4, 1
/* 80636134  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80636138  3C 63 00 02 */	addis r3, r3, 2
/* 8063613C  A8 03 61 2A */	lha r0, 0x612a(r3)
/* 80636140  20 00 40 00 */	subfic r0, r0, 0x4000
/* 80636144  7C 03 07 34 */	extsh r3, r0
/* 80636148  4B DD 66 A9 */	bl Matrix_RotateZ
/* 8063614C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80636150  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 80636154  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 80636158  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063615C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80636160  38 60 00 01 */	li r3, 1
/* 80636164  FC 40 08 90 */	fmr f2, f1
/* 80636168  4B DD 61 99 */	bl Matrix_translate
/* 8063616C  FC 20 F8 90 */	fmr f1, f31
/* 80636170  38 60 00 01 */	li r3, 1
/* 80636174  FC 40 F0 90 */	fmr f2, f30
/* 80636178  FC 60 E8 90 */	fmr f3, f29
/* 8063617C  4B DD 62 71 */	bl Matrix_scale
/* 80636180  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 80636184  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80636188  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063618C  38 7D 00 08 */	addi r3, r29, 8
/* 80636190  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80636194  90 1D 00 00 */	stw r0, 0(r29)
/* 80636198  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063619C  4B DD 72 39 */	bl _Matrix_to_Mtx_new
/* 806361A0  90 7D 00 04 */	stw r3, 4(r29)
/* 806361A4  4B DD 60 71 */	bl Matrix_pull
/* 806361A8  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 806361AC  3C 60 81 00 */	lis r3, int_sum_blue_clk_short_model@ha /* 0x80FFA528@ha */
/* 806361B0  3C 80 DE 00 */	lis r4, 0xde00
/* 806361B4  38 A6 00 08 */	addi r5, r6, 8
/* 806361B8  38 03 A5 28 */	addi r0, r3, int_sum_blue_clk_short_model@l /* 0x80FFA528@l */
/* 806361BC  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 806361C0  90 86 00 00 */	stw r4, 0(r6)
/* 806361C4  90 06 00 04 */	stw r0, 4(r6)
/* 806361C8  48 00 00 D8 */	b lbl_806362A0
lbl_806361CC:
/* 806361CC  2C 05 00 07 */	cmpwi r5, 7
/* 806361D0  40 82 00 D0 */	bne lbl_806362A0
/* 806361D4  38 61 00 08 */	addi r3, r1, 8
/* 806361D8  38 81 00 14 */	addi r4, r1, 0x14
/* 806361DC  4B DD 72 29 */	bl Matrix_Position
/* 806361E0  4B DD 5F F5 */	bl Matrix_push
/* 806361E4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 806361E8  38 60 00 00 */	li r3, 0
/* 806361EC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 806361F0  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 806361F4  4B DD 61 0D */	bl Matrix_translate
/* 806361F8  7F 83 E3 78 */	mr r3, r28
/* 806361FC  38 80 00 01 */	li r4, 1
/* 80636200  4B DD 64 5D */	bl Matrix_RotateY
/* 80636204  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80636208  38 80 00 01 */	li r4, 1
/* 8063620C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80636210  3C 63 00 02 */	addis r3, r3, 2
/* 80636214  A8 03 61 28 */	lha r0, 0x6128(r3)
/* 80636218  20 00 40 00 */	subfic r0, r0, 0x4000
/* 8063621C  7C 03 07 34 */	extsh r3, r0
/* 80636220  4B DD 65 D1 */	bl Matrix_RotateZ
/* 80636224  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80636228  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063622C  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 80636230  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 80636234  C0 25 00 00 */	lfs f1, 0(r5)
/* 80636238  38 60 00 01 */	li r3, 1
/* 8063623C  FC 40 08 90 */	fmr f2, f1
/* 80636240  4B DD 60 C1 */	bl Matrix_translate
/* 80636244  FC 20 F8 90 */	fmr f1, f31
/* 80636248  38 60 00 01 */	li r3, 1
/* 8063624C  FC 40 F0 90 */	fmr f2, f30
/* 80636250  FC 60 E8 90 */	fmr f3, f29
/* 80636254  4B DD 61 99 */	bl Matrix_scale
/* 80636258  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 8063625C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80636260  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80636264  38 7D 00 08 */	addi r3, r29, 8
/* 80636268  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063626C  90 1D 00 00 */	stw r0, 0(r29)
/* 80636270  80 7E 00 00 */	lwz r3, 0(r30)
/* 80636274  4B DD 71 61 */	bl _Matrix_to_Mtx_new
/* 80636278  90 7D 00 04 */	stw r3, 4(r29)
/* 8063627C  4B DD 5F 99 */	bl Matrix_pull
/* 80636280  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80636284  3C 60 81 00 */	lis r3, int_sum_blue_clk_long_model@ha /* 0x80FFA390@ha */
/* 80636288  3C 80 DE 00 */	lis r4, 0xde00
/* 8063628C  38 A6 00 08 */	addi r5, r6, 8
/* 80636290  38 03 A3 90 */	addi r0, r3, int_sum_blue_clk_long_model@l /* 0x80FFA390@l */
/* 80636294  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 80636298  90 86 00 00 */	stw r4, 0(r6)
/* 8063629C  90 06 00 04 */	stw r0, 4(r6)
lbl_806362A0:
/* 806362A0  38 60 00 01 */	li r3, 1
/* 806362A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806362A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806362AC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 806362B0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 806362B4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 806362B8  39 61 00 40 */	addi r11, r1, 0x40
/* 806362BC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 806362C0  4B A6 4C 59 */	bl func_8009AF18
/* 806362C4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806362C8  7C 08 03 A6 */	mtlr r0
/* 806362CC  38 21 00 70 */	addi r1, r1, 0x70
/* 806362D0  4E 80 00 20 */	blr 
