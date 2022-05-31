lbl_80565F90:
/* 80565F90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80565F94  7C 08 02 A6 */	mflr r0
/* 80565F98  3C 80 80 65 */	lis r4, lit_1854@ha /* 0x806497CC@ha */
/* 80565F9C  38 A0 00 03 */	li r5, 3
/* 80565FA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80565FA4  38 C0 00 03 */	li r6, 3
/* 80565FA8  C0 24 97 CC */	lfs f1, lit_1854@l(r4)  /* 0x806497CC@l */
/* 80565FAC  38 80 00 04 */	li r4, 4
/* 80565FB0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80565FB4  38 E0 00 00 */	li r7, 0
/* 80565FB8  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 80565FBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80565FC0  FC 40 10 1E */	fctiwz f2, f2
/* 80565FC4  FC 00 00 1E */	fctiwz f0, f0
/* 80565FC8  D8 41 00 08 */	stfd f2, 8(r1)
/* 80565FCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80565FD0  81 01 00 0C */	lwz r8, 0xc(r1)
/* 80565FD4  81 21 00 14 */	lwz r9, 0x14(r1)
/* 80565FD8  4B FF B0 61 */	bl aNNW_set_request_act
/* 80565FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80565FE0  7C 08 03 A6 */	mtlr r0
/* 80565FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80565FE8  4E 80 00 20 */	blr 
