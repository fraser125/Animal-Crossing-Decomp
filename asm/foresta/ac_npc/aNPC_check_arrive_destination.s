lbl_80530B8C:
/* 80530B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80530B90  7C 08 02 A6 */	mflr r0
/* 80530B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80530B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80530B9C  3B E0 00 00 */	li r31, 0
/* 80530BA0  C0 63 09 0C */	lfs f3, 0x90c(r3)
/* 80530BA4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80530BA8  C0 83 09 10 */	lfs f4, 0x910(r3)
/* 80530BAC  EC 43 00 28 */	fsubs f2, f3, f0
/* 80530BB0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80530BB4  C0 03 09 28 */	lfs f0, 0x928(r3)
/* 80530BB8  EC 24 08 28 */	fsubs f1, f4, f1
/* 80530BBC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80530BC0  EC 21 00 72 */	fmuls f1, f1, f1
/* 80530BC4  EC 22 08 2A */	fadds f1, f2, f1
/* 80530BC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530BCC  40 80 00 30 */	bge lbl_80530BFC
/* 80530BD0  C0 23 09 04 */	lfs f1, 0x904(r3)
/* 80530BD4  FC 01 18 00 */	fcmpu cr0, f1, f3
/* 80530BD8  40 82 00 18 */	bne lbl_80530BF0
/* 80530BDC  C0 03 09 08 */	lfs f0, 0x908(r3)
/* 80530BE0  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80530BE4  40 82 00 0C */	bne lbl_80530BF0
/* 80530BE8  3B E0 00 01 */	li r31, 1
/* 80530BEC  48 00 00 10 */	b lbl_80530BFC
lbl_80530BF0:
/* 80530BF0  C0 43 09 08 */	lfs f2, 0x908(r3)
/* 80530BF4  38 80 00 00 */	li r4, 0
/* 80530BF8  4B FF EC 35 */	bl aNPC_set_avoid_pos
lbl_80530BFC:
/* 80530BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80530C00  7F E3 FB 78 */	mr r3, r31
/* 80530C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80530C08  7C 08 03 A6 */	mtlr r0
/* 80530C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80530C10  4E 80 00 20 */	blr 
