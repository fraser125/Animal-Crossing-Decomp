lbl_80603DB4:
/* 80603DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603DB8  7C 08 02 A6 */	mflr r0
/* 80603DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603DC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80603DC4  7C 7F 1B 78 */	mr r31, r3
/* 80603DC8  4B FF FF 31 */	bl aWeatherSakura_CheckSakuraBorder
/* 80603DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80603DD0  41 82 00 74 */	beq lbl_80603E44
/* 80603DD4  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 80603DD8  41 82 00 18 */	beq lbl_80603DF0
/* 80603DDC  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064BAB8@ha */
/* 80603DE0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80603DE4  C0 04 BA B8 */	lfs f0, lit_395@l(r4)  /* 0x8064BAB8@l */
/* 80603DE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80603DEC  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_80603DF0:
/* 80603DF0  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80603DF4  41 82 00 18 */	beq lbl_80603E0C
/* 80603DF8  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064BAB8@ha */
/* 80603DFC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80603E00  C0 04 BA B8 */	lfs f0, lit_395@l(r4)  /* 0x8064BAB8@l */
/* 80603E04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80603E08  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_80603E0C:
/* 80603E0C  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80603E10  41 82 00 18 */	beq lbl_80603E28
/* 80603E14  3C 80 80 65 */	lis r4, lit_397@ha /* 0x8064BAC0@ha */
/* 80603E18  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80603E1C  C0 04 BA C0 */	lfs f0, lit_397@l(r4)  /* 0x8064BAC0@l */
/* 80603E20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80603E24  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80603E28:
/* 80603E28  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80603E2C  41 82 00 18 */	beq lbl_80603E44
/* 80603E30  3C 60 80 65 */	lis r3, lit_397@ha /* 0x8064BAC0@ha */
/* 80603E34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80603E38  C0 03 BA C0 */	lfs f0, lit_397@l(r3)  /* 0x8064BAC0@l */
/* 80603E3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80603E40  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80603E44:
/* 80603E44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80603E48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80603E4C  3C 63 00 02 */	addis r3, r3, 2
/* 80603E50  80 63 60 84 */	lwz r3, 0x6084(r3)
/* 80603E54  28 03 00 00 */	cmplwi r3, 0
/* 80603E58  41 82 00 40 */	beq lbl_80603E98
/* 80603E5C  80 83 00 00 */	lwz r4, 0(r3)
/* 80603E60  28 04 00 00 */	cmplwi r4, 0
/* 80603E64  41 82 00 34 */	beq lbl_80603E98
/* 80603E68  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064BAA8@ha */
/* 80603E6C  C0 24 01 8C */	lfs f1, 0x18c(r4)
/* 80603E70  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80603E74  C0 03 BA A8 */	lfs f0, lit_391@l(r3)  /* 0x8064BAA8@l */
/* 80603E78  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80603E7C  EC 20 08 2A */	fadds f1, f0, f1
/* 80603E80  40 80 00 18 */	bge lbl_80603E98
/* 80603E84  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80603E88  EC 02 00 28 */	fsubs f0, f2, f0
/* 80603E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80603E90  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80603E94  D0 3F 00 18 */	stfs f1, 0x18(r31)
lbl_80603E98:
/* 80603E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603EA0  7C 08 03 A6 */	mtlr r0
/* 80603EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80603EA8  4E 80 00 20 */	blr 
