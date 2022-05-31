lbl_804ABA54:
/* 804ABA54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ABA58  7C 08 02 A6 */	mflr r0
/* 804ABA5C  38 80 00 08 */	li r4, 8
/* 804ABA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ABA64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804ABA68  7C 7F 1B 78 */	mr r31, r3
/* 804ABA6C  38 60 00 0F */	li r3, 0xf
/* 804ABA70  4B EF 23 5D */	bl mEv_get_save_area
/* 804ABA74  A8 83 00 04 */	lha r4, 4(r3)
/* 804ABA78  3C A0 43 30 */	lis r5, 0x4330
/* 804ABA7C  A8 63 00 06 */	lha r3, 6(r3)
/* 804ABA80  3C C0 80 64 */	lis r6, lit_676@ha /* 0x80645E8C@ha */
/* 804ABA84  38 04 00 14 */	addi r0, r4, 0x14
/* 804ABA88  90 A1 00 08 */	stw r5, 8(r1)
/* 804ABA8C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804ABA90  C8 86 5E 8C */	lfd f4, lit_676@l(r6)  /* 0x80645E8C@l */
/* 804ABA94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804ABA98  90 61 00 0C */	stw r3, 0xc(r1)
/* 804ABA9C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804ABAA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804ABAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABAA8  EC 60 20 28 */	fsubs f3, f0, f4
/* 804ABAAC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804ABAB0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804ABAB4  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 804ABAB8  EC 23 08 28 */	fsubs f1, f3, f1
/* 804ABABC  EC 42 20 28 */	fsubs f2, f2, f4
/* 804ABAC0  EC 42 00 28 */	fsubs f2, f2, f0
/* 804ABAC4  4B F6 05 3D */	bl atans_table
/* 804ABAC8  38 03 40 00 */	addi r0, r3, 0x4000
/* 804ABACC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804ABAD0  7C 03 07 34 */	extsh r3, r0
/* 804ABAD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ABAD8  7C 08 03 A6 */	mtlr r0
/* 804ABADC  38 21 00 20 */	addi r1, r1, 0x20
/* 804ABAE0  4E 80 00 20 */	blr 
