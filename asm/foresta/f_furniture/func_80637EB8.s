lbl_80637EB8:
/* 80637EB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80637EBC  7C 08 02 A6 */	mflr r0
/* 80637EC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80637EC4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80637EC8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80637ECC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80637ED0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80637ED4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80637ED8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80637EDC  39 61 00 40 */	addi r11, r1, 0x40
/* 80637EE0  4B A6 2F F5 */	bl func_8009AED4
/* 80637EE4  3C C0 80 65 */	lis r6, lit_4248@ha /* 0x8064D378@ha */
/* 80637EE8  3C E0 80 65 */	lis r7, lit_937@ha /* 0x8064D2C4@ha */
/* 80637EEC  39 66 D3 78 */	addi r11, r6, lit_4248@l /* 0x8064D378@l */
/* 80637EF0  3C 80 80 65 */	lis r4, lit_938@ha /* 0x8064D2C8@ha */
/* 80637EF4  81 4B 00 00 */	lwz r10, 0(r11)
/* 80637EF8  38 C4 D2 C8 */	addi r6, r4, lit_938@l /* 0x8064D2C8@l */
/* 80637EFC  81 2B 00 04 */	lwz r9, 4(r11)
/* 80637F00  3C 80 80 65 */	lis r4, lit_920@ha /* 0x8064D2B4@ha */
/* 80637F04  80 0B 00 08 */	lwz r0, 8(r11)
/* 80637F08  2C 05 00 03 */	cmpwi r5, 3
/* 80637F0C  91 41 00 08 */	stw r10, 8(r1)
/* 80637F10  7C 7E 1B 78 */	mr r30, r3
/* 80637F14  C0 26 00 00 */	lfs f1, 0(r6)
/* 80637F18  91 21 00 0C */	stw r9, 0xc(r1)
/* 80637F1C  C0 A7 D2 C4 */	lfs f5, lit_937@l(r7)  /* 0x8064D2C4@l */
/* 80637F20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80637F24  C0 64 D2 B4 */	lfs f3, lit_920@l(r4)  /* 0x8064D2B4@l */
/* 80637F28  C0 08 00 34 */	lfs f0, 0x34(r8)
/* 80637F2C  C0 48 08 14 */	lfs f2, 0x814(r8)
/* 80637F30  EC 81 00 32 */	fmuls f4, f1, f0
/* 80637F34  C0 28 08 18 */	lfs f1, 0x818(r8)
/* 80637F38  C0 08 08 1C */	lfs f0, 0x81c(r8)
/* 80637F3C  EF E3 00 B2 */	fmuls f31, f3, f2
/* 80637F40  EF C3 00 72 */	fmuls f30, f3, f1
/* 80637F44  83 E3 00 00 */	lwz r31, 0(r3)
/* 80637F48  EC 25 01 32 */	fmuls f1, f5, f4
/* 80637F4C  EF A3 00 32 */	fmuls f29, f3, f0
/* 80637F50  FC 00 08 1E */	fctiwz f0, f1
/* 80637F54  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80637F58  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80637F5C  40 82 00 D4 */	bne lbl_80638030
/* 80637F60  38 61 00 08 */	addi r3, r1, 8
/* 80637F64  38 81 00 14 */	addi r4, r1, 0x14
/* 80637F68  4B DD 54 9D */	bl Matrix_Position
/* 80637F6C  4B DD 42 69 */	bl Matrix_push
/* 80637F70  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80637F74  38 60 00 00 */	li r3, 0
/* 80637F78  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80637F7C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80637F80  4B DD 43 81 */	bl Matrix_translate
/* 80637F84  7F A3 EB 78 */	mr r3, r29
/* 80637F88  38 80 00 01 */	li r4, 1
/* 80637F8C  4B DD 46 D1 */	bl Matrix_RotateY
/* 80637F90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80637F94  38 80 00 01 */	li r4, 1
/* 80637F98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80637F9C  3C 63 00 02 */	addis r3, r3, 2
/* 80637FA0  A8 03 61 2A */	lha r0, 0x612a(r3)
/* 80637FA4  20 00 40 00 */	subfic r0, r0, 0x4000
/* 80637FA8  7C 03 07 34 */	extsh r3, r0
/* 80637FAC  4B DD 48 45 */	bl Matrix_RotateZ
/* 80637FB0  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80637FB4  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 80637FB8  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 80637FBC  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 80637FC0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80637FC4  38 60 00 01 */	li r3, 1
/* 80637FC8  FC 40 08 90 */	fmr f2, f1
/* 80637FCC  4B DD 43 35 */	bl Matrix_translate
/* 80637FD0  FC 20 F8 90 */	fmr f1, f31
/* 80637FD4  38 60 00 01 */	li r3, 1
/* 80637FD8  FC 40 F0 90 */	fmr f2, f30
/* 80637FDC  FC 60 E8 90 */	fmr f3, f29
/* 80637FE0  4B DD 44 0D */	bl Matrix_scale
/* 80637FE4  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 80637FE8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80637FEC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80637FF0  38 7D 00 08 */	addi r3, r29, 8
/* 80637FF4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80637FF8  90 1D 00 00 */	stw r0, 0(r29)
/* 80637FFC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80638000  4B DD 53 D5 */	bl _Matrix_to_Mtx_new
/* 80638004  90 7D 00 04 */	stw r3, 4(r29)
/* 80638008  4B DD 42 0D */	bl Matrix_pull
/* 8063800C  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80638010  3C 60 81 05 */	lis r3, int_sum_hal_clk01_short_model@ha /* 0x8104D0D8@ha */
/* 80638014  3C 80 DE 00 */	lis r4, 0xde00
/* 80638018  38 A6 00 08 */	addi r5, r6, 8
/* 8063801C  38 03 D0 D8 */	addi r0, r3, int_sum_hal_clk01_short_model@l /* 0x8104D0D8@l */
/* 80638020  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 80638024  90 86 00 00 */	stw r4, 0(r6)
/* 80638028  90 06 00 04 */	stw r0, 4(r6)
/* 8063802C  48 00 00 D8 */	b lbl_80638104
lbl_80638030:
/* 80638030  2C 05 00 04 */	cmpwi r5, 4
/* 80638034  40 82 00 D0 */	bne lbl_80638104
/* 80638038  38 61 00 08 */	addi r3, r1, 8
/* 8063803C  38 81 00 14 */	addi r4, r1, 0x14
/* 80638040  4B DD 53 C5 */	bl Matrix_Position
/* 80638044  4B DD 41 91 */	bl Matrix_push
/* 80638048  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8063804C  38 60 00 00 */	li r3, 0
/* 80638050  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80638054  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80638058  4B DD 42 A9 */	bl Matrix_translate
/* 8063805C  7F A3 EB 78 */	mr r3, r29
/* 80638060  38 80 00 01 */	li r4, 1
/* 80638064  4B DD 45 F9 */	bl Matrix_RotateY
/* 80638068  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063806C  38 80 00 01 */	li r4, 1
/* 80638070  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80638074  3C 63 00 02 */	addis r3, r3, 2
/* 80638078  A8 03 61 28 */	lha r0, 0x6128(r3)
/* 8063807C  20 00 40 00 */	subfic r0, r0, 0x4000
/* 80638080  7C 03 07 34 */	extsh r3, r0
/* 80638084  4B DD 47 6D */	bl Matrix_RotateZ
/* 80638088  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063808C  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 80638090  38 A3 D2 78 */	addi r5, r3, lit_368@l /* 0x8064D278@l */
/* 80638094  C0 64 D2 74 */	lfs f3, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 80638098  C0 25 00 00 */	lfs f1, 0(r5)
/* 8063809C  38 60 00 01 */	li r3, 1
/* 806380A0  FC 40 08 90 */	fmr f2, f1
/* 806380A4  4B DD 42 5D */	bl Matrix_translate
/* 806380A8  FC 20 F8 90 */	fmr f1, f31
/* 806380AC  38 60 00 01 */	li r3, 1
/* 806380B0  FC 40 F0 90 */	fmr f2, f30
/* 806380B4  FC 60 E8 90 */	fmr f3, f29
/* 806380B8  4B DD 43 35 */	bl Matrix_scale
/* 806380BC  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 806380C0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806380C4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806380C8  38 7D 00 08 */	addi r3, r29, 8
/* 806380CC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806380D0  90 1D 00 00 */	stw r0, 0(r29)
/* 806380D4  80 7E 00 00 */	lwz r3, 0(r30)
/* 806380D8  4B DD 52 FD */	bl _Matrix_to_Mtx_new
/* 806380DC  90 7D 00 04 */	stw r3, 4(r29)
/* 806380E0  4B DD 41 35 */	bl Matrix_pull
/* 806380E4  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 806380E8  3C 60 81 05 */	lis r3, int_sum_hal_clk01_long_model@ha /* 0x8104CF30@ha */
/* 806380EC  3C 80 DE 00 */	lis r4, 0xde00
/* 806380F0  38 A6 00 08 */	addi r5, r6, 8
/* 806380F4  38 03 CF 30 */	addi r0, r3, int_sum_hal_clk01_long_model@l /* 0x8104CF30@l */
/* 806380F8  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 806380FC  90 86 00 00 */	stw r4, 0(r6)
/* 80638100  90 06 00 04 */	stw r0, 4(r6)
lbl_80638104:
/* 80638104  38 60 00 01 */	li r3, 1
/* 80638108  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8063810C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80638110  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80638114  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80638118  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8063811C  39 61 00 40 */	addi r11, r1, 0x40
/* 80638120  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80638124  4B A6 2D FD */	bl func_8009AF20
/* 80638128  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063812C  7C 08 03 A6 */	mtlr r0
/* 80638130  38 21 00 70 */	addi r1, r1, 0x70
/* 80638134  4E 80 00 20 */	blr 
