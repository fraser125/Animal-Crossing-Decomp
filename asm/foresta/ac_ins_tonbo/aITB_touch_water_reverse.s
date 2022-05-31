lbl_805A12CC:
/* 805A12CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A12D0  7C 08 02 A6 */	mflr r0
/* 805A12D4  3C A0 80 65 */	lis r5, lit_585@ha /* 0x8064A304@ha */
/* 805A12D8  38 C5 A3 04 */	addi r6, r5, lit_585@l /* 0x8064A304@l */
/* 805A12DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A12E0  C8 A6 00 00 */	lfd f5, 0(r6)
/* 805A12E4  3C A0 80 65 */	lis r5, lit_586@ha /* 0x8064A30C@ha */
/* 805A12E8  38 E5 A3 0C */	addi r7, r5, lit_586@l /* 0x8064A30C@l */
/* 805A12EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A12F0  FC 40 28 34 */	frsqrte f2, f5
/* 805A12F4  3C C0 80 65 */	lis r6, lit_587@ha /* 0x8064A314@ha */
/* 805A12F8  C8 66 A3 14 */	lfd f3, lit_587@l(r6)  /* 0x8064A314@l */
/* 805A12FC  3C A0 80 65 */	lis r5, lit_475@ha /* 0x8064A2E0@ha */
/* 805A1300  C0 05 A2 E0 */	lfs f0, lit_475@l(r5)  /* 0x8064A2E0@l */
/* 805A1304  7C 7F 1B 78 */	mr r31, r3
/* 805A1308  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A130C  C8 87 00 00 */	lfd f4, 0(r7)
/* 805A1310  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A1314  7C 9E 23 78 */	mr r30, r4
/* 805A1318  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A131C  38 A0 09 C4 */	li r5, 0x9c4
/* 805A1320  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1324  A8 83 00 36 */	lha r4, 0x36(r3)
/* 805A1328  38 63 00 DE */	addi r3, r3, 0xde
/* 805A132C  38 C0 00 00 */	li r6, 0
/* 805A1330  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1334  FC 42 00 72 */	fmul f2, f2, f1
/* 805A1338  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A133C  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1340  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1344  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1348  FC 42 00 72 */	fmul f2, f2, f1
/* 805A134C  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1350  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1354  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1358  FC 23 08 28 */	fsub f1, f3, f1
/* 805A135C  FC 22 00 72 */	fmul f1, f2, f1
/* 805A1360  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1364  FC 20 08 18 */	frsp f1, f1
/* 805A1368  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A136C  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A1370  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A1374  4B E1 9F 9D */	bl add_calc_short_angle2
/* 805A1378  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 805A137C  2C 03 00 00 */	cmpwi r3, 0
/* 805A1380  40 81 00 0C */	ble lbl_805A138C
/* 805A1384  38 03 FF FF */	addi r0, r3, -1
/* 805A1388  90 1F 02 28 */	stw r0, 0x228(r31)
lbl_805A138C:
/* 805A138C  80 1F 02 28 */	lwz r0, 0x228(r31)
/* 805A1390  2C 00 00 00 */	cmpwi r0, 0
/* 805A1394  40 82 00 14 */	bne lbl_805A13A8
/* 805A1398  7F E3 FB 78 */	mr r3, r31
/* 805A139C  7F C5 F3 78 */	mr r5, r30
/* 805A13A0  38 80 00 07 */	li r4, 7
/* 805A13A4  48 00 07 E9 */	bl aITB_setupAction
lbl_805A13A8:
/* 805A13A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A13AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A13B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A13B4  7C 08 03 A6 */	mtlr r0
/* 805A13B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805A13BC  4E 80 00 20 */	blr 
