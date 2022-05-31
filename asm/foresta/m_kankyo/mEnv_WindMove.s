lbl_803BA26C:
/* 803BA26C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803BA270  7C 08 02 A6 */	mflr r0
/* 803BA274  90 01 00 44 */	stw r0, 0x44(r1)
/* 803BA278  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803BA27C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803BA280  39 61 00 30 */	addi r11, r1, 0x30
/* 803BA284  4B CE 0C 51 */	bl func_8009AED4
/* 803BA288  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA28C  3B C3 63 34 */	addi r30, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA290  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 803BA294  2C 00 00 00 */	cmpwi r0, 0
/* 803BA298  40 82 02 E0 */	bne lbl_803BA578
/* 803BA29C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 803BA2A0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 803BA2A4  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 803BA2A8  40 81 00 18 */	ble lbl_803BA2C0
/* 803BA2AC  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA2B0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 803BA2B4  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA2B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BA2BC  41 80 00 28 */	blt lbl_803BA2E4
lbl_803BA2C0:
/* 803BA2C0  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 803BA2C4  40 80 00 3C */	bge lbl_803BA300
/* 803BA2C8  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA2CC  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA2D0  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA2D4  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA2D8  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 803BA2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BA2E0  40 81 00 20 */	ble lbl_803BA300
lbl_803BA2E4:
/* 803BA2E4  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA2E8  3C 60 80 64 */	lis r3, lit_710@ha /* 0x80642470@ha */
/* 803BA2EC  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA2F0  C0 03 24 70 */	lfs f0, lit_710@l(r3)  /* 0x80642470@l */
/* 803BA2F4  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 803BA2F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 803BA2FC  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_803BA300:
/* 803BA300  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA304  3B E3 63 34 */	addi r31, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA308  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 803BA30C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 803BA310  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 803BA314  40 81 00 18 */	ble lbl_803BA32C
/* 803BA318  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA31C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 803BA320  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BA328  41 80 00 28 */	blt lbl_803BA350
lbl_803BA32C:
/* 803BA32C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 803BA330  40 80 00 3C */	bge lbl_803BA36C
/* 803BA334  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA338  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA33C  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA340  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA344  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 803BA348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BA34C  40 81 00 20 */	ble lbl_803BA36C
lbl_803BA350:
/* 803BA350  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA354  3C 60 80 64 */	lis r3, lit_710@ha /* 0x80642470@ha */
/* 803BA358  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA35C  C0 03 24 70 */	lfs f0, lit_710@l(r3)  /* 0x80642470@l */
/* 803BA360  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 803BA364  EC 01 00 32 */	fmuls f0, f1, f0
/* 803BA368  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_803BA36C:
/* 803BA36C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 803BA370  C0 3E 00 08 */	lfs f1, 8(r30)
/* 803BA374  FC 03 08 00 */	fcmpu cr0, f3, f1
/* 803BA378  41 82 00 50 */	beq lbl_803BA3C8
/* 803BA37C  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA380  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA384  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA388  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA38C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 803BA390  EC 21 10 2A */	fadds f1, f1, f2
/* 803BA394  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803BA398  D0 3E 00 08 */	stfs f1, 8(r30)
/* 803BA39C  40 81 00 18 */	ble lbl_803BA3B4
/* 803BA3A0  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803BA3A4  4C 41 13 82 */	cror 2, 1, 2
/* 803BA3A8  40 82 00 20 */	bne lbl_803BA3C8
/* 803BA3AC  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 803BA3B0  48 00 00 18 */	b lbl_803BA3C8
lbl_803BA3B4:
/* 803BA3B4  40 80 00 14 */	bge lbl_803BA3C8
/* 803BA3B8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803BA3BC  4C 40 13 82 */	cror 2, 0, 2
/* 803BA3C0  40 82 00 08 */	bne lbl_803BA3C8
/* 803BA3C4  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_803BA3C8:
/* 803BA3C8  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 803BA3CC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 803BA3D0  FC 03 08 00 */	fcmpu cr0, f3, f1
/* 803BA3D4  41 82 00 50 */	beq lbl_803BA424
/* 803BA3D8  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA3DC  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA3E0  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA3E4  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA3E8  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 803BA3EC  EC 21 10 2A */	fadds f1, f1, f2
/* 803BA3F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803BA3F4  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 803BA3F8  40 81 00 18 */	ble lbl_803BA410
/* 803BA3FC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803BA400  4C 41 13 82 */	cror 2, 1, 2
/* 803BA404  40 82 00 20 */	bne lbl_803BA424
/* 803BA408  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 803BA40C  48 00 00 18 */	b lbl_803BA424
lbl_803BA410:
/* 803BA410  40 80 00 14 */	bge lbl_803BA424
/* 803BA414  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803BA418  4C 40 13 82 */	cror 2, 0, 2
/* 803BA41C  40 82 00 08 */	bne lbl_803BA424
/* 803BA420  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_803BA424:
/* 803BA424  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA428  38 63 63 34 */	addi r3, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA42C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 803BA430  2C 04 00 00 */	cmpwi r4, 0
/* 803BA434  41 81 01 10 */	bgt lbl_803BA544
/* 803BA438  4B CA 28 BD */	bl fqrand
/* 803BA43C  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80642450@ha */
/* 803BA440  C0 03 24 50 */	lfs f0, lit_588@l(r3)  /* 0x80642450@l */
/* 803BA444  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BA448  FC 00 00 1E */	fctiwz f0, f0
/* 803BA44C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803BA450  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803BA454  54 1D 07 FE */	clrlwi r29, r0, 0x1f
/* 803BA458  4B CA 28 9D */	bl fqrand
/* 803BA45C  FF E0 08 90 */	fmr f31, f1
/* 803BA460  4B CA 28 95 */	bl fqrand
/* 803BA464  2C 1D 00 01 */	cmpwi r29, 1
/* 803BA468  38 00 00 00 */	li r0, 0
/* 803BA46C  41 82 00 20 */	beq lbl_803BA48C
/* 803BA470  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA474  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80642448@ha */
/* 803BA478  38 63 63 34 */	addi r3, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA47C  C0 44 24 48 */	lfs f2, lit_544@l(r4)  /* 0x80642448@l */
/* 803BA480  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 803BA484  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 803BA488  40 82 00 08 */	bne lbl_803BA490
lbl_803BA48C:
/* 803BA48C  38 00 00 01 */	li r0, 1
lbl_803BA490:
/* 803BA490  2C 00 00 00 */	cmpwi r0, 0
/* 803BA494  38 00 00 02 */	li r0, 2
/* 803BA498  41 82 00 08 */	beq lbl_803BA4A0
/* 803BA49C  38 00 00 01 */	li r0, 1
lbl_803BA4A0:
/* 803BA4A0  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80642450@ha */
/* 803BA4A4  3C 80 80 64 */	lis r4, lit_711@ha /* 0x80642474@ha */
/* 803BA4A8  C0 03 24 50 */	lfs f0, lit_588@l(r3)  /* 0x80642450@l */
/* 803BA4AC  3C A0 80 65 */	lis r5, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA4B0  C0 44 24 74 */	lfs f2, lit_711@l(r4)  /* 0x80642474@l */
/* 803BA4B4  2C 00 00 01 */	cmpwi r0, 1
/* 803BA4B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BA4BC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 803BA4C0  38 A5 63 34 */	addi r5, r5, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA4C4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803BA4C8  EC 02 00 2A */	fadds f0, f2, f0
/* 803BA4CC  D0 25 00 34 */	stfs f1, 0x34(r5)
/* 803BA4D0  FC 00 00 1E */	fctiwz f0, f0
/* 803BA4D4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BA4D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA4DC  B0 05 00 2C */	sth r0, 0x2c(r5)
/* 803BA4E0  40 82 00 34 */	bne lbl_803BA514
/* 803BA4E4  3C 80 80 64 */	lis r4, lit_712@ha /* 0x80642478@ha */
/* 803BA4E8  3C 60 80 64 */	lis r3, lit_589@ha /* 0x80642454@ha */
/* 803BA4EC  C0 45 00 10 */	lfs f2, 0x10(r5)
/* 803BA4F0  C0 24 24 78 */	lfs f1, lit_712@l(r4)  /* 0x80642478@l */
/* 803BA4F4  C0 03 24 54 */	lfs f0, lit_589@l(r3)  /* 0x80642454@l */
/* 803BA4F8  EC 21 10 2A */	fadds f1, f1, f2
/* 803BA4FC  EC 00 10 2A */	fadds f0, f0, f2
/* 803BA500  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BA504  EC 1F 00 32 */	fmuls f0, f31, f0
/* 803BA508  EC 01 00 2A */	fadds f0, f1, f0
/* 803BA50C  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 803BA510  48 00 01 88 */	b lbl_803BA698
lbl_803BA514:
/* 803BA514  3C 80 80 64 */	lis r4, lit_712@ha /* 0x80642478@ha */
/* 803BA518  3C 60 80 64 */	lis r3, lit_589@ha /* 0x80642454@ha */
/* 803BA51C  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 803BA520  C0 24 24 78 */	lfs f1, lit_712@l(r4)  /* 0x80642478@l */
/* 803BA524  C0 03 24 54 */	lfs f0, lit_589@l(r3)  /* 0x80642454@l */
/* 803BA528  EC 22 08 28 */	fsubs f1, f2, f1
/* 803BA52C  EC 02 00 28 */	fsubs f0, f2, f0
/* 803BA530  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BA534  EC 1F 00 32 */	fmuls f0, f31, f0
/* 803BA538  EC 01 00 2A */	fadds f0, f1, f0
/* 803BA53C  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 803BA540  48 00 01 58 */	b lbl_803BA698
lbl_803BA544:
/* 803BA544  40 81 00 0C */	ble lbl_803BA550
/* 803BA548  38 04 FF FF */	addi r0, r4, -1
/* 803BA54C  90 03 00 28 */	stw r0, 0x28(r3)
lbl_803BA550:
/* 803BA550  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA554  80 03 63 34 */	lwz r0, mEnv_wind_info@l(r3)  /* 0x80656334@l */
/* 803BA558  2C 00 00 00 */	cmpwi r0, 0
/* 803BA55C  41 81 01 3C */	bgt lbl_803BA698
/* 803BA560  4B FF FB 51 */	bl mEnv_ChangeWind
/* 803BA564  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008CA0@ha */
/* 803BA568  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA56C  38 04 8C A0 */	addi r0, r4, 0x8CA0 /* 0x00008CA0@l */
/* 803BA570  90 03 63 34 */	stw r0, mEnv_wind_info@l(r3)  /* 0x80656334@l */
/* 803BA574  48 00 01 24 */	b lbl_803BA698
lbl_803BA578:
/* 803BA578  2C 00 00 01 */	cmpwi r0, 1
/* 803BA57C  40 82 00 50 */	bne lbl_803BA5CC
/* 803BA580  3C 80 80 64 */	lis r4, lit_713@ha /* 0x8064247C@ha */
/* 803BA584  3C 60 80 64 */	lis r3, lit_714@ha /* 0x80642480@ha */
/* 803BA588  C0 44 24 7C */	lfs f2, lit_713@l(r4)  /* 0x8064247C@l */
/* 803BA58C  C0 83 24 80 */	lfs f4, lit_714@l(r3)  /* 0x80642480@l */
/* 803BA590  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803BA594  FC 60 10 90 */	fmr f3, f2
/* 803BA598  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 803BA59C  48 00 0C 15 */	bl add_calc
/* 803BA5A0  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA5A4  38 83 63 34 */	addi r4, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA5A8  A8 64 00 2C */	lha r3, 0x2c(r4)
/* 803BA5AC  2C 03 00 00 */	cmpwi r3, 0
/* 803BA5B0  41 81 00 10 */	bgt lbl_803BA5C0
/* 803BA5B4  38 00 00 03 */	li r0, 3
/* 803BA5B8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803BA5BC  48 00 00 DC */	b lbl_803BA698
lbl_803BA5C0:
/* 803BA5C0  38 03 FF FF */	addi r0, r3, -1
/* 803BA5C4  B0 04 00 2C */	sth r0, 0x2c(r4)
/* 803BA5C8  48 00 00 D0 */	b lbl_803BA698
lbl_803BA5CC:
/* 803BA5CC  2C 00 00 02 */	cmpwi r0, 2
/* 803BA5D0  40 82 00 50 */	bne lbl_803BA620
/* 803BA5D4  3C 80 80 64 */	lis r4, lit_713@ha /* 0x8064247C@ha */
/* 803BA5D8  3C 60 80 64 */	lis r3, lit_714@ha /* 0x80642480@ha */
/* 803BA5DC  C0 44 24 7C */	lfs f2, lit_713@l(r4)  /* 0x8064247C@l */
/* 803BA5E0  C0 83 24 80 */	lfs f4, lit_714@l(r3)  /* 0x80642480@l */
/* 803BA5E4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803BA5E8  FC 60 10 90 */	fmr f3, f2
/* 803BA5EC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 803BA5F0  48 00 0B C1 */	bl add_calc
/* 803BA5F4  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA5F8  38 83 63 34 */	addi r4, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA5FC  A8 64 00 2C */	lha r3, 0x2c(r4)
/* 803BA600  2C 03 00 00 */	cmpwi r3, 0
/* 803BA604  41 81 00 10 */	bgt lbl_803BA614
/* 803BA608  38 00 00 03 */	li r0, 3
/* 803BA60C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803BA610  48 00 00 88 */	b lbl_803BA698
lbl_803BA614:
/* 803BA614  38 03 FF FF */	addi r0, r3, -1
/* 803BA618  B0 04 00 2C */	sth r0, 0x2c(r4)
/* 803BA61C  48 00 00 7C */	b lbl_803BA698
lbl_803BA620:
/* 803BA620  3C 80 80 64 */	lis r4, lit_715@ha /* 0x80642484@ha */
/* 803BA624  3C 60 80 64 */	lis r3, lit_716@ha /* 0x80642488@ha */
/* 803BA628  C0 44 24 84 */	lfs f2, lit_715@l(r4)  /* 0x80642484@l */
/* 803BA62C  38 83 24 88 */	addi r4, r3, lit_716@l /* 0x80642488@l */
/* 803BA630  3B FE 00 1C */	addi r31, r30, 0x1c
/* 803BA634  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 803BA638  FC 60 10 90 */	fmr f3, f2
/* 803BA63C  C0 84 00 00 */	lfs f4, 0(r4)
/* 803BA640  7F E3 FB 78 */	mr r3, r31
/* 803BA644  48 00 0B 6D */	bl add_calc
/* 803BA648  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803BA64C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 803BA650  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803BA654  40 82 00 44 */	bne lbl_803BA698
/* 803BA658  4B CA 26 9D */	bl fqrand
/* 803BA65C  3C 60 80 64 */	lis r3, lit_718@ha /* 0x80642490@ha */
/* 803BA660  3C A0 80 64 */	lis r5, lit_717@ha /* 0x8064248C@ha */
/* 803BA664  38 83 24 90 */	addi r4, r3, lit_718@l /* 0x80642490@l */
/* 803BA668  38 00 00 00 */	li r0, 0
/* 803BA66C  C0 04 00 00 */	lfs f0, 0(r4)
/* 803BA670  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA674  C0 45 24 8C */	lfs f2, lit_717@l(r5)  /* 0x8064248C@l */
/* 803BA678  38 63 63 34 */	addi r3, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA67C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BA680  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803BA684  EC 02 00 2A */	fadds f0, f2, f0
/* 803BA688  FC 00 00 1E */	fctiwz f0, f0
/* 803BA68C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BA690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA694  90 03 00 28 */	stw r0, 0x28(r3)
lbl_803BA698:
/* 803BA698  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA69C  38 83 63 34 */	addi r4, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA6A0  80 64 00 00 */	lwz r3, 0(r4)
/* 803BA6A4  2C 03 00 00 */	cmpwi r3, 0
/* 803BA6A8  40 81 00 0C */	ble lbl_803BA6B4
/* 803BA6AC  38 03 FF FF */	addi r0, r3, -1
/* 803BA6B0  90 04 00 00 */	stw r0, 0(r4)
lbl_803BA6B4:
/* 803BA6B4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803BA6B8  39 61 00 30 */	addi r11, r1, 0x30
/* 803BA6BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803BA6C0  4B CE 08 61 */	bl func_8009AF20
/* 803BA6C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BA6C8  7C 08 03 A6 */	mtlr r0
/* 803BA6CC  38 21 00 40 */	addi r1, r1, 0x40
/* 803BA6D0  4E 80 00 20 */	blr 
