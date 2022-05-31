lbl_803B8B10:
/* 803B8B10  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8B14  38 C3 9B A0 */	addi r6, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8B18  A8 E6 00 16 */	lha r7, 0x16(r6)
/* 803B8B1C  2C 07 00 14 */	cmpwi r7, 0x14
/* 803B8B20  41 80 00 10 */	blt lbl_803B8B30
/* 803B8B24  38 00 00 00 */	li r0, 0
/* 803B8B28  B0 06 00 14 */	sth r0, 0x14(r6)
/* 803B8B2C  4E 80 00 20 */	blr 
lbl_803B8B30:
/* 803B8B30  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B8B34  3C 60 80 65 */	lis r3, switch_on_anime_percent_table@ha /* 0x80656510@ha */
/* 803B8B38  38 A4 24 4C */	addi r5, r4, lit_545@l /* 0x8064244C@l */
/* 803B8B3C  38 07 00 01 */	addi r0, r7, 1
/* 803B8B40  C0 46 00 90 */	lfs f2, 0x90(r6)
/* 803B8B44  54 E4 10 3A */	slwi r4, r7, 2
/* 803B8B48  C0 25 00 00 */	lfs f1, 0(r5)
/* 803B8B4C  38 63 65 10 */	addi r3, r3, switch_on_anime_percent_table@l /* 0x80656510@l */
/* 803B8B50  7C 03 24 2E */	lfsx f0, r3, r4
/* 803B8B54  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B8B58  B0 06 00 16 */	sth r0, 0x16(r6)
/* 803B8B5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B8B60  EC 02 00 2A */	fadds f0, f2, f0
/* 803B8B64  D0 06 00 00 */	stfs f0, 0(r6)
/* 803B8B68  4E 80 00 20 */	blr 
