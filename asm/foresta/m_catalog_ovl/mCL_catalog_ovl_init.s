lbl_805CBD44:
/* 805CBD44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CBD48  7C 08 02 A6 */	mflr r0
/* 805CBD4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CBD50  39 61 00 30 */	addi r11, r1, 0x30
/* 805CBD54  4B AC F1 69 */	bl func_8009AEBC
/* 805CBD58  7C 7B 1B 78 */	mr r27, r3
/* 805CBD5C  38 80 00 01 */	li r4, 1
/* 805CBD60  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CBD64  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805CBD68  38 65 05 F4 */	addi r3, r5, 0x5f4
/* 805CBD6C  83 85 09 CC */	lwz r28, 0x9cc(r5)
/* 805CBD70  7D 89 03 A6 */	mtctr r12
/* 805CBD74  4E 80 04 21 */	bctrl 
/* 805CBD78  3C 60 80 65 */	lis r3, lit_526@ha /* 0x8064AEB8@ha */
/* 805CBD7C  3E FC 00 01 */	addis r23, r28, 1
/* 805CBD80  C0 03 AE B8 */	lfs f0, lit_526@l(r3)  /* 0x8064AEB8@l */
/* 805CBD84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805CBD88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805CBD8C  3C 80 80 6D */	lis r4, mCL_furniture_list@ha /* 0x806CA578@ha */
/* 805CBD90  D0 1C 08 1C */	stfs f0, 0x81c(r28)
/* 805CBD94  38 04 A5 78 */	addi r0, r4, mCL_furniture_list@l /* 0x806CA578@l */
/* 805CBD98  38 A0 00 05 */	li r5, 5
/* 805CBD9C  3F E3 00 02 */	addis r31, r3, 2
/* 805CBDA0  D0 1C 08 20 */	stfs f0, 0x820(r28)
/* 805CBDA4  38 80 00 00 */	li r4, 0
/* 805CBDA8  7C 1A 03 78 */	mr r26, r0
/* 805CBDAC  3B 37 A1 50 */	addi r25, r23, -24240
/* 805CBDB0  D0 1C 08 24 */	stfs f0, 0x824(r28)
/* 805CBDB4  3B 00 00 00 */	li r24, 0
/* 805CBDB8  B0 BC 50 90 */	sth r5, 0x5090(r28)
/* 805CBDBC  D0 1C 58 BC */	stfs f0, 0x58bc(r28)
/* 805CBDC0  D0 1C 58 C0 */	stfs f0, 0x58c0(r28)
/* 805CBDC4  D0 1C 58 C4 */	stfs f0, 0x58c4(r28)
/* 805CBDC8  B0 B7 A1 30 */	sth r5, -0x5ed0(r23)
/* 805CBDCC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805CBDD0  90 83 09 3C */	stw r4, 0x93c(r3)
lbl_805CBDD4:
/* 805CBDD4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805CBDD8  A0 9A 00 00 */	lhz r4, 0(r26)
/* 805CBDDC  38 63 11 08 */	addi r3, r3, 0x1108
/* 805CBDE0  4B FF FF 3D */	bl mCL_check_item_collect_bit
/* 805CBDE4  2C 03 00 00 */	cmpwi r3, 0
/* 805CBDE8  41 82 00 24 */	beq lbl_805CBE0C
/* 805CBDEC  A0 7A 00 00 */	lhz r3, 0(r26)
/* 805CBDF0  38 80 00 00 */	li r4, 0
/* 805CBDF4  4B E1 B9 E1 */	bl mRmTp_FtrIdx2FtrItemNo
/* 805CBDF8  B0 79 00 00 */	sth r3, 0(r25)
/* 805CBDFC  3B 39 00 02 */	addi r25, r25, 2
/* 805CBE00  A8 77 A1 48 */	lha r3, -0x5eb8(r23)
/* 805CBE04  38 03 00 01 */	addi r0, r3, 1
/* 805CBE08  B0 17 A1 48 */	sth r0, -0x5eb8(r23)
lbl_805CBE0C:
/* 805CBE0C  3B 18 00 01 */	addi r24, r24, 1
/* 805CBE10  3B 5A 00 04 */	addi r26, r26, 4
/* 805CBE14  2C 18 02 59 */	cmpwi r24, 0x259
/* 805CBE18  41 80 FF BC */	blt lbl_805CBDD4
/* 805CBE1C  3C 60 80 6D */	lis r3, mCL_item_idx_data@ha /* 0x806CB480@ha */
/* 805CBE20  3B 77 A7 8C */	addi r27, r23, -22644
/* 805CBE24  38 63 B4 80 */	addi r3, r3, mCL_item_idx_data@l /* 0x806CB480@l */
/* 805CBE28  3B 40 00 01 */	li r26, 1
/* 805CBE2C  3B 23 00 08 */	addi r25, r3, 8
lbl_805CBE30:
/* 805CBE30  2C 1A 00 01 */	cmpwi r26, 1
/* 805CBE34  40 82 00 10 */	bne lbl_805CBE44
/* 805CBE38  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805CBE3C  3A E3 11 B4 */	addi r23, r3, 0x11b4
/* 805CBE40  48 00 00 48 */	b lbl_805CBE88
lbl_805CBE44:
/* 805CBE44  2C 1A 00 02 */	cmpwi r26, 2
/* 805CBE48  40 82 00 10 */	bne lbl_805CBE58
/* 805CBE4C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805CBE50  3A E3 11 C0 */	addi r23, r3, 0x11c0
/* 805CBE54  48 00 00 34 */	b lbl_805CBE88
lbl_805CBE58:
/* 805CBE58  2C 1A 00 05 */	cmpwi r26, 5
/* 805CBE5C  40 82 00 10 */	bne lbl_805CBE6C
/* 805CBE60  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805CBE64  3A E3 11 CC */	addi r23, r3, 0x11cc
/* 805CBE68  48 00 00 20 */	b lbl_805CBE88
lbl_805CBE6C:
/* 805CBE6C  2C 1A 00 08 */	cmpwi r26, 8
/* 805CBE70  40 82 00 10 */	bne lbl_805CBE80
/* 805CBE74  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805CBE78  3A E3 11 D4 */	addi r23, r3, 0x11d4
/* 805CBE7C  48 00 00 0C */	b lbl_805CBE88
lbl_805CBE80:
/* 805CBE80  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805CBE84  3A E3 11 08 */	addi r23, r3, 0x1108
lbl_805CBE88:
/* 805CBE88  83 19 00 00 */	lwz r24, 0(r25)
/* 805CBE8C  3B DB 00 08 */	addi r30, r27, 8
/* 805CBE90  3B A0 00 00 */	li r29, 0
/* 805CBE94  48 00 00 A0 */	b lbl_805CBF34
lbl_805CBE98:
/* 805CBE98  A0 98 00 00 */	lhz r4, 0(r24)
/* 805CBE9C  7E E3 BB 78 */	mr r3, r23
/* 805CBEA0  4B FF FE 7D */	bl mCL_check_item_collect_bit
/* 805CBEA4  2C 03 00 00 */	cmpwi r3, 0
/* 805CBEA8  41 82 00 84 */	beq lbl_805CBF2C
/* 805CBEAC  2C 1A 00 01 */	cmpwi r26, 1
/* 805CBEB0  40 82 00 14 */	bne lbl_805CBEC4
/* 805CBEB4  A0 78 00 00 */	lhz r3, 0(r24)
/* 805CBEB8  38 03 27 00 */	addi r0, r3, 0x2700
/* 805CBEBC  B0 1E 00 00 */	sth r0, 0(r30)
/* 805CBEC0  48 00 00 5C */	b lbl_805CBF1C
lbl_805CBEC4:
/* 805CBEC4  2C 1A 00 02 */	cmpwi r26, 2
/* 805CBEC8  40 82 00 14 */	bne lbl_805CBEDC
/* 805CBECC  A0 78 00 00 */	lhz r3, 0(r24)
/* 805CBED0  38 03 26 00 */	addi r0, r3, 0x2600
/* 805CBED4  B0 1E 00 00 */	sth r0, 0(r30)
/* 805CBED8  48 00 00 44 */	b lbl_805CBF1C
lbl_805CBEDC:
/* 805CBEDC  2C 1A 00 05 */	cmpwi r26, 5
/* 805CBEE0  40 82 00 14 */	bne lbl_805CBEF4
/* 805CBEE4  A0 78 00 00 */	lhz r3, 0(r24)
/* 805CBEE8  38 03 20 C0 */	addi r0, r3, 0x20c0
/* 805CBEEC  B0 1E 00 00 */	sth r0, 0(r30)
/* 805CBEF0  48 00 00 2C */	b lbl_805CBF1C
lbl_805CBEF4:
/* 805CBEF4  2C 1A 00 08 */	cmpwi r26, 8
/* 805CBEF8  40 82 00 14 */	bne lbl_805CBF0C
/* 805CBEFC  A0 78 00 00 */	lhz r3, 0(r24)
/* 805CBF00  38 03 2A 00 */	addi r0, r3, 0x2a00
/* 805CBF04  B0 1E 00 00 */	sth r0, 0(r30)
/* 805CBF08  48 00 00 14 */	b lbl_805CBF1C
lbl_805CBF0C:
/* 805CBF0C  A0 78 00 00 */	lhz r3, 0(r24)
/* 805CBF10  38 80 00 00 */	li r4, 0
/* 805CBF14  4B E1 B8 C1 */	bl mRmTp_FtrIdx2FtrItemNo
/* 805CBF18  B0 7E 00 00 */	sth r3, 0(r30)
lbl_805CBF1C:
/* 805CBF1C  A8 7B 00 00 */	lha r3, 0(r27)
/* 805CBF20  3B DE 00 02 */	addi r30, r30, 2
/* 805CBF24  38 03 00 01 */	addi r0, r3, 1
/* 805CBF28  B0 1B 00 00 */	sth r0, 0(r27)
lbl_805CBF2C:
/* 805CBF2C  3B BD 00 01 */	addi r29, r29, 1
/* 805CBF30  3B 18 00 02 */	addi r24, r24, 2
lbl_805CBF34:
/* 805CBF34  80 19 00 04 */	lwz r0, 4(r25)
/* 805CBF38  7C 1D 00 00 */	cmpw r29, r0
/* 805CBF3C  41 80 FF 5C */	blt lbl_805CBE98
/* 805CBF40  3B 5A 00 01 */	addi r26, r26, 1
/* 805CBF44  3B 39 00 08 */	addi r25, r25, 8
/* 805CBF48  2C 1A 00 09 */	cmpwi r26, 9
/* 805CBF4C  3B 7B 06 44 */	addi r27, r27, 0x644
/* 805CBF50  41 80 FE E0 */	blt lbl_805CBE30
/* 805CBF54  3C 60 80 6D */	lis r3, mCL_item_idx_data@ha /* 0x806CB480@ha */
/* 805CBF58  3E FC 00 01 */	addis r23, r28, 1
/* 805CBF5C  3B 43 B4 80 */	addi r26, r3, mCL_item_idx_data@l /* 0x806CB480@l */
/* 805CBF60  3B 60 00 00 */	li r27, 0
/* 805CBF64  3A F7 A1 48 */	addi r23, r23, -24248
lbl_805CBF68:
/* 805CBF68  3C 7B 00 01 */	addis r3, r27, 1
/* 805CBF6C  3B 17 00 08 */	addi r24, r23, 8
/* 805CBF70  38 63 D9 F4 */	addi r3, r3, -9740
/* 805CBF74  3B B7 05 D4 */	addi r29, r23, 0x5d4
/* 805CBF78  7F 7C 19 AE */	stbx r27, r28, r3
/* 805CBF7C  3B 20 00 00 */	li r25, 0
lbl_805CBF80:
/* 805CBF80  A0 98 00 00 */	lhz r4, 0(r24)
/* 805CBF84  7F A3 EB 78 */	mr r3, r29
/* 805CBF88  4B DE 9A 1D */	bl mIN_copy_name_str
/* 805CBF8C  3B 39 00 01 */	addi r25, r25, 1
/* 805CBF90  3B BD 00 10 */	addi r29, r29, 0x10
/* 805CBF94  2C 19 00 07 */	cmpwi r25, 7
/* 805CBF98  3B 18 00 02 */	addi r24, r24, 2
/* 805CBF9C  41 80 FF E4 */	blt lbl_805CBF80
/* 805CBFA0  A8 77 00 00 */	lha r3, 0(r23)
/* 805CBFA4  80 1A 00 04 */	lwz r0, 4(r26)
/* 805CBFA8  7C 03 00 00 */	cmpw r3, r0
/* 805CBFAC  40 82 00 10 */	bne lbl_805CBFBC
/* 805CBFB0  38 00 00 01 */	li r0, 1
/* 805CBFB4  98 17 00 06 */	stb r0, 6(r23)
/* 805CBFB8  48 00 00 0C */	b lbl_805CBFC4
lbl_805CBFBC:
/* 805CBFBC  38 00 00 00 */	li r0, 0
/* 805CBFC0  98 17 00 06 */	stb r0, 6(r23)
lbl_805CBFC4:
/* 805CBFC4  3B 7B 00 01 */	addi r27, r27, 1
/* 805CBFC8  3B 5A 00 08 */	addi r26, r26, 8
/* 805CBFCC  2C 1B 00 09 */	cmpwi r27, 9
/* 805CBFD0  3A F7 06 44 */	addi r23, r23, 0x644
/* 805CBFD4  41 80 FF 94 */	blt lbl_805CBF68
/* 805CBFD8  3C 7C 00 01 */	addis r3, r28, 1
/* 805CBFDC  A0 83 A1 50 */	lhz r4, -0x5eb0(r3)
/* 805CBFE0  28 04 00 00 */	cmplwi r4, 0
/* 805CBFE4  41 82 00 0C */	beq lbl_805CBFF0
/* 805CBFE8  38 7C 00 08 */	addi r3, r28, 8
/* 805CBFEC  4B FF D1 E9 */	bl mCL_furniture_init
lbl_805CBFF0:
/* 805CBFF0  39 61 00 30 */	addi r11, r1, 0x30
/* 805CBFF4  4B AC EF 15 */	bl func_8009AF08
/* 805CBFF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CBFFC  7C 08 03 A6 */	mtlr r0
/* 805CC000  38 21 00 30 */	addi r1, r1, 0x30
/* 805CC004  4E 80 00 20 */	blr 
