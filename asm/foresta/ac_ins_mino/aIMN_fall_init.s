lbl_8059EF68:
/* 8059EF68  3C 80 80 65 */	lis r4, lit_581@ha /* 0x8064A1BC@ha */
/* 8059EF6C  3C A0 80 65 */	lis r5, lit_663@ha /* 0x8064A1D0@ha */
/* 8059EF70  38 C4 A1 BC */	addi r6, r4, lit_581@l /* 0x8064A1BC@l */
/* 8059EF74  C0 05 A1 D0 */	lfs f0, lit_663@l(r5)  /* 0x8064A1D0@l */
/* 8059EF78  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059EF7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8059EF80  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8059EF84  38 A0 00 00 */	li r5, 0
/* 8059EF88  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 8059EF8C  3C 84 00 02 */	addis r4, r4, 2
/* 8059EF90  38 00 00 01 */	li r0, 1
/* 8059EF94  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8059EF98  B0 A3 00 E0 */	sth r5, 0xe0(r3)
/* 8059EF9C  80 84 60 88 */	lwz r4, 0x6088(r4)
/* 8059EFA0  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8059EFA4  90 83 01 D4 */	stw r4, 0x1d4(r3)
/* 8059EFA8  98 03 00 B5 */	stb r0, 0xb5(r3)
/* 8059EFAC  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 8059EFB0  2C 00 00 24 */	cmpwi r0, 0x24
/* 8059EFB4  4D 82 00 20 */	beqlr 
/* 8059EFB8  40 80 00 10 */	bge lbl_8059EFC8
/* 8059EFBC  2C 00 00 23 */	cmpwi r0, 0x23
/* 8059EFC0  40 80 00 14 */	bge lbl_8059EFD4
/* 8059EFC4  4E 80 00 20 */	blr 
lbl_8059EFC8:
/* 8059EFC8  2C 00 00 26 */	cmpwi r0, 0x26
/* 8059EFCC  4C 80 00 20 */	bgelr 
/* 8059EFD0  48 00 00 0C */	b lbl_8059EFDC
lbl_8059EFD4:
/* 8059EFD4  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 8059EFD8  4E 80 00 20 */	blr 
lbl_8059EFDC:
/* 8059EFDC  3C 80 80 65 */	lis r4, lit_576@ha /* 0x8064A1A8@ha */
/* 8059EFE0  C0 04 A1 A8 */	lfs f0, lit_576@l(r4)  /* 0x8064A1A8@l */
/* 8059EFE4  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 8059EFE8  4E 80 00 20 */	blr 
