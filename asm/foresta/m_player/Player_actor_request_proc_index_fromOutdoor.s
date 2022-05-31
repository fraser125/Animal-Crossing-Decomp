lbl_804E9AC0:
/* 804E9AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9AC4  7C 08 02 A6 */	mflr r0
/* 804E9AC8  2C 04 00 00 */	cmpwi r4, 0
/* 804E9ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9AD0  41 82 00 48 */	beq lbl_804E9B18
/* 804E9AD4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804E9AD8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804E9ADC  3C 84 00 03 */	addis r4, r4, 3
/* 804E9AE0  88 04 85 BF */	lbz r0, -0x7a41(r4)
/* 804E9AE4  7C 00 07 75 */	extsb. r0, r0
/* 804E9AE8  41 82 00 10 */	beq lbl_804E9AF8
/* 804E9AEC  38 80 00 2C */	li r4, 0x2c
/* 804E9AF0  48 01 B4 3D */	bl func_80504F2C
/* 804E9AF4  48 00 00 24 */	b lbl_804E9B18
lbl_804E9AF8:
/* 804E9AF8  3C 80 80 65 */	lis r4, lit_7572@ha /* 0x80648360@ha */
/* 804E9AFC  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804E9B00  38 C4 83 60 */	addi r6, r4, lit_7572@l /* 0x80648360@l */
/* 804E9B04  C0 45 65 68 */	lfs f2, lit_604@l(r5)  /* 0x80646568@l */
/* 804E9B08  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E9B0C  38 80 00 07 */	li r4, 7
/* 804E9B10  38 A0 00 2D */	li r5, 0x2d
/* 804E9B14  4B FF BB 39 */	bl func_804E564C
lbl_804E9B18:
/* 804E9B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9B1C  7C 08 03 A6 */	mtlr r0
/* 804E9B20  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9B24  4E 80 00 20 */	blr 
