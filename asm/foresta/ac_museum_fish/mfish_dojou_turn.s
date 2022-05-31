lbl_8044CADC:
/* 8044CADC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8044CAE0  7C 08 02 A6 */	mflr r0
/* 8044CAE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8044CAE8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8044CAEC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8044CAF0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8044CAF4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8044CAF8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8044CAFC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8044CB00  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8044CB04  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8044CB08  3C A0 80 64 */	lis r5, lit_1101@ha /* 0x80644324@ha */
/* 8044CB0C  7C 7E 1B 78 */	mr r30, r3
/* 8044CB10  38 65 43 24 */	addi r3, r5, lit_1101@l /* 0x80644324@l */
/* 8044CB14  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044CB18  C0 23 00 00 */	lfs f1, 0(r3)
/* 8044CB1C  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8044CB20  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8044CB24  7C 9F 23 78 */	mr r31, r4
/* 8044CB28  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044CB2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044CB30  FC 00 00 1E */	fctiwz f0, f0
/* 8044CB34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8044CB38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8044CB3C  B0 1E 06 32 */	sth r0, 0x632(r30)
/* 8044CB40  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044CB44  38 03 07 1C */	addi r0, r3, 0x71c
/* 8044CB48  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 8044CB4C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CB50  4B F6 DF 4D */	bl cos_s
/* 8044CB54  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044CB58  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044CB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044CB60  4C 41 13 82 */	cror 2, 1, 2
/* 8044CB64  40 82 00 14 */	bne lbl_8044CB78
/* 8044CB68  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CB6C  4B F6 DF 31 */	bl cos_s
/* 8044CB70  FF E0 08 90 */	fmr f31, f1
/* 8044CB74  48 00 00 10 */	b lbl_8044CB84
lbl_8044CB78:
/* 8044CB78  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CB7C  4B F6 DF 21 */	bl cos_s
/* 8044CB80  FF E0 08 50 */	fneg f31, f1
lbl_8044CB84:
/* 8044CB84  3C 60 80 64 */	lis r3, lit_1680@ha /* 0x8064435C@ha */
/* 8044CB88  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044CB8C  38 A3 43 5C */	addi r5, r3, lit_1680@l /* 0x8064435C@l */
/* 8044CB90  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044CB94  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044CB98  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044CB9C  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044CBA0  FC 60 30 34 */	frsqrte f3, f6
/* 8044CBA4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044CBA8  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044CBAC  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044CBB0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044CBB4  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044CBB8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044CBBC  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044CBC0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044CBC4  FC 26 00 72 */	fmul f1, f6, f1
/* 8044CBC8  FC 24 08 28 */	fsub f1, f4, f1
/* 8044CBCC  FC 63 00 72 */	fmul f3, f3, f1
/* 8044CBD0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044CBD4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044CBD8  FC 26 00 72 */	fmul f1, f6, f1
/* 8044CBDC  FC 24 08 28 */	fsub f1, f4, f1
/* 8044CBE0  FC 63 00 72 */	fmul f3, f3, f1
/* 8044CBE4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044CBE8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044CBEC  FC 26 00 72 */	fmul f1, f6, f1
/* 8044CBF0  FC 24 08 28 */	fsub f1, f4, f1
/* 8044CBF4  FC 23 00 72 */	fmul f1, f3, f1
/* 8044CBF8  FC 26 00 72 */	fmul f1, f6, f1
/* 8044CBFC  FC 20 08 18 */	frsp f1, f1
/* 8044CC00  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8044CC04  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8044CC08  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044CC0C  EF C2 08 28 */	fsubs f30, f2, f1
/* 8044CC10  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8044CC14  40 81 00 54 */	ble lbl_8044CC68
/* 8044CC18  FC 20 F0 34 */	frsqrte f1, f30
/* 8044CC1C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044CC20  FC 25 00 72 */	fmul f1, f5, f1
/* 8044CC24  FC 1E 00 32 */	fmul f0, f30, f0
/* 8044CC28  FC 04 00 28 */	fsub f0, f4, f0
/* 8044CC2C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044CC30  FC 01 00 72 */	fmul f0, f1, f1
/* 8044CC34  FC 25 00 72 */	fmul f1, f5, f1
/* 8044CC38  FC 1E 00 32 */	fmul f0, f30, f0
/* 8044CC3C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044CC40  FC 21 00 32 */	fmul f1, f1, f0
/* 8044CC44  FC 01 00 72 */	fmul f0, f1, f1
/* 8044CC48  FC 25 00 72 */	fmul f1, f5, f1
/* 8044CC4C  FC 1E 00 32 */	fmul f0, f30, f0
/* 8044CC50  FC 04 00 28 */	fsub f0, f4, f0
/* 8044CC54  FC 01 00 32 */	fmul f0, f1, f0
/* 8044CC58  FC 1E 00 32 */	fmul f0, f30, f0
/* 8044CC5C  FC 00 00 18 */	frsp f0, f0
/* 8044CC60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8044CC64  C3 C1 00 10 */	lfs f30, 0x10(r1)
lbl_8044CC68:
/* 8044CC68  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CC6C  4B F6 DE 31 */	bl cos_s
/* 8044CC70  FF A0 08 90 */	fmr f29, f1
/* 8044CC74  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044CC78  4B F6 DE 79 */	bl sin_s
/* 8044CC7C  A8 9E 06 32 */	lha r4, 0x632(r30)
/* 8044CC80  3C 00 43 30 */	lis r0, 0x4330
/* 8044CC84  3C 60 80 64 */	lis r3, lit_1101@ha /* 0x80644324@ha */
/* 8044CC88  3C C0 80 64 */	lis r6, lit_570@ha /* 0x8064428C@ha */
/* 8044CC8C  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8044CC90  C0 03 43 24 */	lfs f0, lit_1101@l(r3)  /* 0x80644324@l */
/* 8044CC94  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8044CC98  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8044CC9C  C8 86 42 8C */	lfd f4, lit_570@l(r6)  /* 0x8064428C@l */
/* 8044CCA0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8044CCA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8044CCA8  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80644260@ha */
/* 8044CCAC  C0 44 42 98 */	lfs f2, lit_588@l(r4)  /* 0x80644298@l */
/* 8044CCB0  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8044CCB4  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 8044CCB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044CCBC  C0 45 42 60 */	lfs f2, lit_472@l(r5)  /* 0x80644260@l */
/* 8044CCC0  EC 63 20 28 */	fsubs f3, f3, f4
/* 8044CCC4  A8 9E 06 14 */	lha r4, 0x614(r30)
/* 8044CCC8  38 C0 00 2D */	li r6, 0x2d
/* 8044CCCC  FC 00 00 1E */	fctiwz f0, f0
/* 8044CCD0  EC 63 00 72 */	fmuls f3, f3, f1
/* 8044CCD4  EC 22 F0 28 */	fsubs f1, f2, f30
/* 8044CCD8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044CCDC  EC 43 07 72 */	fmuls f2, f3, f29
/* 8044CCE0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8044CCE4  FC 00 10 1E */	fctiwz f0, f2
/* 8044CCE8  7C 00 07 34 */	extsh r0, r0
/* 8044CCEC  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044CCF0  7C 00 07 34 */	extsh r0, r0
/* 8044CCF4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044CCF8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044CCFC  7C 05 07 34 */	extsh r5, r0
/* 8044CD00  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 8044CD04  7C 04 3A 14 */	add r0, r4, r7
/* 8044CD08  7C 04 07 34 */	extsh r4, r0
/* 8044CD0C  4B F6 E6 05 */	bl add_calc_short_angle2
/* 8044CD10  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8044CD14  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CD18  4B F6 DD 85 */	bl cos_s
/* 8044CD1C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044CD20  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044CD24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044CD28  4C 41 13 82 */	cror 2, 1, 2
/* 8044CD2C  40 82 00 10 */	bne lbl_8044CD3C
/* 8044CD30  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CD34  4B F6 DD 69 */	bl cos_s
/* 8044CD38  48 00 00 10 */	b lbl_8044CD48
lbl_8044CD3C:
/* 8044CD3C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CD40  4B F6 DD 5D */	bl cos_s
/* 8044CD44  FC 20 08 50 */	fneg f1, f1
lbl_8044CD48:
/* 8044CD48  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 8044CD4C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044CD50  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 8044CD54  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044CD58  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8044CD5C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044CD60  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044CD64  FC 80 38 34 */	frsqrte f4, f7
/* 8044CD68  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044CD6C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044CD70  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044CD74  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044CD78  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044CD7C  FC 44 01 32 */	fmul f2, f4, f4
/* 8044CD80  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044CD84  FC 86 01 32 */	fmul f4, f6, f4
/* 8044CD88  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044CD8C  FC 45 10 28 */	fsub f2, f5, f2
/* 8044CD90  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044CD94  FC 44 01 32 */	fmul f2, f4, f4
/* 8044CD98  FC 86 01 32 */	fmul f4, f6, f4
/* 8044CD9C  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044CDA0  FC 45 10 28 */	fsub f2, f5, f2
/* 8044CDA4  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044CDA8  FC 44 01 32 */	fmul f2, f4, f4
/* 8044CDAC  FC 86 01 32 */	fmul f4, f6, f4
/* 8044CDB0  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044CDB4  FC 45 10 28 */	fsub f2, f5, f2
/* 8044CDB8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044CDBC  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044CDC0  FC 40 10 18 */	frsp f2, f2
/* 8044CDC4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8044CDC8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8044CDCC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8044CDD0  EC 63 10 28 */	fsubs f3, f3, f2
/* 8044CDD4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8044CDD8  40 81 00 54 */	ble lbl_8044CE2C
/* 8044CDDC  FC 40 18 34 */	frsqrte f2, f3
/* 8044CDE0  FC 02 00 B2 */	fmul f0, f2, f2
/* 8044CDE4  FC 46 00 B2 */	fmul f2, f6, f2
/* 8044CDE8  FC 03 00 32 */	fmul f0, f3, f0
/* 8044CDEC  FC 05 00 28 */	fsub f0, f5, f0
/* 8044CDF0  FC 42 00 32 */	fmul f2, f2, f0
/* 8044CDF4  FC 02 00 B2 */	fmul f0, f2, f2
/* 8044CDF8  FC 46 00 B2 */	fmul f2, f6, f2
/* 8044CDFC  FC 03 00 32 */	fmul f0, f3, f0
/* 8044CE00  FC 05 00 28 */	fsub f0, f5, f0
/* 8044CE04  FC 42 00 32 */	fmul f2, f2, f0
/* 8044CE08  FC 02 00 B2 */	fmul f0, f2, f2
/* 8044CE0C  FC 46 00 B2 */	fmul f2, f6, f2
/* 8044CE10  FC 03 00 32 */	fmul f0, f3, f0
/* 8044CE14  FC 05 00 28 */	fsub f0, f5, f0
/* 8044CE18  FC 02 00 32 */	fmul f0, f2, f0
/* 8044CE1C  FC 03 00 32 */	fmul f0, f3, f0
/* 8044CE20  FC 00 00 18 */	frsp f0, f0
/* 8044CE24  D0 01 00 08 */	stfs f0, 8(r1)
/* 8044CE28  C0 61 00 08 */	lfs f3, 8(r1)
lbl_8044CE2C:
/* 8044CE2C  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8044CE30  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8044CE34  C0 03 42 B0 */	lfs f0, lit_697@l(r3)  /* 0x806442B0@l */
/* 8044CE38  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80644260@ha */
/* 8044CE3C  C0 44 42 98 */	lfs f2, lit_588@l(r4)  /* 0x80644298@l */
/* 8044CE40  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8044CE44  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044CE48  C0 25 42 60 */	lfs f1, lit_472@l(r5)  /* 0x80644260@l */
/* 8044CE4C  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8044CE50  38 C0 00 2D */	li r6, 0x2d
/* 8044CE54  EC 21 18 28 */	fsubs f1, f1, f3
/* 8044CE58  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044CE5C  FC 00 00 1E */	fctiwz f0, f0
/* 8044CE60  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044CE64  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8044CE68  7C 00 07 34 */	extsh r0, r0
/* 8044CE6C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044CE70  7C 00 07 34 */	extsh r0, r0
/* 8044CE74  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044CE78  7C 05 07 34 */	extsh r5, r0
/* 8044CE7C  4B F6 E4 95 */	bl add_calc_short_angle2
/* 8044CE80  A8 7E 06 22 */	lha r3, 0x622(r30)
/* 8044CE84  7C 60 07 35 */	extsh. r0, r3
/* 8044CE88  7C 03 00 D0 */	neg r0, r3
/* 8044CE8C  41 80 00 08 */	blt lbl_8044CE94
/* 8044CE90  7C 60 1B 78 */	mr r0, r3
lbl_8044CE94:
/* 8044CE94  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 8044CE98  40 80 00 10 */	bge lbl_8044CEA8
/* 8044CE9C  7F C3 F3 78 */	mr r3, r30
/* 8044CEA0  7F E4 FB 78 */	mr r4, r31
/* 8044CEA4  4B FF F6 69 */	bl mfish_dojou_normal_init
lbl_8044CEA8:
/* 8044CEA8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8044CEAC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8044CEB0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8044CEB4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8044CEB8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8044CEBC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8044CEC0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8044CEC4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8044CEC8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8044CECC  7C 08 03 A6 */	mtlr r0
/* 8044CED0  38 21 00 70 */	addi r1, r1, 0x70
/* 8044CED4  4E 80 00 20 */	blr 
