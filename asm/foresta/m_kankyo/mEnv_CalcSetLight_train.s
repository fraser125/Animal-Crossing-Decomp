lbl_803B7C74:
/* 803B7C74  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B7C78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B7C7C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B7C80  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803B7C84  2C 00 00 0F */	cmpwi r0, 0xf
/* 803B7C88  41 82 00 0C */	beq lbl_803B7C94
/* 803B7C8C  2C 00 00 31 */	cmpwi r0, 0x31
/* 803B7C90  40 82 00 9C */	bne lbl_803B7D2C
lbl_803B7C94:
/* 803B7C94  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B7C98  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B7C9C  38 A5 9B A0 */	addi r5, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7CA0  C0 04 24 4C */	lfs f0, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B7CA4  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 803B7CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B7CAC  40 80 00 80 */	bge lbl_803B7D2C
/* 803B7CB0  3C A0 80 64 */	lis r5, lit_1204@ha /* 0x80642510@ha */
/* 803B7CB4  EC 60 08 28 */	fsubs f3, f0, f1
/* 803B7CB8  C0 25 25 10 */	lfs f1, lit_1204@l(r5)  /* 0x80642510@l */
/* 803B7CBC  3C 80 80 64 */	lis r4, lit_1123@ha /* 0x80642508@ha */
/* 803B7CC0  C0 04 25 08 */	lfs f0, lit_1123@l(r4)  /* 0x80642508@l */
/* 803B7CC4  3C 80 80 64 */	lis r4, lit_1205@ha /* 0x80642514@ha */
/* 803B7CC8  EC 41 00 F2 */	fmuls f2, f1, f3
/* 803B7CCC  EC 20 00 F2 */	fmuls f1, f0, f3
/* 803B7CD0  C0 04 25 14 */	lfs f0, lit_1205@l(r4)  /* 0x80642514@l */
/* 803B7CD4  88 83 00 00 */	lbz r4, 0(r3)
/* 803B7CD8  FC 40 10 1E */	fctiwz f2, f2
/* 803B7CDC  FC 20 08 1E */	fctiwz f1, f1
/* 803B7CE0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 803B7CE4  D8 41 00 08 */	stfd f2, 8(r1)
/* 803B7CE8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B7CEC  FC 00 00 1E */	fctiwz f0, f0
/* 803B7CF0  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 803B7CF4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B7CF8  7C 84 02 14 */	add r4, r4, r0
/* 803B7CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B7D00  98 83 00 00 */	stb r4, 0(r3)
/* 803B7D04  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B7D08  88 83 00 01 */	lbz r4, 1(r3)
/* 803B7D0C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B7D10  7C 04 02 14 */	add r0, r4, r0
/* 803B7D14  98 03 00 01 */	stb r0, 1(r3)
/* 803B7D18  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803B7D1C  88 83 00 02 */	lbz r4, 2(r3)
/* 803B7D20  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B7D24  7C 04 02 14 */	add r0, r4, r0
/* 803B7D28  98 03 00 02 */	stb r0, 2(r3)
lbl_803B7D2C:
/* 803B7D2C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B7D30  4E 80 00 20 */	blr 
