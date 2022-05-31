lbl_805A0FCC:
/* 805A0FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A0FD0  7C 08 02 A6 */	mflr r0
/* 805A0FD4  3C A0 80 65 */	lis r5, lit_585@ha /* 0x8064A304@ha */
/* 805A0FD8  C8 A5 A3 04 */	lfd f5, lit_585@l(r5)  /* 0x8064A304@l */
/* 805A0FDC  3C A0 80 65 */	lis r5, lit_587@ha /* 0x8064A314@ha */
/* 805A0FE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A0FE4  FC 40 28 34 */	frsqrte f2, f5
/* 805A0FE8  C8 65 A3 14 */	lfd f3, lit_587@l(r5)  /* 0x8064A314@l */
/* 805A0FEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A0FF0  7C 7F 1B 78 */	mr r31, r3
/* 805A0FF4  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064A30C@ha */
/* 805A0FF8  38 A0 09 C4 */	li r5, 0x9c4
/* 805A0FFC  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1000  38 C3 A3 0C */	addi r6, r3, lit_586@l /* 0x8064A30C@l */
/* 805A1004  C8 86 00 00 */	lfd f4, 0(r6)
/* 805A1008  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A100C  C0 03 A2 E0 */	lfs f0, lit_475@l(r3)  /* 0x8064A2E0@l */
/* 805A1010  38 7F 00 DE */	addi r3, r31, 0xde
/* 805A1014  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1018  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A101C  7C 9E 23 78 */	mr r30, r4
/* 805A1020  38 C0 00 00 */	li r6, 0
/* 805A1024  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1028  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805A102C  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1030  FC 42 00 72 */	fmul f2, f2, f1
/* 805A1034  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1038  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A103C  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1040  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1044  FC 42 00 72 */	fmul f2, f2, f1
/* 805A1048  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A104C  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1050  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1054  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1058  FC 22 00 72 */	fmul f1, f2, f1
/* 805A105C  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1060  FC 20 08 18 */	frsp f1, f1
/* 805A1064  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A1068  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A106C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A1070  4B E1 A2 A1 */	bl add_calc_short_angle2
/* 805A1074  7F E3 FB 78 */	mr r3, r31
/* 805A1078  4B FF F8 E5 */	bl aITB_height_ctrl
/* 805A107C  7F E3 FB 78 */	mr r3, r31
/* 805A1080  7F C4 F3 78 */	mr r4, r30
/* 805A1084  4B FF F7 8D */	bl aITB_BGcheck
/* 805A1088  C0 7F 02 4C */	lfs f3, 0x24c(r31)
/* 805A108C  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064A324@ha */
/* 805A1090  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A1094  C0 5F 02 50 */	lfs f2, 0x250(r31)
/* 805A1098  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805A109C  EC 63 00 28 */	fsubs f3, f3, f0
/* 805A10A0  C0 03 A3 24 */	lfs f0, lit_627@l(r3)  /* 0x8064A324@l */
/* 805A10A4  EC 22 08 28 */	fsubs f1, f2, f1
/* 805A10A8  EC 43 00 F2 */	fmuls f2, f3, f3
/* 805A10AC  EC 21 00 72 */	fmuls f1, f1, f1
/* 805A10B0  EC 22 08 2A */	fadds f1, f2, f1
/* 805A10B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A10B8  4C 41 13 82 */	cror 2, 1, 2
/* 805A10BC  40 82 00 14 */	bne lbl_805A10D0
/* 805A10C0  7F E3 FB 78 */	mr r3, r31
/* 805A10C4  7F C5 F3 78 */	mr r5, r30
/* 805A10C8  38 80 00 01 */	li r4, 1
/* 805A10CC  48 00 0A C1 */	bl aITB_setupAction
lbl_805A10D0:
/* 805A10D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A10D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A10D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A10DC  7C 08 03 A6 */	mtlr r0
/* 805A10E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A10E4  4E 80 00 20 */	blr 
