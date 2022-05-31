lbl_80390A78:
/* 80390A78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80390A7C  7C 08 02 A6 */	mflr r0
/* 80390A80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80390A84  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80390A88  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80390A8C  80 C3 00 00 */	lwz r6, 0(r3)
/* 80390A90  3C 80 80 64 */	lis r4, data_806419A4@ha /* 0x806419A4@ha */
/* 80390A94  80 A3 00 04 */	lwz r5, 4(r3)
/* 80390A98  80 03 00 08 */	lwz r0, 8(r3)
/* 80390A9C  38 61 00 08 */	addi r3, r1, 8
/* 80390AA0  90 C1 00 08 */	stw r6, 8(r1)
/* 80390AA4  C0 24 19 A4 */	lfs f1, data_806419A4@l(r4)  /* 0x806419A4@l */
/* 80390AA8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80390AAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80390AB0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80390AB4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80390AB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80390ABC  4B FF EE DD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80390AC0  FF E0 08 90 */	fmr f31, f1
/* 80390AC4  38 61 00 14 */	addi r3, r1, 0x14
/* 80390AC8  4B FF EE 11 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 80390ACC  EC 21 F8 28 */	fsubs f1, f1, f31
/* 80390AD0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80390AD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80390AD8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80390ADC  7C 08 03 A6 */	mtlr r0
/* 80390AE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80390AE4  4E 80 00 20 */	blr 
