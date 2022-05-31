lbl_803B8D90:
/* 803B8D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B8D94  7C 08 02 A6 */	mflr r0
/* 803B8D98  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B8DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B8DA4  3B E3 9B A0 */	addi r31, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8DA8  A8 7F 00 0A */	lha r3, 0xa(r31)
/* 803B8DAC  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 803B8DB0  7C 03 00 00 */	cmpw r3, r0
/* 803B8DB4  41 82 00 54 */	beq lbl_803B8E08
/* 803B8DB8  3C 80 80 64 */	lis r4, lit_1523@ha /* 0x8064252C@ha */
/* 803B8DBC  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B8DC0  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 803B8DC4  C0 24 25 2C */	lfs f1, lit_1523@l(r4)  /* 0x8064252C@l */
/* 803B8DC8  C0 03 24 4C */	lfs f0, lit_545@l(r3)  /* 0x8064244C@l */
/* 803B8DCC  EC 22 08 2A */	fadds f1, f2, f1
/* 803B8DD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B8DD4  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 803B8DD8  4C 41 13 82 */	cror 2, 1, 2
/* 803B8DDC  40 82 00 5C */	bne lbl_803B8E38
/* 803B8DE0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 803B8DE4  48 24 9F 65 */	bl aWeather_ChangingWeather
/* 803B8DE8  2C 03 00 00 */	cmpwi r3, 0
/* 803B8DEC  40 82 00 4C */	bne lbl_803B8E38
/* 803B8DF0  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B8DF4  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 803B8DF8  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B8DFC  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 803B8E00  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 803B8E04  48 00 00 34 */	b lbl_803B8E38
lbl_803B8E08:
/* 803B8E08  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B8E0C  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B8E10  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 803B8E14  48 24 9F 35 */	bl aWeather_ChangingWeather
/* 803B8E18  2C 03 00 00 */	cmpwi r3, 0
/* 803B8E1C  40 82 00 1C */	bne lbl_803B8E38
/* 803B8E20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B8E24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B8E28  3C 63 00 02 */	addis r3, r3, 2
/* 803B8E2C  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 803B8E30  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 803B8E34  B0 1F 00 0C */	sth r0, 0xc(r31)
lbl_803B8E38:
/* 803B8E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B8E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B8E40  7C 08 03 A6 */	mtlr r0
/* 803B8E44  38 21 00 10 */	addi r1, r1, 0x10
/* 803B8E48  4E 80 00 20 */	blr 
