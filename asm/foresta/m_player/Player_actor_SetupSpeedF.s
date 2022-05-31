lbl_804D529C:
/* 804D529C  80 A3 0C F8 */	lwz r5, 0xcf8(r3)
/* 804D52A0  38 00 00 00 */	li r0, 0
/* 804D52A4  2C 05 00 00 */	cmpwi r5, 0
/* 804D52A8  41 80 00 10 */	blt lbl_804D52B8
/* 804D52AC  2C 05 00 79 */	cmpwi r5, 0x79
/* 804D52B0  40 80 00 08 */	bge lbl_804D52B8
/* 804D52B4  38 00 00 01 */	li r0, 1
lbl_804D52B8:
/* 804D52B8  2C 00 00 00 */	cmpwi r0, 0
/* 804D52BC  4D 82 00 20 */	beqlr 
/* 804D52C0  3C 80 80 64 */	lis r4, data_827@ha /* 0x806466F4@ha */
/* 804D52C4  38 84 66 F4 */	addi r4, r4, data_827@l /* 0x806466F4@l */
/* 804D52C8  7C 04 28 AE */	lbzx r0, r4, r5
/* 804D52CC  7C 00 07 75 */	extsb. r0, r0
/* 804D52D0  4C 82 00 20 */	bnelr 
/* 804D52D4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D52D8  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804D52DC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 804D52E0  4E 80 00 20 */	blr 
