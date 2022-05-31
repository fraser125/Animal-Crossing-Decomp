lbl_8053BEC4:
/* 8053BEC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053BEC8  7C 08 02 A6 */	mflr r0
/* 8053BECC  7C 86 23 78 */	mr r6, r4
/* 8053BED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053BED4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053BED8  7C 7F 1B 78 */	mr r31, r3
/* 8053BEDC  88 63 00 03 */	lbz r3, 3(r3)
/* 8053BEE0  38 03 FF FF */	addi r0, r3, -1
/* 8053BEE4  98 1F 00 03 */	stb r0, 3(r31)
/* 8053BEE8  88 7F 00 00 */	lbz r3, 0(r31)
/* 8053BEEC  88 9F 00 02 */	lbz r4, 2(r31)
/* 8053BEF0  88 BF 00 03 */	lbz r5, 3(r31)
/* 8053BEF4  4B FF FE 59 */	bl aNPC_getP_anmData
/* 8053BEF8  88 A3 00 00 */	lbz r5, 0(r3)
/* 8053BEFC  3C 00 43 30 */	lis r0, 0x4330
/* 8053BF00  3C 80 80 65 */	lis r4, lit_913@ha /* 0x8064938C@ha */
/* 8053BF04  90 01 00 08 */	stw r0, 8(r1)
/* 8053BF08  C8 24 93 8C */	lfd f1, lit_913@l(r4)  /* 0x8064938C@l */
/* 8053BF0C  98 BF 00 04 */	stb r5, 4(r31)
/* 8053BF10  88 03 00 01 */	lbz r0, 1(r3)
/* 8053BF14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8053BF18  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053BF1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8053BF20  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8053BF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053BF28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053BF2C  7C 08 03 A6 */	mtlr r0
/* 8053BF30  38 21 00 20 */	addi r1, r1, 0x20
/* 8053BF34  4E 80 00 20 */	blr 
