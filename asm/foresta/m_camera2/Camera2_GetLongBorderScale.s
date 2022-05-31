lbl_8037E2A0:
/* 8037E2A0  80 03 1C A4 */	lwz r0, 0x1ca4(r3)
/* 8037E2A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037E2A8  41 82 00 14 */	beq lbl_8037E2BC
/* 8037E2AC  3C 60 80 64 */	lis r3, lit_596@ha /* 0x80641398@ha */
/* 8037E2B0  C0 03 13 98 */	lfs f0, lit_596@l(r3)  /* 0x80641398@l */
/* 8037E2B4  D0 04 00 00 */	stfs f0, 0(r4)
/* 8037E2B8  4E 80 00 20 */	blr 
lbl_8037E2BC:
/* 8037E2BC  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037E2C0  C0 03 13 6C */	lfs f0, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037E2C4  D0 04 00 00 */	stfs f0, 0(r4)
/* 8037E2C8  4E 80 00 20 */	blr 
