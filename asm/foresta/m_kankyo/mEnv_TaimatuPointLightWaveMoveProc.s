lbl_803B91AC:
/* 803B91AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B91B0  7C 08 02 A6 */	mflr r0
/* 803B91B4  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B91B8  3C 80 81 17 */	lis r4, point_light_wave_counter@ha /* 0x81169C44@ha */
/* 803B91BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B91C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B91C4  3B E3 9B A0 */	addi r31, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B91C8  AC 64 9C 44 */	lhau r3, point_light_wave_counter@l(r4)  /* 0x81169C44@l */
/* 803B91CC  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 803B91D0  38 63 01 90 */	addi r3, r3, 0x190
/* 803B91D4  2C 00 00 00 */	cmpwi r0, 0
/* 803B91D8  B0 64 00 00 */	sth r3, 0(r4)
/* 803B91DC  41 82 00 78 */	beq lbl_803B9254
/* 803B91E0  7C 63 07 34 */	extsh r3, r3
/* 803B91E4  48 00 19 0D */	bl sin_s
/* 803B91E8  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B91EC  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B91F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B91F4  4C 41 13 82 */	cror 2, 1, 2
/* 803B91F8  40 82 00 18 */	bne lbl_803B9210
/* 803B91FC  3C 60 81 17 */	lis r3, point_light_wave_counter@ha /* 0x81169C44@ha */
/* 803B9200  38 63 9C 44 */	addi r3, r3, point_light_wave_counter@l /* 0x81169C44@l */
/* 803B9204  A8 63 00 00 */	lha r3, 0(r3)
/* 803B9208  48 00 18 E9 */	bl sin_s
/* 803B920C  48 00 00 18 */	b lbl_803B9224
lbl_803B9210:
/* 803B9210  3C 60 81 17 */	lis r3, point_light_wave_counter@ha /* 0x81169C44@ha */
/* 803B9214  38 63 9C 44 */	addi r3, r3, point_light_wave_counter@l /* 0x81169C44@l */
/* 803B9218  A8 63 00 00 */	lha r3, 0(r3)
/* 803B921C  48 00 18 D5 */	bl sin_s
/* 803B9220  FC 20 08 50 */	fneg f1, f1
lbl_803B9224:
/* 803B9224  3C 60 80 64 */	lis r3, lit_1205@ha /* 0x80642514@ha */
/* 803B9228  C0 43 25 14 */	lfs f2, lit_1205@l(r3)  /* 0x80642514@l */
/* 803B922C  EC 02 00 72 */	fmuls f0, f2, f1
/* 803B9230  EC 02 00 2A */	fadds f0, f2, f0
/* 803B9234  FC 00 00 1E */	fctiwz f0, f0
/* 803B9238  D8 01 00 08 */	stfd f0, 8(r1)
/* 803B923C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B9240  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B9244  20 60 00 FF */	subfic r3, r0, 0xff
/* 803B9248  20 00 00 F0 */	subfic r0, r0, 0xf0
/* 803B924C  98 7F 00 04 */	stb r3, 4(r31)
/* 803B9250  98 1F 00 05 */	stb r0, 5(r31)
lbl_803B9254:
/* 803B9254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B9258  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B925C  7C 08 03 A6 */	mtlr r0
/* 803B9260  38 21 00 20 */	addi r1, r1, 0x20
/* 803B9264  4E 80 00 20 */	blr 
