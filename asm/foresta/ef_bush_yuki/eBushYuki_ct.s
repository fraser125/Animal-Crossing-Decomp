lbl_8060727C:
/* 8060727C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80607280  7C 08 02 A6 */	mflr r0
/* 80607284  90 01 00 24 */	stw r0, 0x24(r1)
/* 80607288  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8060728C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80607290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80607294  7C 7F 1B 78 */	mr r31, r3
/* 80607298  4B A5 5A 5D */	bl fqrand
/* 8060729C  3C 60 80 65 */	lis r3, data_8064BCEC@ha /* 0x8064BCEC@ha */
/* 806072A0  C0 43 BC EC */	lfs f2, data_8064BCEC@l(r3)  /* 0x8064BCEC@l */
/* 806072A4  EC 02 00 72 */	fmuls f0, f2, f1
/* 806072A8  EF E2 00 2A */	fadds f31, f2, f0
/* 806072AC  4B A5 5A 49 */	bl fqrand
/* 806072B0  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064BCF4@ha */
/* 806072B4  38 00 00 3C */	li r0, 0x3c
/* 806072B8  C0 04 BC F4 */	lfs f0, lit_386@l(r4)  /* 0x8064BCF4@l */
/* 806072BC  3C 60 80 65 */	lis r3, lit_385@ha /* 0x8064BCF0@ha */
/* 806072C0  38 83 BC F0 */	addi r4, r3, lit_385@l /* 0x8064BCF0@l */
/* 806072C4  B0 1F 00 00 */	sth r0, 0(r31)
/* 806072C8  EC 40 00 72 */	fmuls f2, f0, f1
/* 806072CC  C0 24 00 00 */	lfs f1, 0(r4)
/* 806072D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806072D4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806072D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806072DC  3C 80 80 65 */	lis r4, lit_387@ha /* 0x8064BCF8@ha */
/* 806072E0  EC 81 10 2A */	fadds f4, f1, f2
/* 806072E4  C0 44 BC F8 */	lfs f2, lit_387@l(r4)  /* 0x8064BCF8@l */
/* 806072E8  3C 83 00 02 */	addis r4, r3, 2
/* 806072EC  FC 20 F8 90 */	fmr f1, f31
/* 806072F0  FC 60 10 90 */	fmr f3, f2
/* 806072F4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 806072F8  EC 00 20 2A */	fadds f0, f0, f4
/* 806072FC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80607300  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80607304  EC 00 20 2A */	fadds f0, f0, f4
/* 80607308  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8060730C  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80607310  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80607314  7D 89 03 A6 */	mtctr r12
/* 80607318  4E 80 04 21 */	bctrl 
/* 8060731C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80607320  2C 00 00 01 */	cmpwi r0, 1
/* 80607324  40 82 00 28 */	bne lbl_8060734C
/* 80607328  4B A5 5A 05 */	bl fqrand2
/* 8060732C  3C 60 80 65 */	lis r3, lit_388@ha /* 0x8064BCFC@ha */
/* 80607330  C0 03 BC FC */	lfs f0, lit_388@l(r3)  /* 0x8064BCFC@l */
/* 80607334  EC 00 00 72 */	fmuls f0, f0, f1
/* 80607338  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8060733C  4B A5 59 B9 */	bl fqrand
/* 80607340  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80607344  4B A5 59 B1 */	bl fqrand
/* 80607348  D0 3F 00 24 */	stfs f1, 0x24(r31)
lbl_8060734C:
/* 8060734C  3C 60 80 65 */	lis r3, lit_389@ha /* 0x8064BD00@ha */
/* 80607350  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064BD04@ha */
/* 80607354  38 A3 BD 00 */	addi r5, r3, lit_389@l /* 0x8064BD00@l */
/* 80607358  C0 24 BD 04 */	lfs f1, lit_390@l(r4)  /* 0x8064BD04@l */
/* 8060735C  C0 45 00 00 */	lfs f2, 0(r5)
/* 80607360  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064BD08@ha */
/* 80607364  C0 03 BD 08 */	lfs f0, lit_391@l(r3)  /* 0x8064BD08@l */
/* 80607368  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 8060736C  D0 5F 00 38 */	stfs f2, 0x38(r31)
/* 80607370  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 80607374  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80607378  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8060737C  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 80607380  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80607384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80607388  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8060738C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80607390  7C 08 03 A6 */	mtlr r0
/* 80607394  38 21 00 20 */	addi r1, r1, 0x20
/* 80607398  4E 80 00 20 */	blr 
