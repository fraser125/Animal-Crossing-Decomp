lbl_80612900:
/* 80612900  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80612904  7C 08 02 A6 */	mflr r0
/* 80612908  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061290C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80612910  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80612914  39 61 00 30 */	addi r11, r1, 0x30
/* 80612918  4B A8 85 B9 */	bl func_8009AED0
/* 8061291C  7C 7F 1B 78 */	mr r31, r3
/* 80612920  AB C5 00 00 */	lha r30, 0(r5)
/* 80612924  4B A4 A3 A9 */	bl func_8005CCCC
/* 80612928  7C 7D 07 34 */	extsh r29, r3
/* 8061292C  4B A4 A3 C9 */	bl fqrand
/* 80612930  3C 80 80 65 */	lis r4, lit_383@ha /* 0x8064C4B0@ha */
/* 80612934  3C 60 80 65 */	lis r3, data_8064C4AC@ha /* 0x8064C4AC@ha */
/* 80612938  C0 44 C4 B0 */	lfs f2, lit_383@l(r4)  /* 0x8064C4B0@l */
/* 8061293C  C0 03 C4 AC */	lfs f0, data_8064C4AC@l(r3)  /* 0x8064C4AC@l */
/* 80612940  EC 22 00 72 */	fmuls f1, f2, f1
/* 80612944  EC 00 00 72 */	fmuls f0, f0, f1
/* 80612948  FC 00 00 1E */	fctiwz f0, f0
/* 8061294C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80612950  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80612954  38 03 20 00 */	addi r0, r3, 0x2000
/* 80612958  7C 1C 07 34 */	extsh r28, r0
/* 8061295C  7F 83 E3 78 */	mr r3, r28
/* 80612960  4B DA 81 91 */	bl sin_s
/* 80612964  3C 80 80 65 */	lis r4, lit_384@ha /* 0x8064C4B4@ha */
/* 80612968  7F C3 F3 78 */	mr r3, r30
/* 8061296C  38 A4 C4 B4 */	addi r5, r4, lit_384@l /* 0x8064C4B4@l */
/* 80612970  38 80 00 00 */	li r4, 0
/* 80612974  C0 05 00 00 */	lfs f0, 0(r5)
/* 80612978  EF E0 00 72 */	fmuls f31, f0, f1
/* 8061297C  4B DF 9C E1 */	bl Matrix_RotateY
/* 80612980  38 60 E0 00 */	li r3, -8192
/* 80612984  38 80 00 01 */	li r4, 1
/* 80612988  4B DF 9B 31 */	bl Matrix_RotateX
/* 8061298C  7F A3 EB 78 */	mr r3, r29
/* 80612990  4B DA 81 61 */	bl sin_s
/* 80612994  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80612998  7F 83 E3 78 */	mr r3, r28
/* 8061299C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806129A0  4B DA 80 FD */	bl cos_s
/* 806129A4  3C 80 80 65 */	lis r4, lit_384@ha /* 0x8064C4B4@ha */
/* 806129A8  7F A3 EB 78 */	mr r3, r29
/* 806129AC  C0 04 C4 B4 */	lfs f0, lit_384@l(r4)  /* 0x8064C4B4@l */
/* 806129B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806129B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806129B8  4B DA 80 E5 */	bl cos_s
/* 806129BC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 806129C0  38 61 00 08 */	addi r3, r1, 8
/* 806129C4  38 9F 00 1C */	addi r4, r31, 0x1c
/* 806129C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806129CC  4B DF AA 39 */	bl Matrix_Position
/* 806129D0  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 806129D4  3C 60 80 65 */	lis r3, lit_385@ha /* 0x8064C4B8@ha */
/* 806129D8  38 C4 F0 50 */	addi r6, r4, data_8065F050@l /* 0x8065F050@l */
/* 806129DC  C0 03 C4 B8 */	lfs f0, lit_385@l(r3)  /* 0x8064C4B8@l */
/* 806129E0  80 A6 00 00 */	lwz r5, 0(r6)
/* 806129E4  38 00 00 14 */	li r0, 0x14
/* 806129E8  80 86 00 04 */	lwz r4, 4(r6)
/* 806129EC  90 BF 00 28 */	stw r5, 0x28(r31)
/* 806129F0  90 9F 00 2C */	stw r4, 0x2c(r31)
/* 806129F4  80 66 00 08 */	lwz r3, 8(r6)
/* 806129F8  90 7F 00 30 */	stw r3, 0x30(r31)
/* 806129FC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80612A00  B0 1F 00 00 */	sth r0, 0(r31)
/* 80612A04  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80612A08  39 61 00 30 */	addi r11, r1, 0x30
/* 80612A0C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80612A10  4B A8 85 0D */	bl func_8009AF1C
/* 80612A14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80612A18  7C 08 03 A6 */	mtlr r0
/* 80612A1C  38 21 00 40 */	addi r1, r1, 0x40
/* 80612A20  4E 80 00 20 */	blr 
