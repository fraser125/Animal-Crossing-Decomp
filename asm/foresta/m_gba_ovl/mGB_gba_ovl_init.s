lbl_805DCED4:
/* 805DCED4  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805DCED8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DCEDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DCEE0  38 E0 00 00 */	li r7, 0
/* 805DCEE4  81 48 09 E4 */	lwz r10, 0x9e4(r8)
/* 805DCEE8  38 C0 00 01 */	li r6, 1
/* 805DCEEC  38 A0 00 03 */	li r5, 3
/* 805DCEF0  38 00 00 FF */	li r0, 0xff
/* 805DCEF4  90 E8 09 3C */	stw r7, 0x93c(r8)
/* 805DCEF8  3C 80 81 21 */	lis r4, gb_ovl_change_flg@ha /* 0x81211738@ha */
/* 805DCEFC  3D 23 00 02 */	addis r9, r3, 2
/* 805DCF00  90 E8 07 A8 */	stw r7, 0x7a8(r8)
/* 805DCF04  90 C8 07 D4 */	stw r6, 0x7d4(r8)
/* 805DCF08  B0 A8 07 D8 */	sth r5, 0x7d8(r8)
/* 805DCF0C  98 0A 00 08 */	stb r0, 8(r10)
/* 805DCF10  98 E4 17 38 */	stb r7, gb_ovl_change_flg@l(r4)  /* 0x81211738@l */
/* 805DCF14  80 69 61 3C */	lwz r3, 0x613c(r9)
/* 805DCF18  A0 63 10 88 */	lhz r3, 0x1088(r3)
/* 805DCF1C  28 03 01 00 */	cmplwi r3, 0x100
/* 805DCF20  4D 80 00 20 */	bltlr 
/* 805DCF24  38 00 00 08 */	li r0, 8
/* 805DCF28  38 A3 FF 00 */	addi r5, r3, -256
/* 805DCF2C  38 80 00 00 */	li r4, 0
/* 805DCF30  7C 09 03 A6 */	mtctr r0
lbl_805DCF34:
/* 805DCF34  80 69 61 3C */	lwz r3, 0x613c(r9)
/* 805DCF38  38 04 23 40 */	addi r0, r4, 0x2340
/* 805DCF3C  7C 03 00 AE */	lbzx r0, r3, r0
/* 805DCF40  7C 05 00 00 */	cmpw r5, r0
/* 805DCF44  40 82 00 08 */	bne lbl_805DCF4C
/* 805DCF48  98 8A 00 08 */	stb r4, 8(r10)
lbl_805DCF4C:
/* 805DCF4C  38 84 00 01 */	addi r4, r4, 1
/* 805DCF50  42 00 FF E4 */	bdnz lbl_805DCF34
/* 805DCF54  4E 80 00 20 */	blr 
