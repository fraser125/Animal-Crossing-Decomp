lbl_80409D7C:
/* 80409D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80409D80  7C 08 02 A6 */	mflr r0
/* 80409D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80409D88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80409D8C  7C 7F 1B 78 */	mr r31, r3
/* 80409D90  4B FF F1 A5 */	bl Math3DLength_s_f
/* 80409D94  A8 9F 00 06 */	lha r4, 6(r31)
/* 80409D98  3C 00 43 30 */	lis r0, 0x4330
/* 80409D9C  90 01 00 08 */	stw r0, 8(r1)
/* 80409DA0  3C 60 80 64 */	lis r3, lit_573@ha /* 0x8064370C@ha */
/* 80409DA4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80409DA8  C8 43 37 0C */	lfd f2, lit_573@l(r3)  /* 0x8064370C@l */
/* 80409DAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80409DB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80409DB4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80409DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80409DBC  7C 00 00 26 */	mfcr r0
/* 80409DC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80409DC4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80409DC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80409DCC  7C 08 03 A6 */	mtlr r0
/* 80409DD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80409DD4  4E 80 00 20 */	blr 
