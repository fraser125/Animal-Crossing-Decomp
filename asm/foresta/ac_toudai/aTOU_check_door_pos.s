lbl_805BED98:
/* 805BED98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BED9C  7C 08 02 A6 */	mflr r0
/* 805BEDA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BEDA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BEDA8  7C 7F 1B 78 */	mr r31, r3
/* 805BEDAC  7C 83 23 78 */	mr r3, r4
/* 805BEDB0  4B E1 A8 91 */	bl get_player_actor_withoutCheck
/* 805BEDB4  28 03 00 00 */	cmplwi r3, 0
/* 805BEDB8  41 82 00 70 */	beq lbl_805BEE28
/* 805BEDBC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 805BEDC0  3C 80 80 65 */	lis r4, lit_496@ha /* 0x8064ABCC@ha */
/* 805BEDC4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805BEDC8  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 805BEDCC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805BEDD0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 805BEDD4  C0 04 AB CC */	lfs f0, lit_496@l(r4)  /* 0x8064ABCC@l */
/* 805BEDD8  EC 43 10 28 */	fsubs f2, f3, f2
/* 805BEDDC  FC 20 0A 10 */	fabs f1, f1
/* 805BEDE0  FC 20 08 18 */	frsp f1, f1
/* 805BEDE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BEDE8  40 80 00 40 */	bge lbl_805BEE28
/* 805BEDEC  3C 80 80 65 */	lis r4, lit_532@ha /* 0x8064ABD8@ha */
/* 805BEDF0  C0 04 AB D8 */	lfs f0, lit_532@l(r4)  /* 0x8064ABD8@l */
/* 805BEDF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805BEDF8  40 81 00 30 */	ble lbl_805BEE28
/* 805BEDFC  3C 80 80 65 */	lis r4, lit_513@ha /* 0x8064ABD4@ha */
/* 805BEE00  C0 04 AB D4 */	lfs f0, lit_513@l(r4)  /* 0x8064ABD4@l */
/* 805BEE04  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805BEE08  40 80 00 20 */	bge lbl_805BEE28
/* 805BEE0C  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805BEE10  2C 00 E0 00 */	cmpwi r0, -8192
/* 805BEE14  40 81 00 14 */	ble lbl_805BEE28
/* 805BEE18  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805BEE1C  40 80 00 0C */	bge lbl_805BEE28
/* 805BEE20  38 60 00 01 */	li r3, 1
/* 805BEE24  48 00 00 08 */	b lbl_805BEE2C
lbl_805BEE28:
/* 805BEE28  38 60 00 00 */	li r3, 0
lbl_805BEE2C:
/* 805BEE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BEE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BEE34  7C 08 03 A6 */	mtlr r0
/* 805BEE38  38 21 00 10 */	addi r1, r1, 0x10
/* 805BEE3C  4E 80 00 20 */	blr 
