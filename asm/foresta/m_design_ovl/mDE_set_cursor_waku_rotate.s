lbl_805D5F60:
/* 805D5F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D5F64  7C 08 02 A6 */	mflr r0
/* 805D5F68  3D 00 80 65 */	lis r8, lit_605@ha /* 0x8064B16C@ha */
/* 805D5F6C  28 04 00 00 */	cmplwi r4, 0
/* 805D5F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5F74  C0 28 B1 6C */	lfs f1, lit_605@l(r8)  /* 0x8064B16C@l */
/* 805D5F78  41 82 00 0C */	beq lbl_805D5F84
/* 805D5F7C  3C 80 80 65 */	lis r4, lit_2011@ha /* 0x8064B19C@ha */
/* 805D5F80  C0 24 B1 9C */	lfs f1, lit_2011@l(r4)  /* 0x8064B19C@l */
lbl_805D5F84:
/* 805D5F84  88 03 06 D8 */	lbz r0, 0x6d8(r3)
/* 805D5F88  2C 00 00 02 */	cmpwi r0, 2
/* 805D5F8C  41 82 00 4C */	beq lbl_805D5FD8
/* 805D5F90  40 80 00 14 */	bge lbl_805D5FA4
/* 805D5F94  2C 00 00 00 */	cmpwi r0, 0
/* 805D5F98  41 82 00 18 */	beq lbl_805D5FB0
/* 805D5F9C  40 80 00 28 */	bge lbl_805D5FC4
/* 805D5FA0  48 00 00 5C */	b lbl_805D5FFC
lbl_805D5FA4:
/* 805D5FA4  2C 00 00 04 */	cmpwi r0, 4
/* 805D5FA8  40 80 00 54 */	bge lbl_805D5FFC
/* 805D5FAC  48 00 00 40 */	b lbl_805D5FEC
lbl_805D5FB0:
/* 805D5FB0  7C A3 2B 78 */	mr r3, r5
/* 805D5FB4  7C C4 33 78 */	mr r4, r6
/* 805D5FB8  7C E5 3B 78 */	mr r5, r7
/* 805D5FBC  4B FF FF 65 */	bl mDE_waku_right_bottom
/* 805D5FC0  48 00 00 3C */	b lbl_805D5FFC
lbl_805D5FC4:
/* 805D5FC4  7C A3 2B 78 */	mr r3, r5
/* 805D5FC8  7C C4 33 78 */	mr r4, r6
/* 805D5FCC  7C E5 3B 78 */	mr r5, r7
/* 805D5FD0  4B FF FF 41 */	bl mDE_waku_right_top
/* 805D5FD4  48 00 00 28 */	b lbl_805D5FFC
lbl_805D5FD8:
/* 805D5FD8  7C A3 2B 78 */	mr r3, r5
/* 805D5FDC  7C C4 33 78 */	mr r4, r6
/* 805D5FE0  7C E5 3B 78 */	mr r5, r7
/* 805D5FE4  4B FF FF 61 */	bl mDE_waku_left_bottom
/* 805D5FE8  48 00 00 14 */	b lbl_805D5FFC
lbl_805D5FEC:
/* 805D5FEC  7C A3 2B 78 */	mr r3, r5
/* 805D5FF0  7C C4 33 78 */	mr r4, r6
/* 805D5FF4  7C E5 3B 78 */	mr r5, r7
/* 805D5FF8  4B FF FF 2D */	bl mDE_waku_left_top
lbl_805D5FFC:
/* 805D5FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D6000  7C 08 03 A6 */	mtlr r0
/* 805D6004  38 21 00 10 */	addi r1, r1, 0x10
/* 805D6008  4E 80 00 20 */	blr 
