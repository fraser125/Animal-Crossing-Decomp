lbl_804E4D84:
/* 804E4D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4D88  7C 08 02 A6 */	mflr r0
/* 804E4D8C  3C C0 80 64 */	lis r6, lit_603@ha /* 0x80646564@ha */
/* 804E4D90  3C A0 80 65 */	lis r5, lit_7410@ha /* 0x80648358@ha */
/* 804E4D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4D98  C0 26 65 64 */	lfs f1, lit_603@l(r6)  /* 0x80646564@l */
/* 804E4D9C  C0 43 0D 18 */	lfs f2, 0xd18(r3)
/* 804E4DA0  C0 05 83 58 */	lfs f0, lit_7410@l(r5)  /* 0x80648358@l */
/* 804E4DA4  EC 22 08 2A */	fadds f1, f2, f1
/* 804E4DA8  D0 23 0D 18 */	stfs f1, 0xd18(r3)
/* 804E4DAC  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 804E4DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E4DB4  4C 41 13 82 */	cror 2, 1, 2
/* 804E4DB8  40 82 00 20 */	bne lbl_804E4DD8
/* 804E4DBC  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804E4DC0  7C 83 23 78 */	mr r3, r4
/* 804E4DC4  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804E4DC8  38 80 00 00 */	li r4, 0
/* 804E4DCC  38 A0 00 01 */	li r5, 1
/* 804E4DD0  FC 40 08 90 */	fmr f2, f1
/* 804E4DD4  48 00 0E 29 */	bl func_804E5BFC
lbl_804E4DD8:
/* 804E4DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4DDC  7C 08 03 A6 */	mtlr r0
/* 804E4DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4DE4  4E 80 00 20 */	blr 
