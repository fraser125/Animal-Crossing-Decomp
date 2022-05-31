lbl_80374AA4:
/* 80374AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80374AA8  7C 08 02 A6 */	mflr r0
/* 80374AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80374AB0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80374AB4  54 00 06 77 */	rlwinm. r0, r0, 0, 0x19, 0x1b
/* 80374AB8  40 82 00 54 */	bne lbl_80374B0C
/* 80374ABC  A0 03 00 06 */	lhz r0, 6(r3)
/* 80374AC0  28 00 00 00 */	cmplwi r0, 0
/* 80374AC4  41 82 00 48 */	beq lbl_80374B0C
/* 80374AC8  88 A3 00 08 */	lbz r5, 8(r3)
/* 80374ACC  7C A0 07 75 */	extsb. r0, r5
/* 80374AD0  41 80 00 3C */	blt lbl_80374B0C
/* 80374AD4  88 C3 00 09 */	lbz r6, 9(r3)
/* 80374AD8  7C C0 07 75 */	extsb. r0, r6
/* 80374ADC  41 80 00 30 */	blt lbl_80374B0C
/* 80374AE0  88 04 00 E4 */	lbz r0, 0xe4(r4)
/* 80374AE4  7C A5 07 74 */	extsb r5, r5
/* 80374AE8  7C 00 07 74 */	extsb r0, r0
/* 80374AEC  7C 05 00 00 */	cmpw r5, r0
/* 80374AF0  40 82 00 18 */	bne lbl_80374B08
/* 80374AF4  88 04 00 E5 */	lbz r0, 0xe5(r4)
/* 80374AF8  7C C4 07 74 */	extsb r4, r6
/* 80374AFC  7C 00 07 74 */	extsb r0, r0
/* 80374B00  7C 04 00 00 */	cmpw r4, r0
/* 80374B04  41 82 00 08 */	beq lbl_80374B0C
lbl_80374B08:
/* 80374B08  4B FF F9 39 */	bl Actor_delete
lbl_80374B0C:
/* 80374B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80374B10  7C 08 03 A6 */	mtlr r0
/* 80374B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80374B18  4E 80 00 20 */	blr 
