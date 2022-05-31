lbl_8050CA84:
/* 8050CA84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050CA88  7C 08 02 A6 */	mflr r0
/* 8050CA8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050CA90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8050CA94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8050CA98  7C 7E 1B 78 */	mr r30, r3
/* 8050CA9C  7C 83 23 78 */	mr r3, r4
/* 8050CAA0  4B EC CB A1 */	bl get_player_actor_withoutCheck
/* 8050CAA4  3C A0 80 65 */	lis r5, data_80648E74@ha /* 0x80648E74@ha */
/* 8050CAA8  3C 80 80 65 */	lis r4, lit_534@ha /* 0x80648E98@ha */
/* 8050CAAC  C0 45 8E 74 */	lfs f2, data_80648E74@l(r5)  /* 0x80648E74@l */
/* 8050CAB0  7C 7F 1B 78 */	mr r31, r3
/* 8050CAB4  C0 1E 04 30 */	lfs f0, 0x430(r30)
/* 8050CAB8  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 8050CABC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8050CAC0  C0 24 8E 98 */	lfs f1, lit_534@l(r4)  /* 0x80648E98@l */
/* 8050CAC4  2C 00 00 03 */	cmpwi r0, 3
/* 8050CAC8  FC 00 02 10 */	fabs f0, f0
/* 8050CACC  FC 00 00 18 */	frsp f0, f0
/* 8050CAD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8050CAD4  40 80 00 1C */	bge lbl_8050CAF0
/* 8050CAD8  2C 00 00 01 */	cmpwi r0, 1
/* 8050CADC  40 80 00 08 */	bge lbl_8050CAE4
/* 8050CAE0  48 00 00 10 */	b lbl_8050CAF0
lbl_8050CAE4:
/* 8050CAE4  38 00 06 40 */	li r0, 0x640
/* 8050CAE8  B0 1E 04 44 */	sth r0, 0x444(r30)
/* 8050CAEC  48 00 00 0C */	b lbl_8050CAF8
lbl_8050CAF0:
/* 8050CAF0  38 00 13 88 */	li r0, 0x1388
/* 8050CAF4  B0 1E 04 44 */	sth r0, 0x444(r30)
lbl_8050CAF8:
/* 8050CAF8  3C 60 80 65 */	lis r3, lit_535@ha /* 0x80648E9C@ha */
/* 8050CAFC  FC 00 00 1E */	fctiwz f0, f0
/* 8050CB00  38 A3 8E 9C */	addi r5, r3, lit_535@l /* 0x80648E9C@l */
/* 8050CB04  3C 80 80 65 */	lis r4, lit_457@ha /* 0x80648E84@ha */
/* 8050CB08  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8050CB0C  38 A4 8E 84 */	addi r5, r4, lit_457@l /* 0x80648E84@l */
/* 8050CB10  3C 60 80 65 */	lis r3, lit_458@ha /* 0x80648E8C@ha */
/* 8050CB14  FC 40 28 34 */	frsqrte f2, f5
/* 8050CB18  38 83 8E 8C */	addi r4, r3, lit_458@l /* 0x80648E8C@l */
/* 8050CB1C  C8 85 00 00 */	lfd f4, 0(r5)
/* 8050CB20  3C 60 80 65 */	lis r3, lit_456@ha /* 0x80648E7C@ha */
/* 8050CB24  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050CB28  38 A0 00 FA */	li r5, 0xfa
/* 8050CB2C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CB30  C8 64 00 00 */	lfd f3, 0(r4)
/* 8050CB34  C0 03 8E 7C */	lfs f0, lit_456@l(r3)  /* 0x80648E7C@l */
/* 8050CB38  38 7E 04 3E */	addi r3, r30, 0x43e
/* 8050CB3C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CB40  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8050CB44  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CB48  A8 1E 04 44 */	lha r0, 0x444(r30)
/* 8050CB4C  38 C0 00 00 */	li r6, 0
/* 8050CB50  7C 04 00 50 */	subf r0, r4, r0
/* 8050CB54  7C 04 07 34 */	extsh r4, r0
/* 8050CB58  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CB5C  FC 42 00 72 */	fmul f2, f2, f1
/* 8050CB60  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CB64  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CB68  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CB6C  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CB70  FC 42 00 72 */	fmul f2, f2, f1
/* 8050CB74  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CB78  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CB7C  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CB80  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CB84  FC 22 00 72 */	fmul f1, f2, f1
/* 8050CB88  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CB8C  FC 20 08 18 */	frsp f1, f1
/* 8050CB90  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8050CB94  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8050CB98  EC 20 08 28 */	fsubs f1, f0, f1
/* 8050CB9C  4B EA E7 75 */	bl add_calc_short_angle2
/* 8050CBA0  3C 60 80 65 */	lis r3, lit_535@ha /* 0x80648E9C@ha */
/* 8050CBA4  3C 80 80 65 */	lis r4, lit_457@ha /* 0x80648E84@ha */
/* 8050CBA8  38 A3 8E 9C */	addi r5, r3, lit_535@l /* 0x80648E9C@l */
/* 8050CBAC  A8 1E 04 3E */	lha r0, 0x43e(r30)
/* 8050CBB0  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8050CBB4  3C 60 80 65 */	lis r3, lit_458@ha /* 0x80648E8C@ha */
/* 8050CBB8  38 A3 8E 8C */	addi r5, r3, lit_458@l /* 0x80648E8C@l */
/* 8050CBBC  C8 84 8E 84 */	lfd f4, lit_457@l(r4)  /* 0x80648E84@l */
/* 8050CBC0  FC 40 28 34 */	frsqrte f2, f5
/* 8050CBC4  3C 60 80 65 */	lis r3, lit_456@ha /* 0x80648E7C@ha */
/* 8050CBC8  38 83 8E 7C */	addi r4, r3, lit_456@l /* 0x80648E7C@l */
/* 8050CBCC  C8 65 00 00 */	lfd f3, 0(r5)
/* 8050CBD0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8050CBD4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8050CBD8  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CBDC  A8 9E 00 B6 */	lha r4, 0xb6(r30)
/* 8050CBE0  38 7E 00 36 */	addi r3, r30, 0x36
/* 8050CBE4  7C 05 07 34 */	extsh r5, r0
/* 8050CBE8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CBEC  38 C0 00 00 */	li r6, 0
/* 8050CBF0  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CBF4  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CBF8  FC 42 00 72 */	fmul f2, f2, f1
/* 8050CBFC  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CC00  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CC04  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CC08  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CC0C  FC 42 00 72 */	fmul f2, f2, f1
/* 8050CC10  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CC14  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CC18  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CC1C  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CC20  FC 22 00 72 */	fmul f1, f2, f1
/* 8050CC24  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CC28  FC 20 08 18 */	frsp f1, f1
/* 8050CC2C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8050CC30  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8050CC34  EC 20 08 28 */	fsubs f1, f0, f1
/* 8050CC38  4B EA E6 D9 */	bl add_calc_short_angle2
/* 8050CC3C  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 8050CC40  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 8050CC44  A8 7E 00 B6 */	lha r3, 0xb6(r30)
/* 8050CC48  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 8050CC4C  7C 63 00 50 */	subf r3, r3, r0
/* 8050CC50  7C 60 07 34 */	extsh r0, r3
/* 8050CC54  7C 63 07 35 */	extsh. r3, r3
/* 8050CC58  7C 60 00 D0 */	neg r3, r0
/* 8050CC5C  41 80 00 08 */	blt lbl_8050CC64
/* 8050CC60  7C 03 03 78 */	mr r3, r0
lbl_8050CC64:
/* 8050CC64  7C 69 07 34 */	extsh r9, r3
/* 8050CC68  2C 09 80 00 */	cmpwi r9, -32768
/* 8050CC6C  40 81 00 08 */	ble lbl_8050CC74
/* 8050CC70  39 20 00 00 */	li r9, 0
lbl_8050CC74:
/* 8050CC74  3C 60 80 65 */	lis r3, lit_537@ha /* 0x80648EAC@ha */
/* 8050CC78  3C 80 80 65 */	lis r4, lit_457@ha /* 0x80648E84@ha */
/* 8050CC7C  38 A3 8E AC */	addi r5, r3, lit_537@l /* 0x80648EAC@l */
/* 8050CC80  C8 C4 8E 84 */	lfd f6, lit_457@l(r4)  /* 0x80648E84@l */
/* 8050CC84  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8050CC88  3C 60 80 65 */	lis r3, lit_458@ha /* 0x80648E8C@ha */
/* 8050CC8C  38 A3 8E 8C */	addi r5, r3, lit_458@l /* 0x80648E8C@l */
/* 8050CC90  3C 00 43 30 */	lis r0, 0x4330
/* 8050CC94  FC 40 38 34 */	frsqrte f2, f7
/* 8050CC98  3C 60 80 65 */	lis r3, lit_550@ha /* 0x80648EDC@ha */
/* 8050CC9C  38 E3 8E DC */	addi r7, r3, lit_550@l /* 0x80648EDC@l */
/* 8050CCA0  3D 00 00 01 */	lis r8, 0x0001 /* 0x00008000@ha */
/* 8050CCA4  3C 60 80 65 */	lis r3, lit_536@ha /* 0x80648EA4@ha */
/* 8050CCA8  3C 80 80 65 */	lis r4, lit_538@ha /* 0x80648EB4@ha */
/* 8050CCAC  FC 02 00 B2 */	fmul f0, f2, f2
/* 8050CCB0  C0 23 8E A4 */	lfs f1, lit_536@l(r3)  /* 0x80648EA4@l */
/* 8050CCB4  3C 60 80 65 */	lis r3, lit_456@ha /* 0x80648E7C@ha */
/* 8050CCB8  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8050CCBC  D0 3E 04 2C */	stfs f1, 0x42c(r30)
/* 8050CCC0  38 C3 8E 7C */	addi r6, r3, lit_456@l /* 0x80648E7C@l */
/* 8050CCC4  FC 07 00 32 */	fmul f0, f7, f0
/* 8050CCC8  38 A4 8E B4 */	addi r5, r4, lit_538@l /* 0x80648EB4@l */
/* 8050CCCC  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80648E78@ha */
/* 8050CCD0  7D 29 07 34 */	extsh r9, r9
/* 8050CCD4  38 83 8E 78 */	addi r4, r3, lit_442@l /* 0x80648E78@l */
/* 8050CCD8  FC 26 00 B2 */	fmul f1, f6, f2
/* 8050CCDC  38 68 80 00 */	addi r3, r8, 0x8000 /* 0x00008000@l */
/* 8050CCE0  FC 05 00 28 */	fsub f0, f5, f0
/* 8050CCE4  7D 09 18 50 */	subf r8, r9, r3
/* 8050CCE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8050CCEC  38 60 15 55 */	li r3, 0x1555
/* 8050CCF0  C9 07 00 00 */	lfd f8, 0(r7)
/* 8050CCF4  7D 08 1B D6 */	divw r8, r8, r3
/* 8050CCF8  FC 41 00 32 */	fmul f2, f1, f0
/* 8050CCFC  C1 3E 04 2C */	lfs f9, 0x42c(r30)
/* 8050CD00  C0 65 00 00 */	lfs f3, 0(r5)
/* 8050CD04  38 7E 00 74 */	addi r3, r30, 0x74
/* 8050CD08  FC 02 00 B2 */	fmul f0, f2, f2
/* 8050CD0C  FC 27 00 32 */	fmul f1, f7, f0
/* 8050CD10  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 8050CD14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050CD18  FC 46 00 B2 */	fmul f2, f6, f2
/* 8050CD1C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8050CD20  C8 81 00 20 */	lfd f4, 0x20(r1)
/* 8050CD24  FC 25 08 28 */	fsub f1, f5, f1
/* 8050CD28  ED 04 40 28 */	fsubs f8, f4, f8
/* 8050CD2C  C0 84 00 00 */	lfs f4, 0(r4)
/* 8050CD30  FD 42 00 72 */	fmul f10, f2, f1
/* 8050CD34  FC 40 42 10 */	fabs f2, f8
/* 8050CD38  FC 2A 02 B2 */	fmul f1, f10, f10
/* 8050CD3C  FD 00 10 18 */	frsp f8, f2
/* 8050CD40  FC 46 02 B2 */	fmul f2, f6, f10
/* 8050CD44  FC 27 00 72 */	fmul f1, f7, f1
/* 8050CD48  EC C9 40 2A */	fadds f6, f9, f8
/* 8050CD4C  FC 25 08 28 */	fsub f1, f5, f1
/* 8050CD50  D0 DE 04 2C */	stfs f6, 0x42c(r30)
/* 8050CD54  FC 42 00 72 */	fmul f2, f2, f1
/* 8050CD58  C0 3E 04 2C */	lfs f1, 0x42c(r30)
/* 8050CD5C  FC 47 00 B2 */	fmul f2, f7, f2
/* 8050CD60  FC 40 10 18 */	frsp f2, f2
/* 8050CD64  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8050CD68  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8050CD6C  EC 40 10 28 */	fsubs f2, f0, f2
/* 8050CD70  4B EA E4 41 */	bl add_calc
/* 8050CD74  A8 7E 04 3C */	lha r3, 0x43c(r30)
/* 8050CD78  28 1F 00 00 */	cmplwi r31, 0
/* 8050CD7C  38 03 09 00 */	addi r0, r3, 0x900
/* 8050CD80  B0 1E 04 3C */	sth r0, 0x43c(r30)
/* 8050CD84  41 82 00 18 */	beq lbl_8050CD9C
/* 8050CD88  3C 60 80 65 */	lis r3, lit_539@ha /* 0x80648EB8@ha */
/* 8050CD8C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8050CD90  C0 23 8E B8 */	lfs f1, lit_539@l(r3)  /* 0x80648EB8@l */
/* 8050CD94  EC 01 00 2A */	fadds f0, f1, f0
/* 8050CD98  D0 1E 04 34 */	stfs f0, 0x434(r30)
lbl_8050CD9C:
/* 8050CD9C  A8 7E 04 3C */	lha r3, 0x43c(r30)
/* 8050CDA0  4B EA DD 51 */	bl sin_s
/* 8050CDA4  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80648EBC@ha */
/* 8050CDA8  3C 00 43 30 */	lis r0, 0x4330
/* 8050CDAC  38 83 8E BC */	addi r4, r3, lit_540@l /* 0x80648EBC@l */
/* 8050CDB0  3C C0 80 65 */	lis r6, data_80648E74@ha /* 0x80648E74@ha */
/* 8050CDB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8050CDB8  3C 60 80 65 */	lis r3, lit_550@ha /* 0x80648EDC@ha */
/* 8050CDBC  38 A3 8E DC */	addi r5, r3, lit_550@l /* 0x80648EDC@l */
/* 8050CDC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8050CDC4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8050CDC8  C0 1E 04 34 */	lfs f0, 0x434(r30)
/* 8050CDCC  3C 60 80 65 */	lis r3, lit_541@ha /* 0x80648EC0@ha */
/* 8050CDD0  C8 65 00 00 */	lfd f3, 0(r5)
/* 8050CDD4  38 83 8E C0 */	addi r4, r3, lit_541@l /* 0x80648EC0@l */
/* 8050CDD8  C0 86 8E 74 */	lfs f4, data_80648E74@l(r6)  /* 0x80648E74@l */
/* 8050CDDC  EC 00 08 2A */	fadds f0, f0, f1
/* 8050CDE0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8050CDE4  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80648E78@ha */
/* 8050CDE8  D0 1E 04 34 */	stfs f0, 0x434(r30)
/* 8050CDEC  C0 03 8E 78 */	lfs f0, lit_442@l(r3)  /* 0x80648E78@l */
/* 8050CDF0  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 8050CDF4  A8 1E 00 B6 */	lha r0, 0xb6(r30)
/* 8050CDF8  7C 04 00 50 */	subf r0, r4, r0
/* 8050CDFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8050CE00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050CE04  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 8050CE08  EC 42 18 28 */	fsubs f2, f2, f3
/* 8050CE0C  EC 22 08 24 */	fdivs f1, f2, f1
/* 8050CE10  EC 24 08 2A */	fadds f1, f4, f1
/* 8050CE14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050CE18  40 80 00 0C */	bge lbl_8050CE24
/* 8050CE1C  FC 20 00 90 */	fmr f1, f0
/* 8050CE20  48 00 00 18 */	b lbl_8050CE38
lbl_8050CE24:
/* 8050CE24  3C 60 80 65 */	lis r3, lit_542@ha /* 0x80648EC4@ha */
/* 8050CE28  C0 03 8E C4 */	lfs f0, lit_542@l(r3)  /* 0x80648EC4@l */
/* 8050CE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050CE30  40 81 00 08 */	ble lbl_8050CE38
/* 8050CE34  FC 20 00 90 */	fmr f1, f0
lbl_8050CE38:
/* 8050CE38  3C 60 80 65 */	lis r3, lit_457@ha /* 0x80648E84@ha */
/* 8050CE3C  3C 80 80 65 */	lis r4, lit_458@ha /* 0x80648E8C@ha */
/* 8050CE40  38 A3 8E 84 */	addi r5, r3, lit_457@l /* 0x80648E84@l */
/* 8050CE44  C9 05 00 00 */	lfd f8, 0(r5)
/* 8050CE48  38 E4 8E 8C */	addi r7, r4, lit_458@l /* 0x80648E8C@l */
/* 8050CE4C  3C 60 80 65 */	lis r3, lit_456@ha /* 0x80648E7C@ha */
/* 8050CE50  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8050CE54  FC 80 40 34 */	frsqrte f4, f8
/* 8050CE58  38 C3 8E 7C */	addi r6, r3, lit_456@l /* 0x80648E7C@l */
/* 8050CE5C  3C 80 80 65 */	lis r4, lit_540@ha /* 0x80648EBC@ha */
/* 8050CE60  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8050CE64  38 A4 8E BC */	addi r5, r4, lit_540@l /* 0x80648EBC@l */
/* 8050CE68  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80648E78@ha */
/* 8050CE6C  FC 44 01 32 */	fmul f2, f4, f4
/* 8050CE70  38 83 8E 78 */	addi r4, r3, lit_442@l /* 0x80648E78@l */
/* 8050CE74  C0 06 00 00 */	lfs f0, 0(r6)
/* 8050CE78  38 7E 04 30 */	addi r3, r30, 0x430
/* 8050CE7C  FC A7 01 32 */	fmul f5, f7, f4
/* 8050CE80  C0 65 00 00 */	lfs f3, 0(r5)
/* 8050CE84  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050CE88  C0 84 00 00 */	lfs f4, 0(r4)
/* 8050CE8C  FC 46 10 28 */	fsub f2, f6, f2
/* 8050CE90  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050CE94  FC 45 01 72 */	fmul f2, f5, f5
/* 8050CE98  FC A7 01 72 */	fmul f5, f7, f5
/* 8050CE9C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050CEA0  FC 46 10 28 */	fsub f2, f6, f2
/* 8050CEA4  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050CEA8  FC 45 01 72 */	fmul f2, f5, f5
/* 8050CEAC  FC A7 01 72 */	fmul f5, f7, f5
/* 8050CEB0  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050CEB4  FC 46 10 28 */	fsub f2, f6, f2
/* 8050CEB8  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050CEBC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050CEC0  FC 40 10 18 */	frsp f2, f2
/* 8050CEC4  D0 41 00 08 */	stfs f2, 8(r1)
/* 8050CEC8  C0 41 00 08 */	lfs f2, 8(r1)
/* 8050CECC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8050CED0  4B EA E2 E1 */	bl add_calc
/* 8050CED4  3C 60 80 65 */	lis r3, data_80648E74@ha /* 0x80648E74@ha */
/* 8050CED8  3C 80 80 65 */	lis r4, lit_545@ha /* 0x80648ED0@ha */
/* 8050CEDC  38 A3 8E 74 */	addi r5, r3, data_80648E74@l /* 0x80648E74@l */
/* 8050CEE0  C0 1E 04 30 */	lfs f0, 0x430(r30)
/* 8050CEE4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050CEE8  38 E4 8E D0 */	addi r7, r4, lit_545@l /* 0x80648ED0@l */
/* 8050CEEC  3C 60 80 65 */	lis r3, lit_542@ha /* 0x80648EC4@ha */
/* 8050CEF0  3C 80 80 65 */	lis r4, lit_543@ha /* 0x80648EC8@ha */
/* 8050CEF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8050CEF8  38 A3 8E C4 */	addi r5, r3, lit_542@l /* 0x80648EC4@l */
/* 8050CEFC  3C 60 80 65 */	lis r3, lit_544@ha /* 0x80648ECC@ha */
/* 8050CF00  C0 87 00 00 */	lfs f4, 0(r7)
/* 8050CF04  39 03 8E CC */	addi r8, r3, lit_544@l /* 0x80648ECC@l */
/* 8050CF08  C0 44 8E C8 */	lfs f2, lit_543@l(r4)  /* 0x80648EC8@l */
/* 8050CF0C  FC 20 02 10 */	fabs f1, f0
/* 8050CF10  3C 60 80 65 */	lis r3, lit_546@ha /* 0x80648ED4@ha */
/* 8050CF14  38 C3 8E D4 */	addi r6, r3, lit_546@l /* 0x80648ED4@l */
/* 8050CF18  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050CF1C  3C 60 80 65 */	lis r3, lit_547@ha /* 0x80648ED8@ha */
/* 8050CF20  C0 A8 00 00 */	lfs f5, 0(r8)
/* 8050CF24  FC C0 08 18 */	frsp f6, f1
/* 8050CF28  38 83 8E D8 */	addi r4, r3, lit_547@l /* 0x80648ED8@l */
/* 8050CF2C  C0 66 00 00 */	lfs f3, 0(r6)
/* 8050CF30  7F C3 F3 78 */	mr r3, r30
/* 8050CF34  C0 24 00 00 */	lfs f1, 0(r4)
/* 8050CF38  EC 86 20 24 */	fdivs f4, f6, f4
/* 8050CF3C  EC 06 00 24 */	fdivs f0, f6, f0
/* 8050CF40  EC 03 00 28 */	fsubs f0, f3, f0
/* 8050CF44  EC 85 20 2A */	fadds f4, f5, f4
/* 8050CF48  EC 02 00 32 */	fmuls f0, f2, f0
/* 8050CF4C  EC 62 01 32 */	fmuls f3, f2, f4
/* 8050CF50  D0 7E 04 20 */	stfs f3, 0x420(r30)
/* 8050CF54  D0 7E 04 24 */	stfs f3, 0x424(r30)
/* 8050CF58  D0 1E 04 28 */	stfs f0, 0x428(r30)
/* 8050CF5C  4B FF FA 35 */	bl aBEE_calc_scale
/* 8050CF60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050CF64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8050CF68  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8050CF6C  7C 08 03 A6 */	mtlr r0
/* 8050CF70  38 21 00 30 */	addi r1, r1, 0x30
/* 8050CF74  4E 80 00 20 */	blr 
