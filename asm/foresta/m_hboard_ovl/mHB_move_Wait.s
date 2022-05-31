lbl_805E0AC8:
/* 805E0AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E0ACC  7C 08 02 A6 */	mflr r0
/* 805E0AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E0AD4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E0AD8  80 03 03 54 */	lwz r0, 0x354(r3)
/* 805E0ADC  2C 00 00 04 */	cmpwi r0, 4
/* 805E0AE0  40 82 00 18 */	bne lbl_805E0AF8
/* 805E0AE4  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 805E0AE8  7C 83 23 78 */	mr r3, r4
/* 805E0AEC  38 80 00 04 */	li r4, 4
/* 805E0AF0  7D 89 03 A6 */	mtctr r12
/* 805E0AF4  4E 80 04 21 */	bctrl 
lbl_805E0AF8:
/* 805E0AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E0AFC  7C 08 03 A6 */	mtlr r0
/* 805E0B00  38 21 00 10 */	addi r1, r1, 0x10
/* 805E0B04  4E 80 00 20 */	blr 
