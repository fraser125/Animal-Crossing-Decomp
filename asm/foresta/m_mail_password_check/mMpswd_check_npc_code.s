lbl_803BEB04:
/* 803BEB04  88 83 00 02 */	lbz r4, 2(r3)
/* 803BEB08  38 A0 00 00 */	li r5, 0
/* 803BEB0C  28 04 00 00 */	cmplwi r4, 0
/* 803BEB10  40 82 00 10 */	bne lbl_803BEB20
/* 803BEB14  88 03 00 03 */	lbz r0, 3(r3)
/* 803BEB18  28 00 00 EC */	cmplwi r0, 0xec
/* 803BEB1C  41 80 00 18 */	blt lbl_803BEB34
lbl_803BEB20:
/* 803BEB20  28 04 00 01 */	cmplwi r4, 1
/* 803BEB24  40 82 00 14 */	bne lbl_803BEB38
/* 803BEB28  88 03 00 03 */	lbz r0, 3(r3)
/* 803BEB2C  28 00 00 20 */	cmplwi r0, 0x20
/* 803BEB30  40 80 00 08 */	bge lbl_803BEB38
lbl_803BEB34:
/* 803BEB34  38 A0 00 01 */	li r5, 1
lbl_803BEB38:
/* 803BEB38  7C A3 2B 78 */	mr r3, r5
/* 803BEB3C  4E 80 00 20 */	blr 
