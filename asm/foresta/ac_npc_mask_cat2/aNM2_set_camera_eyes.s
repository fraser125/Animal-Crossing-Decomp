lbl_8055F844:
/* 8055F844  80 03 09 BC */	lwz r0, 0x9bc(r3)
/* 8055F848  2C 00 00 01 */	cmpwi r0, 1
/* 8055F84C  4C 82 00 20 */	bnelr 
/* 8055F850  3C 80 80 65 */	lis r4, lit_485@ha /* 0x80649714@ha */
/* 8055F854  3C A0 80 65 */	lis r5, lit_544@ha /* 0x80649730@ha */
/* 8055F858  38 C4 97 14 */	addi r6, r4, lit_485@l /* 0x80649714@l */
/* 8055F85C  C0 05 97 30 */	lfs f0, lit_544@l(r5)  /* 0x80649730@l */
/* 8055F860  C0 26 00 00 */	lfs f1, 0(r6)
/* 8055F864  38 80 00 03 */	li r4, 3
/* 8055F868  38 00 00 02 */	li r0, 2
/* 8055F86C  D0 23 08 20 */	stfs f1, 0x820(r3)
/* 8055F870  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 8055F874  D0 23 08 24 */	stfs f1, 0x824(r3)
/* 8055F878  D0 03 08 28 */	stfs f0, 0x828(r3)
/* 8055F87C  98 83 08 1A */	stb r4, 0x81a(r3)
/* 8055F880  98 03 08 1B */	stb r0, 0x81b(r3)
/* 8055F884  4E 80 00 20 */	blr 
