lbl_8055500C:
/* 8055500C  80 03 09 CC */	lwz r0, 0x9cc(r3)
/* 80555010  2C 00 00 01 */	cmpwi r0, 1
/* 80555014  4C 82 00 20 */	bnelr 
/* 80555018  3C 80 80 65 */	lis r4, lit_523@ha /* 0x806495CC@ha */
/* 8055501C  3C A0 80 65 */	lis r5, lit_527@ha /* 0x806495DC@ha */
/* 80555020  38 C4 95 CC */	addi r6, r4, lit_523@l /* 0x806495CC@l */
/* 80555024  C0 05 95 DC */	lfs f0, lit_527@l(r5)  /* 0x806495DC@l */
/* 80555028  C0 26 00 00 */	lfs f1, 0(r6)
/* 8055502C  38 80 00 03 */	li r4, 3
/* 80555030  38 00 00 02 */	li r0, 2
/* 80555034  D0 23 08 20 */	stfs f1, 0x820(r3)
/* 80555038  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 8055503C  D0 23 08 24 */	stfs f1, 0x824(r3)
/* 80555040  D0 03 08 28 */	stfs f0, 0x828(r3)
/* 80555044  98 83 08 1A */	stb r4, 0x81a(r3)
/* 80555048  98 03 08 1B */	stb r0, 0x81b(r3)
/* 8055504C  4E 80 00 20 */	blr 
