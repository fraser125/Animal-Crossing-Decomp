lbl_805A0DB4:
/* 805A0DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A0DB8  7C 08 02 A6 */	mflr r0
/* 805A0DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A0DC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A0DC4  7C 9F 23 78 */	mr r31, r4
/* 805A0DC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A0DCC  7C 7E 1B 78 */	mr r30, r3
/* 805A0DD0  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 805A0DD4  2C 00 00 0C */	cmpwi r0, 0xc
/* 805A0DD8  41 82 00 08 */	beq lbl_805A0DE0
/* 805A0DDC  4B FF FC C9 */	bl aITB_fly_ctrl
lbl_805A0DE0:
/* 805A0DE0  7F C3 F3 78 */	mr r3, r30
/* 805A0DE4  7F E4 FB 78 */	mr r4, r31
/* 805A0DE8  4B FF FA 29 */	bl aITB_BGcheck
/* 805A0DEC  3C 60 80 65 */	lis r3, lit_585@ha /* 0x8064A304@ha */
/* 805A0DF0  3C 80 80 65 */	lis r4, lit_586@ha /* 0x8064A30C@ha */
/* 805A0DF4  38 A3 A3 04 */	addi r5, r3, lit_585@l /* 0x8064A304@l */
/* 805A0DF8  38 C0 00 00 */	li r6, 0
/* 805A0DFC  C8 A5 00 00 */	lfd f5, 0(r5)
/* 805A0E00  38 A4 A3 0C */	addi r5, r4, lit_586@l /* 0x8064A30C@l */
/* 805A0E04  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064A314@ha */
/* 805A0E08  C8 85 00 00 */	lfd f4, 0(r5)
/* 805A0E0C  FC 40 28 34 */	frsqrte f2, f5
/* 805A0E10  38 83 A3 14 */	addi r4, r3, lit_587@l /* 0x8064A314@l */
/* 805A0E14  C8 64 00 00 */	lfd f3, 0(r4)
/* 805A0E18  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A0E1C  C0 03 A2 E0 */	lfs f0, lit_475@l(r3)  /* 0x8064A2E0@l */
/* 805A0E20  38 7E 00 DE */	addi r3, r30, 0xde
/* 805A0E24  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A0E28  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 805A0E2C  38 A0 09 C4 */	li r5, 0x9c4
/* 805A0E30  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A0E34  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0E38  FC 23 08 28 */	fsub f1, f3, f1
/* 805A0E3C  FC 42 00 72 */	fmul f2, f2, f1
/* 805A0E40  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A0E44  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A0E48  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0E4C  FC 23 08 28 */	fsub f1, f3, f1
/* 805A0E50  FC 42 00 72 */	fmul f2, f2, f1
/* 805A0E54  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A0E58  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A0E5C  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0E60  FC 23 08 28 */	fsub f1, f3, f1
/* 805A0E64  FC 22 00 72 */	fmul f1, f2, f1
/* 805A0E68  FC 25 00 72 */	fmul f1, f5, f1
/* 805A0E6C  FC 20 08 18 */	frsp f1, f1
/* 805A0E70  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A0E74  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A0E78  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A0E7C  4B E1 A4 95 */	bl add_calc_short_angle2
/* 805A0E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A0E84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A0E88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A0E8C  7C 08 03 A6 */	mtlr r0
/* 805A0E90  38 21 00 20 */	addi r1, r1, 0x20
/* 805A0E94  4E 80 00 20 */	blr 
