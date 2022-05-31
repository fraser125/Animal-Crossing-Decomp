lbl_805A11F0:
/* 805A11F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A11F4  7C 08 02 A6 */	mflr r0
/* 805A11F8  3C A0 80 65 */	lis r5, lit_585@ha /* 0x8064A304@ha */
/* 805A11FC  C8 A5 A3 04 */	lfd f5, lit_585@l(r5)  /* 0x8064A304@l */
/* 805A1200  3C A0 80 65 */	lis r5, lit_587@ha /* 0x8064A314@ha */
/* 805A1204  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A1208  FC 40 28 34 */	frsqrte f2, f5
/* 805A120C  C8 65 A3 14 */	lfd f3, lit_587@l(r5)  /* 0x8064A314@l */
/* 805A1210  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A1214  7C 7F 1B 78 */	mr r31, r3
/* 805A1218  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064A30C@ha */
/* 805A121C  38 A0 09 C4 */	li r5, 0x9c4
/* 805A1220  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1224  38 C3 A3 0C */	addi r6, r3, lit_586@l /* 0x8064A30C@l */
/* 805A1228  C8 86 00 00 */	lfd f4, 0(r6)
/* 805A122C  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A1230  C0 03 A2 E0 */	lfs f0, lit_475@l(r3)  /* 0x8064A2E0@l */
/* 805A1234  38 7F 00 DE */	addi r3, r31, 0xde
/* 805A1238  FC 25 00 72 */	fmul f1, f5, f1
/* 805A123C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A1240  7C 9E 23 78 */	mr r30, r4
/* 805A1244  38 C0 00 00 */	li r6, 0
/* 805A1248  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A124C  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805A1250  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1254  FC 42 00 72 */	fmul f2, f2, f1
/* 805A1258  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A125C  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1260  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1264  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1268  FC 42 00 72 */	fmul f2, f2, f1
/* 805A126C  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1270  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1274  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1278  FC 23 08 28 */	fsub f1, f3, f1
/* 805A127C  FC 22 00 72 */	fmul f1, f2, f1
/* 805A1280  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1284  FC 20 08 18 */	frsp f1, f1
/* 805A1288  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A128C  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A1290  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A1294  4B E1 A0 7D */	bl add_calc_short_angle2
/* 805A1298  88 1F 00 9A */	lbz r0, 0x9a(r31)
/* 805A129C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 805A12A0  41 82 00 14 */	beq lbl_805A12B4
/* 805A12A4  7F E3 FB 78 */	mr r3, r31
/* 805A12A8  7F C5 F3 78 */	mr r5, r30
/* 805A12AC  38 80 00 06 */	li r4, 6
/* 805A12B0  48 00 08 DD */	bl aITB_setupAction
lbl_805A12B4:
/* 805A12B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A12B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A12BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A12C0  7C 08 03 A6 */	mtlr r0
/* 805A12C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805A12C8  4E 80 00 20 */	blr 
