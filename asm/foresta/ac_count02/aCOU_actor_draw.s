lbl_805ABDA0:
/* 805ABDA0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805ABDA4  7C 08 02 A6 */	mflr r0
/* 805ABDA8  90 01 00 84 */	stw r0, 0x84(r1)
/* 805ABDAC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805ABDB0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805ABDB4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805ABDB8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805ABDBC  39 61 00 60 */	addi r11, r1, 0x60
/* 805ABDC0  4B AE F0 D9 */	bl __save_gpr
/* 805ABDC4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805ABDC8  7C 6F 1B 78 */	mr r15, r3
/* 805ABDCC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805ABDD0  7C 90 23 78 */	mr r16, r4
/* 805ABDD4  3C 63 00 02 */	addis r3, r3, 2
/* 805ABDD8  3A AF 01 78 */	addi r21, r15, 0x178
/* 805ABDDC  80 83 60 98 */	lwz r4, 0x6098(r3)
/* 805ABDE0  38 60 00 4B */	li r3, 0x4b
/* 805ABDE4  80 AF 01 90 */	lwz r5, 0x190(r15)
/* 805ABDE8  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805ABDEC  82 D0 00 00 */	lwz r22, 0(r16)
/* 805ABDF0  89 C5 00 01 */	lbz r14, 1(r5)
/* 805ABDF4  7D 89 03 A6 */	mtctr r12
/* 805ABDF8  4E 80 04 21 */	bctrl 
/* 805ABDFC  7C 78 1B 78 */	mr r24, r3
/* 805ABE00  7E C3 B3 78 */	mr r3, r22
/* 805ABE04  3A 40 00 08 */	li r18, 8
/* 805ABE08  4B E3 93 A1 */	bl _texture_z_light_fog_prim_npc
/* 805ABE0C  3C 80 80 65 */	lis r4, lit_587@ha /* 0x8064A678@ha */
/* 805ABE10  3C A0 80 65 */	lis r5, lit_436@ha /* 0x8064A668@ha */
/* 805ABE14  38 E4 A6 78 */	addi r7, r4, lit_587@l /* 0x8064A678@l */
/* 805ABE18  3C 60 80 65 */	lis r3, lit_590@ha /* 0x8064A684@ha */
/* 805ABE1C  38 83 A6 84 */	addi r4, r3, lit_590@l /* 0x8064A684@l */
/* 805ABE20  38 05 A6 68 */	addi r0, r5, lit_436@l /* 0x8064A668@l */
/* 805ABE24  3D 20 DB 06 */	lis r9, 0xDB06 /* 0xDB060028@ha */
/* 805ABE28  3D 00 80 6C */	lis r8, textbl@ha /* 0x806C496C@ha */
/* 805ABE2C  3C 60 80 5B */	lis r3, func_805ABD3C@ha /* 0x805ABD3C@ha */
/* 805ABE30  90 01 00 10 */	stw r0, 0x10(r1)
/* 805ABE34  38 03 BD 3C */	addi r0, r3, func_805ABD3C@l /* 0x805ABD3C@l */
/* 805ABE38  3C C0 80 6C */	lis r6, xpos_tbl@ha /* 0x806C4994@ha */
/* 805ABE3C  55 D7 30 32 */	slwi r23, r14, 6
/* 805ABE40  C3 C7 00 00 */	lfs f30, 0(r7)
/* 805ABE44  CB E4 00 00 */	lfd f31, 0(r4)
/* 805ABE48  3B 69 00 28 */	addi r27, r9, 0x0028 /* 0xDB060028@l */
/* 805ABE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ABE50  3B 89 00 20 */	addi r28, r9, 0x20
/* 805ABE54  3B A8 49 6C */	addi r29, r8, textbl@l /* 0x806C496C@l */
/* 805ABE58  3B C9 00 24 */	addi r30, r9, 0x24
/* 805ABE5C  39 C6 49 94 */	addi r14, r6, xpos_tbl@l /* 0x806C4994@l */
/* 805ABE60  3A 60 00 00 */	li r19, 0
/* 805ABE64  3B E0 00 00 */	li r31, 0
lbl_805ABE68:
/* 805ABE68  80 16 02 D4 */	lwz r0, 0x2d4(r22)
/* 805ABE6C  7C 17 00 51 */	subf. r0, r23, r0
/* 805ABE70  90 16 02 D4 */	stw r0, 0x2d4(r22)
/* 805ABE74  7C 14 03 78 */	mr r20, r0
/* 805ABE78  41 82 00 D4 */	beq lbl_805ABF4C
/* 805ABE7C  22 33 00 03 */	subfic r17, r19, 3
/* 805ABE80  80 6F 02 BC */	lwz r3, 0x2bc(r15)
/* 805ABE84  7E 24 8B 78 */	mr r4, r17
/* 805ABE88  4B FF FA 9D */	bl aCOU_getTime
/* 805ABE8C  7C 79 1B 78 */	mr r25, r3
/* 805ABE90  80 6F 02 B8 */	lwz r3, 0x2b8(r15)
/* 805ABE94  7E 24 8B 78 */	mr r4, r17
/* 805ABE98  4B FF FA 8D */	bl aCOU_getTime
/* 805ABE9C  7C 7A 1B 78 */	mr r26, r3
/* 805ABEA0  4B E6 03 35 */	bl Matrix_push
/* 805ABEA4  82 36 02 D0 */	lwz r17, 0x2d0(r22)
/* 805ABEA8  57 24 10 3A */	slwi r4, r25, 2
/* 805ABEAC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805ABEB0  57 40 10 3A */	slwi r0, r26, 2
/* 805ABEB4  93 71 00 00 */	stw r27, 0(r17)
/* 805ABEB8  C0 43 00 00 */	lfs f2, 0(r3)
/* 805ABEBC  38 60 00 01 */	li r3, 1
/* 805ABEC0  93 11 00 04 */	stw r24, 4(r17)
/* 805ABEC4  FC 60 10 90 */	fmr f3, f2
/* 805ABEC8  93 91 00 08 */	stw r28, 8(r17)
/* 805ABECC  7C 9D 20 2E */	lwzx r4, r29, r4
/* 805ABED0  90 91 00 0C */	stw r4, 0xc(r17)
/* 805ABED4  93 D1 00 10 */	stw r30, 0x10(r17)
/* 805ABED8  7C 1D 00 2E */	lwzx r0, r29, r0
/* 805ABEDC  90 11 00 14 */	stw r0, 0x14(r17)
/* 805ABEE0  3A 31 00 18 */	addi r17, r17, 0x18
/* 805ABEE4  7C 0E FC 2E */	lfsx f0, r14, r31
/* 805ABEE8  EC 3E 00 32 */	fmuls f1, f30, f0
/* 805ABEEC  4B E6 04 15 */	bl Matrix_translate
/* 805ABEF0  92 36 02 D0 */	stw r17, 0x2d0(r22)
/* 805ABEF4  3C 00 43 30 */	lis r0, 0x4330
/* 805ABEF8  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805ABEFC  7E 03 83 78 */	mr r3, r16
/* 805ABF00  80 EF 02 C0 */	lwz r7, 0x2c0(r15)
/* 805ABF04  7E A4 AB 78 */	mr r4, r21
/* 805ABF08  90 01 00 08 */	stw r0, 8(r1)
/* 805ABF0C  7E 85 A3 78 */	mr r5, r20
/* 805ABF10  7C E0 90 38 */	and r0, r7, r18
/* 805ABF14  7D E8 7B 78 */	mr r8, r15
/* 805ABF18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805ABF1C  38 E0 00 00 */	li r7, 0
/* 805ABF20  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ABF24  C8 01 00 08 */	lfd f0, 8(r1)
/* 805ABF28  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805ABF2C  D0 0F 02 C8 */	stfs f0, 0x2c8(r15)
/* 805ABF30  4B DC 58 09 */	bl cKF_Si3_draw_R_SV
/* 805ABF34  4B E6 02 E1 */	bl Matrix_pull
/* 805ABF38  3A 73 00 01 */	addi r19, r19, 1
/* 805ABF3C  7E 52 0E 70 */	srawi r18, r18, 1
/* 805ABF40  2C 13 00 04 */	cmpwi r19, 4
/* 805ABF44  3B FF 00 04 */	addi r31, r31, 4
/* 805ABF48  41 80 FF 20 */	blt lbl_805ABE68
lbl_805ABF4C:
/* 805ABF4C  80 8F 02 B8 */	lwz r4, 0x2b8(r15)
/* 805ABF50  80 0F 02 BC */	lwz r0, 0x2bc(r15)
/* 805ABF54  7C 04 00 00 */	cmpw r4, r0
/* 805ABF58  41 82 00 44 */	beq lbl_805ABF9C
/* 805ABF5C  3C 60 80 65 */	lis r3, lit_588@ha /* 0x8064A67C@ha */
/* 805ABF60  C0 2F 02 CC */	lfs f1, 0x2cc(r15)
/* 805ABF64  C0 03 A6 7C */	lfs f0, lit_588@l(r3)  /* 0x8064A67C@l */
/* 805ABF68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ABF6C  40 80 00 18 */	bge lbl_805ABF84
/* 805ABF70  3C 60 80 65 */	lis r3, data_8064A664@ha /* 0x8064A664@ha */
/* 805ABF74  C0 03 A6 64 */	lfs f0, data_8064A664@l(r3)  /* 0x8064A664@l */
/* 805ABF78  EC 00 08 2A */	fadds f0, f0, f1
/* 805ABF7C  D0 0F 02 CC */	stfs f0, 0x2cc(r15)
/* 805ABF80  48 00 00 1C */	b lbl_805ABF9C
lbl_805ABF84:
/* 805ABF84  90 8F 02 BC */	stw r4, 0x2bc(r15)
/* 805ABF88  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A668@ha */
/* 805ABF8C  38 00 00 00 */	li r0, 0
/* 805ABF90  C0 03 A6 68 */	lfs f0, lit_436@l(r3)  /* 0x8064A668@l */
/* 805ABF94  90 0F 02 C0 */	stw r0, 0x2c0(r15)
/* 805ABF98  D0 0F 02 CC */	stfs f0, 0x2cc(r15)
lbl_805ABF9C:
/* 805ABF9C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805ABFA0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805ABFA4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805ABFA8  39 61 00 60 */	addi r11, r1, 0x60
/* 805ABFAC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805ABFB0  4B AE EF 35 */	bl __restore_gpr
/* 805ABFB4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805ABFB8  7C 08 03 A6 */	mtlr r0
/* 805ABFBC  38 21 00 80 */	addi r1, r1, 0x80
/* 805ABFC0  4E 80 00 20 */	blr 
