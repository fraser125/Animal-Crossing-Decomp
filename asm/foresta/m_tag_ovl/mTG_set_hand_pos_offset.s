lbl_805EF638:
/* 805EF638  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EF63C  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805EF640  C0 23 B8 14 */	lfs f1, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805EF644  80 05 09 D8 */	lwz r0, 0x9d8(r5)
/* 805EF648  28 00 00 00 */	cmplwi r0, 0
/* 805EF64C  41 82 00 38 */	beq lbl_805EF684
/* 805EF650  80 05 07 04 */	lwz r0, 0x704(r5)
/* 805EF654  2C 00 00 00 */	cmpwi r0, 0
/* 805EF658  40 82 00 10 */	bne lbl_805EF668
/* 805EF65C  3C 60 80 65 */	lis r3, lit_515@ha /* 0x8064B818@ha */
/* 805EF660  C0 23 B8 18 */	lfs f1, lit_515@l(r3)  /* 0x8064B818@l */
/* 805EF664  4E 80 00 20 */	blr 
lbl_805EF668:
/* 805EF668  2C 00 00 01 */	cmpwi r0, 1
/* 805EF66C  4C 82 00 20 */	bnelr 
/* 805EF670  2C 04 00 11 */	cmpwi r4, 0x11
/* 805EF674  4C 82 00 20 */	bnelr 
/* 805EF678  3C 60 80 65 */	lis r3, lit_516@ha /* 0x8064B81C@ha */
/* 805EF67C  C0 23 B8 1C */	lfs f1, lit_516@l(r3)  /* 0x8064B81C@l */
/* 805EF680  4E 80 00 20 */	blr 
lbl_805EF684:
/* 805EF684  80 05 09 88 */	lwz r0, 0x988(r5)
/* 805EF688  28 00 00 00 */	cmplwi r0, 0
/* 805EF68C  4D 82 00 20 */	beqlr 
/* 805EF690  80 05 00 D4 */	lwz r0, 0xd4(r5)
/* 805EF694  2C 00 00 0E */	cmpwi r0, 0xe
/* 805EF698  4C 82 00 20 */	bnelr 
/* 805EF69C  2C 04 00 01 */	cmpwi r4, 1
/* 805EF6A0  4C 82 00 20 */	bnelr 
/* 805EF6A4  3C 60 80 65 */	lis r3, lit_517@ha /* 0x8064B820@ha */
/* 805EF6A8  C0 23 B8 20 */	lfs f1, lit_517@l(r3)  /* 0x8064B820@l */
/* 805EF6AC  4E 80 00 20 */	blr 
