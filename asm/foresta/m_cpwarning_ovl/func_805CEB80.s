lbl_805CEB80:
/* 805CEB80  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CEB84  80 C3 09 C4 */	lwz r6, 0x9c4(r3)
/* 805CEB88  88 06 00 02 */	lbz r0, 2(r6)
/* 805CEB8C  28 00 00 01 */	cmplwi r0, 1
/* 805CEB90  40 82 00 48 */	bne lbl_805CEBD8
/* 805CEB94  3C A0 80 65 */	lis r5, data_8064B044@ha /* 0x8064B044@ha */
/* 805CEB98  3C 60 80 65 */	lis r3, lit_412@ha /* 0x8064B048@ha */
/* 805CEB9C  C0 46 00 08 */	lfs f2, 8(r6)
/* 805CEBA0  C0 25 B0 44 */	lfs f1, data_8064B044@l(r5)  /* 0x8064B044@l */
/* 805CEBA4  C0 03 B0 48 */	lfs f0, lit_412@l(r3)  /* 0x8064B048@l */
/* 805CEBA8  EC 22 08 2A */	fadds f1, f2, f1
/* 805CEBAC  D0 26 00 08 */	stfs f1, 8(r6)
/* 805CEBB0  C0 26 00 08 */	lfs f1, 8(r6)
/* 805CEBB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CEBB8  4C 81 00 20 */	blelr 
/* 805CEBBC  D0 06 00 08 */	stfs f0, 8(r6)
/* 805CEBC0  38 00 00 00 */	li r0, 0
/* 805CEBC4  80 64 00 30 */	lwz r3, 0x30(r4)
/* 805CEBC8  90 64 00 04 */	stw r3, 4(r4)
/* 805CEBCC  98 06 00 00 */	stb r0, 0(r6)
/* 805CEBD0  98 06 00 01 */	stb r0, 1(r6)
/* 805CEBD4  4E 80 00 20 */	blr 
lbl_805CEBD8:
/* 805CEBD8  28 00 00 00 */	cmplwi r0, 0
/* 805CEBDC  4C 82 00 20 */	bnelr 
/* 805CEBE0  3C A0 80 65 */	lis r5, data_8064B044@ha /* 0x8064B044@ha */
/* 805CEBE4  3C 60 80 65 */	lis r3, lit_413@ha /* 0x8064B04C@ha */
/* 805CEBE8  C0 46 00 08 */	lfs f2, 8(r6)
/* 805CEBEC  C0 25 B0 44 */	lfs f1, data_8064B044@l(r5)  /* 0x8064B044@l */
/* 805CEBF0  C0 03 B0 4C */	lfs f0, lit_413@l(r3)  /* 0x8064B04C@l */
/* 805CEBF4  EC 22 08 28 */	fsubs f1, f2, f1
/* 805CEBF8  D0 26 00 08 */	stfs f1, 8(r6)
/* 805CEBFC  C0 26 00 08 */	lfs f1, 8(r6)
/* 805CEC00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CEC04  4C 80 00 20 */	bgelr 
/* 805CEC08  D0 06 00 08 */	stfs f0, 8(r6)
/* 805CEC0C  38 00 00 02 */	li r0, 2
/* 805CEC10  80 64 00 30 */	lwz r3, 0x30(r4)
/* 805CEC14  90 64 00 04 */	stw r3, 4(r4)
/* 805CEC18  90 04 00 30 */	stw r0, 0x30(r4)
/* 805CEC1C  4E 80 00 20 */	blr 
