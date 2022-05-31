lbl_805A6E58:
/* 805A6E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6E5C  7C 08 02 A6 */	mflr r0
/* 805A6E60  2C 05 00 05 */	cmpwi r5, 5
/* 805A6E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6E68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A6E6C  7D 1F 43 78 */	mr r31, r8
/* 805A6E70  41 82 00 58 */	beq lbl_805A6EC8
/* 805A6E74  40 80 00 10 */	bge lbl_805A6E84
/* 805A6E78  2C 05 00 03 */	cmpwi r5, 3
/* 805A6E7C  41 82 00 14 */	beq lbl_805A6E90
/* 805A6E80  48 00 00 8C */	b lbl_805A6F0C
lbl_805A6E84:
/* 805A6E84  2C 05 00 07 */	cmpwi r5, 7
/* 805A6E88  40 80 00 84 */	bge lbl_805A6F0C
/* 805A6E8C  48 00 00 60 */	b lbl_805A6EEC
lbl_805A6E90:
/* 805A6E90  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805A6E94  38 60 00 00 */	li r3, 0
/* 805A6E98  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805A6E9C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 805A6EA0  4B E6 54 61 */	bl Matrix_translate
/* 805A6EA4  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 805A6EA8  38 80 00 01 */	li r4, 1
/* 805A6EAC  4B E6 57 B1 */	bl Matrix_RotateY
/* 805A6EB0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 805A6EB4  38 60 00 01 */	li r3, 1
/* 805A6EB8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805A6EBC  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 805A6EC0  4B E6 55 2D */	bl Matrix_scale
/* 805A6EC4  48 00 00 48 */	b lbl_805A6F0C
lbl_805A6EC8:
/* 805A6EC8  38 00 00 00 */	li r0, 0
/* 805A6ECC  B0 09 00 00 */	sth r0, 0(r9)
/* 805A6ED0  B0 09 00 02 */	sth r0, 2(r9)
/* 805A6ED4  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 805A6ED8  FC 00 00 1E */	fctiwz f0, f0
/* 805A6EDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A6EE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A6EE4  B0 09 00 04 */	sth r0, 4(r9)
/* 805A6EE8  48 00 00 24 */	b lbl_805A6F0C
lbl_805A6EEC:
/* 805A6EEC  38 00 00 00 */	li r0, 0
/* 805A6EF0  B0 09 00 00 */	sth r0, 0(r9)
/* 805A6EF4  B0 09 00 02 */	sth r0, 2(r9)
/* 805A6EF8  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 805A6EFC  FC 00 00 1E */	fctiwz f0, f0
/* 805A6F00  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A6F04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A6F08  B0 09 00 04 */	sth r0, 4(r9)
lbl_805A6F0C:
/* 805A6F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A6F10  38 60 00 01 */	li r3, 1
/* 805A6F14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A6F18  7C 08 03 A6 */	mtlr r0
/* 805A6F1C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6F20  4E 80 00 20 */	blr 
