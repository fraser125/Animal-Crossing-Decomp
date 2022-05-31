lbl_805AB8C4:
/* 805AB8C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AB8C8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AB8CC  3C 84 00 02 */	addis r4, r4, 2
/* 805AB8D0  88 A4 61 25 */	lbz r5, 0x6125(r4)
/* 805AB8D4  80 C4 61 1C */	lwz r6, 0x611c(r4)
/* 805AB8D8  28 05 00 0C */	cmplwi r5, 0xc
/* 805AB8DC  40 82 00 24 */	bne lbl_805AB900
/* 805AB8E0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00014370@ha */
/* 805AB8E4  38 04 43 70 */	addi r0, r4, 0x4370 /* 0x00014370@l */
/* 805AB8E8  7C 06 00 00 */	cmpw r6, r0
/* 805AB8EC  41 80 00 14 */	blt lbl_805AB900
/* 805AB8F0  38 04 51 80 */	addi r0, r4, 0x5180
/* 805AB8F4  7C 06 00 50 */	subf r0, r6, r0
/* 805AB8F8  90 03 02 B8 */	stw r0, 0x2b8(r3)
/* 805AB8FC  48 00 00 20 */	b lbl_805AB91C
lbl_805AB900:
/* 805AB900  28 05 00 0C */	cmplwi r5, 0xc
/* 805AB904  41 82 00 10 */	beq lbl_805AB914
/* 805AB908  38 00 00 00 */	li r0, 0
/* 805AB90C  90 03 02 B8 */	stw r0, 0x2b8(r3)
/* 805AB910  48 00 00 0C */	b lbl_805AB91C
lbl_805AB914:
/* 805AB914  38 00 0E 0F */	li r0, 0xe0f
/* 805AB918  90 03 02 B8 */	stw r0, 0x2b8(r3)
lbl_805AB91C:
/* 805AB91C  80 63 02 B8 */	lwz r3, 0x2b8(r3)
/* 805AB920  4E 80 00 20 */	blr 
