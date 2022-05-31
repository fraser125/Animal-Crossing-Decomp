lbl_803DB8D4:
/* 803DB8D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DB8D8  7C 08 02 A6 */	mflr r0
/* 803DB8DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DB8E0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803DB8E4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803DB8E8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803DB8EC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803DB8F0  FC 00 08 1E */	fctiwz f0, f1
/* 803DB8F4  38 60 00 00 */	li r3, 0
/* 803DB8F8  FF C0 10 90 */	fmr f30, f2
/* 803DB8FC  38 80 00 02 */	li r4, 2
/* 803DB900  FF E0 18 90 */	fmr f31, f3
/* 803DB904  D8 01 00 08 */	stfd f0, 8(r1)
/* 803DB908  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803DB90C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DB910  4B FB CB 29 */	bl mDemo_Set_OrderValue
/* 803DB914  FC 00 F0 1E */	fctiwz f0, f30
/* 803DB918  38 60 00 00 */	li r3, 0
/* 803DB91C  38 80 00 04 */	li r4, 4
/* 803DB920  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803DB924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB928  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DB92C  4B FB CB 0D */	bl mDemo_Set_OrderValue
/* 803DB930  3C 80 80 64 */	lis r4, lit_1298@ha /* 0x80642FE4@ha */
/* 803DB934  38 60 00 00 */	li r3, 0
/* 803DB938  38 A4 2F E4 */	addi r5, r4, lit_1298@l /* 0x80642FE4@l */
/* 803DB93C  38 80 00 07 */	li r4, 7
/* 803DB940  C0 05 00 00 */	lfs f0, 0(r5)
/* 803DB944  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803DB948  FC 00 00 1E */	fctiwz f0, f0
/* 803DB94C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803DB950  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803DB954  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DB958  4B FB CA E1 */	bl mDemo_Set_OrderValue
/* 803DB95C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803DB960  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803DB964  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803DB968  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DB96C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803DB970  7C 08 03 A6 */	mtlr r0
/* 803DB974  38 21 00 40 */	addi r1, r1, 0x40
/* 803DB978  4E 80 00 20 */	blr 
