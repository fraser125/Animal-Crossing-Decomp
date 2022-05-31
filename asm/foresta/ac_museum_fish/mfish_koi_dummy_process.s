lbl_8043CB14:
/* 8043CB14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043CB18  7C 08 02 A6 */	mflr r0
/* 8043CB1C  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043CB20  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043CB24  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043CB28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043CB2C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043CB30  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043CB34  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043CB38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8043CB3C  FC 60 30 34 */	frsqrte f3, f6
/* 8043CB40  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043CB44  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043CB48  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043CB4C  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043CB50  7C 7F 1B 78 */	mr r31, r3
/* 8043CB54  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CB58  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043CB5C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043CB60  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CB64  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043CB68  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CB6C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CB70  FC 63 00 72 */	fmul f3, f3, f1
/* 8043CB74  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CB78  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CB7C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CB80  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CB84  FC 63 00 72 */	fmul f3, f3, f1
/* 8043CB88  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CB8C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CB90  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CB94  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CB98  FC 23 00 72 */	fmul f1, f3, f1
/* 8043CB9C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CBA0  FC 20 08 18 */	frsp f1, f1
/* 8043CBA4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8043CBA8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8043CBAC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043CBB0  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043CBB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043CBB8  40 81 00 54 */	ble lbl_8043CC0C
/* 8043CBBC  FC 20 10 34 */	frsqrte f1, f2
/* 8043CBC0  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CBC4  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CBC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CBCC  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CBD0  FC 21 00 32 */	fmul f1, f1, f0
/* 8043CBD4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CBD8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CBDC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CBE0  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CBE4  FC 21 00 32 */	fmul f1, f1, f0
/* 8043CBE8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CBEC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CBF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CBF4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CBF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8043CBFC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CC00  FC 00 00 18 */	frsp f0, f0
/* 8043CC04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8043CC08  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_8043CC0C:
/* 8043CC0C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043CC10  A8 9F 06 34 */	lha r4, 0x634(r31)
/* 8043CC14  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043CC18  38 7F 06 14 */	addi r3, r31, 0x614
/* 8043CC1C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043CC20  38 A0 02 AA */	li r5, 0x2aa
/* 8043CC24  38 C0 00 2D */	li r6, 0x2d
/* 8043CC28  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043CC2C  4B F7 E6 E5 */	bl add_calc_short_angle2
/* 8043CC30  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 8043CC34  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043CC38  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 8043CC3C  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043CC40  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043CC44  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043CC48  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043CC4C  FC 60 30 34 */	frsqrte f3, f6
/* 8043CC50  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043CC54  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043CC58  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043CC5C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043CC60  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043CC64  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CC68  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043CC6C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CC70  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CC74  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CC78  FC 63 00 72 */	fmul f3, f3, f1
/* 8043CC7C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CC80  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CC84  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CC88  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CC8C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043CC90  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CC94  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CC98  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CC9C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CCA0  FC 23 00 72 */	fmul f1, f3, f1
/* 8043CCA4  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CCA8  FC 20 08 18 */	frsp f1, f1
/* 8043CCAC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8043CCB0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8043CCB4  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043CCB8  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043CCBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043CCC0  40 81 00 54 */	ble lbl_8043CD14
/* 8043CCC4  FC 20 10 34 */	frsqrte f1, f2
/* 8043CCC8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CCCC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CCD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CCD4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CCD8  FC 21 00 32 */	fmul f1, f1, f0
/* 8043CCDC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CCE0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CCE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CCE8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CCEC  FC 21 00 32 */	fmul f1, f1, f0
/* 8043CCF0  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CCF4  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CCF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CCFC  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CD00  FC 01 00 32 */	fmul f0, f1, f0
/* 8043CD04  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CD08  FC 00 00 18 */	frsp f0, f0
/* 8043CD0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043CD10  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_8043CD14:
/* 8043CD14  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043CD18  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 8043CD1C  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043CD20  38 7F 06 0E */	addi r3, r31, 0x60e
/* 8043CD24  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043CD28  38 A0 02 AA */	li r5, 0x2aa
/* 8043CD2C  38 C0 00 16 */	li r6, 0x16
/* 8043CD30  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043CD34  4B F7 E5 DD */	bl add_calc_short_angle2
/* 8043CD38  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043CD3C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043CD40  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043CD44  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043CD48  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043CD4C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043CD50  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043CD54  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 8043CD58  FC 60 30 34 */	frsqrte f3, f6
/* 8043CD5C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043CD60  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043CD64  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043CD68  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043CD6C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043CD70  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CD74  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043CD78  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CD7C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CD80  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CD84  FC 63 00 72 */	fmul f3, f3, f1
/* 8043CD88  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CD8C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CD90  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CD94  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CD98  FC 63 00 72 */	fmul f3, f3, f1
/* 8043CD9C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043CDA0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043CDA4  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CDA8  FC 24 08 28 */	fsub f1, f4, f1
/* 8043CDAC  FC 23 00 72 */	fmul f1, f3, f1
/* 8043CDB0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043CDB4  FC 20 08 18 */	frsp f1, f1
/* 8043CDB8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043CDBC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043CDC0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043CDC4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043CDC8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043CDCC  40 81 00 54 */	ble lbl_8043CE20
/* 8043CDD0  FC 20 10 34 */	frsqrte f1, f2
/* 8043CDD4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CDD8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CDDC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CDE0  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CDE4  FC 21 00 32 */	fmul f1, f1, f0
/* 8043CDE8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CDEC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CDF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CDF4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CDF8  FC 21 00 32 */	fmul f1, f1, f0
/* 8043CDFC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043CE00  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CE04  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CE08  FC 04 00 28 */	fsub f0, f4, f0
/* 8043CE0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8043CE10  FC 02 00 32 */	fmul f0, f2, f0
/* 8043CE14  FC 00 00 18 */	frsp f0, f0
/* 8043CE18  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043CE1C  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043CE20:
/* 8043CE20  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043CE24  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 8043CE28  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043CE2C  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8043CE30  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043CE34  38 A0 01 C7 */	li r5, 0x1c7
/* 8043CE38  38 C0 00 16 */	li r6, 0x16
/* 8043CE3C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043CE40  4B F7 E4 D1 */	bl add_calc_short_angle2
/* 8043CE44  3C C0 80 64 */	lis r6, lit_666@ha /* 0x806442AC@ha */
/* 8043CE48  3C A0 80 64 */	lis r5, lit_1068@ha /* 0x80644308@ha */
/* 8043CE4C  3C 80 80 64 */	lis r4, lit_526@ha /* 0x80644264@ha */
/* 8043CE50  C0 26 42 AC */	lfs f1, lit_666@l(r6)  /* 0x806442AC@l */
/* 8043CE54  C0 45 43 08 */	lfs f2, lit_1068@l(r5)  /* 0x80644308@l */
/* 8043CE58  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043CE5C  C0 64 42 64 */	lfs f3, lit_526@l(r4)  /* 0x80644264@l */
/* 8043CE60  4B F7 E4 35 */	bl add_calc2
/* 8043CE64  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043CE68  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043CE6C  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 8043CE70  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043CE74  C0 7F 05 EC */	lfs f3, 0x5ec(r31)
/* 8043CE78  4B F7 E4 1D */	bl add_calc2
/* 8043CE7C  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 8043CE80  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8043CE84  38 A3 43 48 */	addi r5, r3, lit_1558@l /* 0x80644348@l */
/* 8043CE88  C0 44 42 C4 */	lfs f2, lit_793@l(r4)  /* 0x806442C4@l */
/* 8043CE8C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8043CE90  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8043CE94  4B F7 E4 45 */	bl add_calc0
/* 8043CE98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043CE9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043CEA0  7C 08 03 A6 */	mtlr r0
/* 8043CEA4  38 21 00 30 */	addi r1, r1, 0x30
/* 8043CEA8  4E 80 00 20 */	blr 
