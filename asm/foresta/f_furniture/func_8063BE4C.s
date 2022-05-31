lbl_8063BE4C:
/* 8063BE4C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8063BE50  7C 08 02 A6 */	mflr r0
/* 8063BE54  90 01 00 74 */	stw r0, 0x74(r1)
/* 8063BE58  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8063BE5C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8063BE60  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8063BE64  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8063BE68  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8063BE6C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8063BE70  39 61 00 40 */	addi r11, r1, 0x40
/* 8063BE74  4B A5 F0 59 */	bl func_8009AECC
/* 8063BE78  3C C0 80 65 */	lis r6, lit_5914@ha /* 0x8064D39C@ha */
/* 8063BE7C  3C E0 80 65 */	lis r7, lit_937@ha /* 0x8064D2C4@ha */
/* 8063BE80  39 66 D3 9C */	addi r11, r6, lit_5914@l /* 0x8064D39C@l */
/* 8063BE84  3C 80 80 65 */	lis r4, lit_938@ha /* 0x8064D2C8@ha */
/* 8063BE88  81 4B 00 00 */	lwz r10, 0(r11)
/* 8063BE8C  38 C4 D2 C8 */	addi r6, r4, lit_938@l /* 0x8064D2C8@l */
/* 8063BE90  81 2B 00 04 */	lwz r9, 4(r11)
/* 8063BE94  3C 80 80 65 */	lis r4, lit_920@ha /* 0x8064D2B4@ha */
/* 8063BE98  80 0B 00 08 */	lwz r0, 8(r11)
/* 8063BE9C  7C 7E 1B 78 */	mr r30, r3
/* 8063BEA0  91 41 00 08 */	stw r10, 8(r1)
/* 8063BEA4  2C 05 00 06 */	cmpwi r5, 6
/* 8063BEA8  C0 26 00 00 */	lfs f1, 0(r6)
/* 8063BEAC  7D 1B 43 78 */	mr r27, r8
/* 8063BEB0  91 21 00 0C */	stw r9, 0xc(r1)
/* 8063BEB4  7F DD F3 78 */	mr r29, r30
/* 8063BEB8  C0 A7 D2 C4 */	lfs f5, lit_937@l(r7)  /* 0x8064D2C4@l */
/* 8063BEBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063BEC0  C0 64 D2 B4 */	lfs f3, lit_920@l(r4)  /* 0x8064D2B4@l */
/* 8063BEC4  C0 08 00 34 */	lfs f0, 0x34(r8)
/* 8063BEC8  C0 48 08 14 */	lfs f2, 0x814(r8)
/* 8063BECC  EC 81 00 32 */	fmuls f4, f1, f0
/* 8063BED0  C0 28 08 18 */	lfs f1, 0x818(r8)
/* 8063BED4  C0 08 08 1C */	lfs f0, 0x81c(r8)
/* 8063BED8  EF E3 00 B2 */	fmuls f31, f3, f2
/* 8063BEDC  EF C3 00 72 */	fmuls f30, f3, f1
/* 8063BEE0  83 E3 00 00 */	lwz r31, 0(r3)
/* 8063BEE4  EC 25 01 32 */	fmuls f1, f5, f4
/* 8063BEE8  EF A3 00 32 */	fmuls f29, f3, f0
/* 8063BEEC  FC 00 08 1E */	fctiwz f0, f1
/* 8063BEF0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8063BEF4  83 81 00 24 */	lwz r28, 0x24(r1)
/* 8063BEF8  40 82 00 B4 */	bne lbl_8063BFAC
/* 8063BEFC  7F E3 FB 78 */	mr r3, r31
/* 8063BF00  4B DA 92 59 */	bl _texture_z_light_fog_prim_xlu
/* 8063BF04  7F A4 EB 78 */	mr r4, r29
/* 8063BF08  38 7B 00 08 */	addi r3, r27, 8
/* 8063BF0C  4B D3 A1 0D */	bl Setpos_HiliteReflect_xlu_init
/* 8063BF10  38 61 00 08 */	addi r3, r1, 8
/* 8063BF14  38 81 00 14 */	addi r4, r1, 0x14
/* 8063BF18  4B DD 14 ED */	bl Matrix_Position
/* 8063BF1C  4B DD 02 B9 */	bl Matrix_push
/* 8063BF20  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8063BF24  38 60 00 00 */	li r3, 0
/* 8063BF28  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8063BF2C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8063BF30  4B DD 03 D1 */	bl Matrix_translate
/* 8063BF34  7F 83 E3 78 */	mr r3, r28
/* 8063BF38  38 80 00 01 */	li r4, 1
/* 8063BF3C  4B DD 07 21 */	bl Matrix_RotateY
/* 8063BF40  38 60 40 00 */	li r3, 0x4000
/* 8063BF44  38 80 00 01 */	li r4, 1
/* 8063BF48  4B DD 08 A9 */	bl Matrix_RotateZ
/* 8063BF4C  FC 20 F8 90 */	fmr f1, f31
/* 8063BF50  38 60 00 01 */	li r3, 1
/* 8063BF54  FC 40 F0 90 */	fmr f2, f30
/* 8063BF58  FC 60 E8 90 */	fmr f3, f29
/* 8063BF5C  4B DD 04 91 */	bl Matrix_scale
/* 8063BF60  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 8063BF64  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063BF68  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063BF6C  38 7D 00 08 */	addi r3, r29, 8
/* 8063BF70  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063BF74  90 1D 00 00 */	stw r0, 0(r29)
/* 8063BF78  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063BF7C  4B DD 14 59 */	bl _Matrix_to_Mtx_new
/* 8063BF80  90 7D 00 04 */	stw r3, 4(r29)
/* 8063BF84  4B DD 02 91 */	bl Matrix_pull
/* 8063BF88  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8063BF8C  3C 60 81 0D */	lis r3, int_sum_x_clk_evw_model@ha /* 0x810D5FF8@ha */
/* 8063BF90  3C 80 DE 00 */	lis r4, 0xde00
/* 8063BF94  38 A6 00 08 */	addi r5, r6, 8
/* 8063BF98  38 03 5F F8 */	addi r0, r3, int_sum_x_clk_evw_model@l /* 0x810D5FF8@l */
/* 8063BF9C  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8063BFA0  90 86 00 00 */	stw r4, 0(r6)
/* 8063BFA4  90 06 00 04 */	stw r0, 4(r6)
/* 8063BFA8  48 00 01 B0 */	b lbl_8063C158
lbl_8063BFAC:
/* 8063BFAC  2C 05 00 03 */	cmpwi r5, 3
/* 8063BFB0  40 82 00 D4 */	bne lbl_8063C084
/* 8063BFB4  38 61 00 08 */	addi r3, r1, 8
/* 8063BFB8  38 81 00 14 */	addi r4, r1, 0x14
/* 8063BFBC  4B DD 14 49 */	bl Matrix_Position
/* 8063BFC0  4B DD 02 15 */	bl Matrix_push
/* 8063BFC4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8063BFC8  38 60 00 00 */	li r3, 0
/* 8063BFCC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8063BFD0  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8063BFD4  4B DD 03 2D */	bl Matrix_translate
/* 8063BFD8  7F 83 E3 78 */	mr r3, r28
/* 8063BFDC  38 80 00 01 */	li r4, 1
/* 8063BFE0  4B DD 06 7D */	bl Matrix_RotateY
/* 8063BFE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063BFE8  38 80 00 01 */	li r4, 1
/* 8063BFEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063BFF0  3C 63 00 02 */	addis r3, r3, 2
/* 8063BFF4  A8 03 61 2A */	lha r0, 0x612a(r3)
/* 8063BFF8  20 00 40 00 */	subfic r0, r0, 0x4000
/* 8063BFFC  7C 03 07 34 */	extsh r3, r0
/* 8063C000  4B DD 07 F1 */	bl Matrix_RotateZ
/* 8063C004  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063C008  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063C00C  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 8063C010  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063C014  C0 25 00 00 */	lfs f1, 0(r5)
/* 8063C018  38 60 00 01 */	li r3, 1
/* 8063C01C  FC 40 08 90 */	fmr f2, f1
/* 8063C020  4B DD 02 E1 */	bl Matrix_translate
/* 8063C024  FC 20 F8 90 */	fmr f1, f31
/* 8063C028  38 60 00 01 */	li r3, 1
/* 8063C02C  FC 40 F0 90 */	fmr f2, f30
/* 8063C030  FC 60 E8 90 */	fmr f3, f29
/* 8063C034  4B DD 03 B9 */	bl Matrix_scale
/* 8063C038  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 8063C03C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063C040  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063C044  38 7D 00 08 */	addi r3, r29, 8
/* 8063C048  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063C04C  90 1D 00 00 */	stw r0, 0(r29)
/* 8063C050  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063C054  4B DD 13 81 */	bl _Matrix_to_Mtx_new
/* 8063C058  90 7D 00 04 */	stw r3, 4(r29)
/* 8063C05C  4B DD 01 B9 */	bl Matrix_pull
/* 8063C060  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063C064  3C 60 81 0D */	lis r3, int_sum_x_clk_short_model@ha /* 0x810D6188@ha */
/* 8063C068  3C 80 DE 00 */	lis r4, 0xde00
/* 8063C06C  38 A6 00 08 */	addi r5, r6, 8
/* 8063C070  38 03 61 88 */	addi r0, r3, int_sum_x_clk_short_model@l /* 0x810D6188@l */
/* 8063C074  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 8063C078  90 86 00 00 */	stw r4, 0(r6)
/* 8063C07C  90 06 00 04 */	stw r0, 4(r6)
/* 8063C080  48 00 00 D8 */	b lbl_8063C158
lbl_8063C084:
/* 8063C084  2C 05 00 07 */	cmpwi r5, 7
/* 8063C088  40 82 00 D0 */	bne lbl_8063C158
/* 8063C08C  38 61 00 08 */	addi r3, r1, 8
/* 8063C090  38 81 00 14 */	addi r4, r1, 0x14
/* 8063C094  4B DD 13 71 */	bl Matrix_Position
/* 8063C098  4B DD 01 3D */	bl Matrix_push
/* 8063C09C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8063C0A0  38 60 00 00 */	li r3, 0
/* 8063C0A4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8063C0A8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8063C0AC  4B DD 02 55 */	bl Matrix_translate
/* 8063C0B0  7F 83 E3 78 */	mr r3, r28
/* 8063C0B4  38 80 00 01 */	li r4, 1
/* 8063C0B8  4B DD 05 A5 */	bl Matrix_RotateY
/* 8063C0BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063C0C0  38 80 00 01 */	li r4, 1
/* 8063C0C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063C0C8  3C 63 00 02 */	addis r3, r3, 2
/* 8063C0CC  A8 03 61 28 */	lha r0, 0x6128(r3)
/* 8063C0D0  20 00 40 00 */	subfic r0, r0, 0x4000
/* 8063C0D4  7C 03 07 34 */	extsh r3, r0
/* 8063C0D8  4B DD 07 19 */	bl Matrix_RotateZ
/* 8063C0DC  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063C0E0  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063C0E4  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 8063C0E8  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063C0EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8063C0F0  38 60 00 01 */	li r3, 1
/* 8063C0F4  FC 40 08 90 */	fmr f2, f1
/* 8063C0F8  4B DD 02 09 */	bl Matrix_translate
/* 8063C0FC  FC 20 F8 90 */	fmr f1, f31
/* 8063C100  38 60 00 01 */	li r3, 1
/* 8063C104  FC 40 F0 90 */	fmr f2, f30
/* 8063C108  FC 60 E8 90 */	fmr f3, f29
/* 8063C10C  4B DD 02 E1 */	bl Matrix_scale
/* 8063C110  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 8063C114  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063C118  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063C11C  38 7D 00 08 */	addi r3, r29, 8
/* 8063C120  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063C124  90 1D 00 00 */	stw r0, 0(r29)
/* 8063C128  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063C12C  4B DD 12 A9 */	bl _Matrix_to_Mtx_new
/* 8063C130  90 7D 00 04 */	stw r3, 4(r29)
/* 8063C134  4B DD 00 E1 */	bl Matrix_pull
/* 8063C138  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063C13C  3C 60 81 0D */	lis r3, int_sum_x_clk_long_model@ha /* 0x810D5FA0@ha */
/* 8063C140  3C 80 DE 00 */	lis r4, 0xde00
/* 8063C144  38 A6 00 08 */	addi r5, r6, 8
/* 8063C148  38 03 5F A0 */	addi r0, r3, int_sum_x_clk_long_model@l /* 0x810D5FA0@l */
/* 8063C14C  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 8063C150  90 86 00 00 */	stw r4, 0(r6)
/* 8063C154  90 06 00 04 */	stw r0, 4(r6)
lbl_8063C158:
/* 8063C158  38 60 00 01 */	li r3, 1
/* 8063C15C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8063C160  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8063C164  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8063C168  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8063C16C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8063C170  39 61 00 40 */	addi r11, r1, 0x40
/* 8063C174  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8063C178  4B A5 ED A1 */	bl func_8009AF18
/* 8063C17C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063C180  7C 08 03 A6 */	mtlr r0
/* 8063C184  38 21 00 70 */	addi r1, r1, 0x70
/* 8063C188  4E 80 00 20 */	blr 
