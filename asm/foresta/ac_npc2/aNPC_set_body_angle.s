lbl_8053DCA8:
/* 8053DCA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DCAC  7C 08 02 A6 */	mflr r0
/* 8053DCB0  7C 66 1B 78 */	mr r6, r3
/* 8053DCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DCB8  88 03 09 34 */	lbz r0, 0x934(r3)
/* 8053DCBC  38 66 00 DC */	addi r3, r6, 0xdc
/* 8053DCC0  28 00 00 01 */	cmplwi r0, 1
/* 8053DCC4  40 82 00 0C */	bne lbl_8053DCD0
/* 8053DCC8  A8 06 09 32 */	lha r0, 0x932(r6)
/* 8053DCCC  48 00 00 2C */	b lbl_8053DCF8
lbl_8053DCD0:
/* 8053DCD0  3C A0 80 65 */	lis r5, lit_1530@ha /* 0x806493B4@ha */
/* 8053DCD4  3C 80 80 65 */	lis r4, lit_940@ha /* 0x80649394@ha */
/* 8053DCD8  C0 26 00 74 */	lfs f1, 0x74(r6)
/* 8053DCDC  C0 45 93 B4 */	lfs f2, lit_1530@l(r5)  /* 0x806493B4@l */
/* 8053DCE0  C0 04 93 94 */	lfs f0, lit_940@l(r4)  /* 0x80649394@l */
/* 8053DCE4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8053DCE8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8053DCEC  FC 00 00 1E */	fctiwz f0, f0
/* 8053DCF0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053DCF4  80 01 00 0C */	lwz r0, 0xc(r1)
lbl_8053DCF8:
/* 8053DCF8  7C 04 07 34 */	extsh r4, r0
/* 8053DCFC  38 A0 00 E0 */	li r5, 0xe0
/* 8053DD00  4B E7 CE 45 */	bl chase_angle
/* 8053DD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DD08  7C 08 03 A6 */	mtlr r0
/* 8053DD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DD10  4E 80 00 20 */	blr 
