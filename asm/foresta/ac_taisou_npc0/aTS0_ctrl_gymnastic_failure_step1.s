lbl_80588DB0:
/* 80588DB0  3C 80 80 65 */	lis r4, lit_625@ha /* 0x80649B2C@ha */
/* 80588DB4  C0 23 09 9C */	lfs f1, 0x99c(r3)
/* 80588DB8  C0 04 9B 2C */	lfs f0, lit_625@l(r4)  /* 0x80649B2C@l */
/* 80588DBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588DC0  4C 80 00 20 */	bgelr 
/* 80588DC4  38 80 00 00 */	li r4, 0
/* 80588DC8  38 00 00 03 */	li r0, 3
/* 80588DCC  98 83 09 95 */	stb r4, 0x995(r3)
/* 80588DD0  98 03 09 96 */	stb r0, 0x996(r3)
/* 80588DD4  4E 80 00 20 */	blr 