lbl_805FB230:
/* 805FB230  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805FB234  38 60 00 00 */	li r3, 0
/* 805FB238  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805FB23C  3C 84 00 02 */	addis r4, r4, 2
/* 805FB240  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 805FB244  A0 04 04 A4 */	lhz r0, 0x4a4(r4)
/* 805FB248  28 00 00 00 */	cmplwi r0, 0
/* 805FB24C  4D 82 00 20 */	beqlr 
/* 805FB250  28 00 22 24 */	cmplwi r0, 0x2224
/* 805FB254  41 80 00 14 */	blt lbl_805FB268
/* 805FB258  28 00 22 2B */	cmplwi r0, 0x222b
/* 805FB25C  41 81 00 0C */	bgt lbl_805FB268
/* 805FB260  38 60 00 3E */	li r3, 0x3e
/* 805FB264  4E 80 00 20 */	blr 
lbl_805FB268:
/* 805FB268  38 60 00 08 */	li r3, 8
/* 805FB26C  4E 80 00 20 */	blr 
