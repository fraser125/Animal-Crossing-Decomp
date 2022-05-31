lbl_805A10E8:
/* 805A10E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A10EC  7C 08 02 A6 */	mflr r0
/* 805A10F0  3C A0 80 65 */	lis r5, lit_585@ha /* 0x8064A304@ha */
/* 805A10F4  C8 A5 A3 04 */	lfd f5, lit_585@l(r5)  /* 0x8064A304@l */
/* 805A10F8  3C A0 80 65 */	lis r5, lit_587@ha /* 0x8064A314@ha */
/* 805A10FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A1100  FC 40 28 34 */	frsqrte f2, f5
/* 805A1104  C8 65 A3 14 */	lfd f3, lit_587@l(r5)  /* 0x8064A314@l */
/* 805A1108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A110C  7C 7F 1B 78 */	mr r31, r3
/* 805A1110  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064A30C@ha */
/* 805A1114  38 A0 09 C4 */	li r5, 0x9c4
/* 805A1118  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A111C  38 C3 A3 0C */	addi r6, r3, lit_586@l /* 0x8064A30C@l */
/* 805A1120  C8 86 00 00 */	lfd f4, 0(r6)
/* 805A1124  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A1128  C0 03 A2 E0 */	lfs f0, lit_475@l(r3)  /* 0x8064A2E0@l */
/* 805A112C  38 7F 00 DE */	addi r3, r31, 0xde
/* 805A1130  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1134  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A1138  7C 9E 23 78 */	mr r30, r4
/* 805A113C  38 C0 00 00 */	li r6, 0
/* 805A1140  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1144  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805A1148  FC 23 08 28 */	fsub f1, f3, f1
/* 805A114C  FC 42 00 72 */	fmul f2, f2, f1
/* 805A1150  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1154  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1158  FC 25 00 72 */	fmul f1, f5, f1
/* 805A115C  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1160  FC 42 00 72 */	fmul f2, f2, f1
/* 805A1164  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1168  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A116C  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1170  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1174  FC 22 00 72 */	fmul f1, f2, f1
/* 805A1178  FC 25 00 72 */	fmul f1, f5, f1
/* 805A117C  FC 20 08 18 */	frsp f1, f1
/* 805A1180  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A1184  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A1188  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A118C  4B E1 A1 85 */	bl add_calc_short_angle2
/* 805A1190  7F E3 FB 78 */	mr r3, r31
/* 805A1194  4B FF F7 C9 */	bl aITB_height_ctrl
/* 805A1198  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 805A119C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805A11A0  7C 63 00 50 */	subf r3, r3, r0
/* 805A11A4  7C 60 07 34 */	extsh r0, r3
/* 805A11A8  7C 63 07 35 */	extsh. r3, r3
/* 805A11AC  7C 60 00 D0 */	neg r3, r0
/* 805A11B0  41 80 00 08 */	blt lbl_805A11B8
/* 805A11B4  7C 03 03 78 */	mr r3, r0
lbl_805A11B8:
/* 805A11B8  2C 03 02 00 */	cmpwi r3, 0x200
/* 805A11BC  40 80 00 1C */	bge lbl_805A11D8
/* 805A11C0  38 00 00 00 */	li r0, 0
/* 805A11C4  7F E3 FB 78 */	mr r3, r31
/* 805A11C8  90 1F 02 34 */	stw r0, 0x234(r31)
/* 805A11CC  7F C5 F3 78 */	mr r5, r30
/* 805A11D0  38 80 00 02 */	li r4, 2
/* 805A11D4  48 00 09 B9 */	bl aITB_setupAction
lbl_805A11D8:
/* 805A11D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A11DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A11E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A11E4  7C 08 03 A6 */	mtlr r0
/* 805A11E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805A11EC  4E 80 00 20 */	blr 
