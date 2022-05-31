lbl_8037E4B4:
/* 8037E4B4  2C 04 00 00 */	cmpwi r4, 0
/* 8037E4B8  38 83 1B D8 */	addi r4, r3, 0x1bd8
/* 8037E4BC  38 A3 1B DC */	addi r5, r3, 0x1bdc
/* 8037E4C0  41 82 00 14 */	beq lbl_8037E4D4
/* 8037E4C4  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037E4C8  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 8037E4CC  D0 05 00 00 */	stfs f0, 0(r5)
/* 8037E4D0  48 00 00 10 */	b lbl_8037E4E0
lbl_8037E4D4:
/* 8037E4D4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8037E4D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037E4DC  D0 05 00 00 */	stfs f0, 0(r5)
lbl_8037E4E0:
/* 8037E4E0  D0 24 00 00 */	stfs f1, 0(r4)
/* 8037E4E4  4E 80 00 20 */	blr 
