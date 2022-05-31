lbl_8037DB20:
/* 8037DB20  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8037DB24  7C 08 02 A6 */	mflr r0
/* 8037DB28  90 01 00 54 */	stw r0, 0x54(r1)
/* 8037DB2C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8037DB30  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8037DB34  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8037DB38  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8037DB3C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8037DB40  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8037DB44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037DB48  7C 80 07 34 */	extsh r0, r4
/* 8037DB4C  3C 80 43 30 */	lis r4, 0x4330
/* 8037DB50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8037DB54  3C E0 80 64 */	lis r7, lit_487@ha /* 0x80641364@ha */
/* 8037DB58  90 01 00 0C */	stw r0, 0xc(r1)
/* 8037DB5C  7C A0 07 34 */	extsh r0, r5
/* 8037DB60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8037DB64  7C 7F 1B 78 */	mr r31, r3
/* 8037DB68  90 81 00 08 */	stw r4, 8(r1)
/* 8037DB6C  3C A0 80 64 */	lis r5, lit_484@ha /* 0x8064135C@ha */
/* 8037DB70  C8 47 13 64 */	lfd f2, lit_487@l(r7)  /* 0x80641364@l */
/* 8037DB74  FF A0 08 90 */	fmr f29, f1
/* 8037DB78  C8 01 00 08 */	lfd f0, 8(r1)
/* 8037DB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037DB80  80 66 00 00 */	lwz r3, 0(r6)
/* 8037DB84  EC 20 10 28 */	fsubs f1, f0, f2
/* 8037DB88  90 81 00 10 */	stw r4, 0x10(r1)
/* 8037DB8C  80 06 00 04 */	lwz r0, 4(r6)
/* 8037DB90  C0 65 13 5C */	lfs f3, lit_484@l(r5)  /* 0x8064135C@l */
/* 8037DB94  90 7F 00 00 */	stw r3, 0(r31)
/* 8037DB98  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8037DB9C  EF E3 00 72 */	fmuls f31, f3, f1
/* 8037DBA0  90 1F 00 04 */	stw r0, 4(r31)
/* 8037DBA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8037DBA8  80 06 00 08 */	lwz r0, 8(r6)
/* 8037DBAC  FC 20 F8 90 */	fmr f1, f31
/* 8037DBB0  EF C3 00 32 */	fmuls f30, f3, f0
/* 8037DBB4  90 1F 00 08 */	stw r0, 8(r31)
/* 8037DBB8  4B D2 43 25 */	bl sin
/* 8037DBBC  FC 00 08 18 */	frsp f0, f1
/* 8037DBC0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8037DBC4  FC 20 F8 90 */	fmr f1, f31
/* 8037DBC8  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8037DBCC  EC 02 00 2A */	fadds f0, f2, f0
/* 8037DBD0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8037DBD4  4B D2 3D A1 */	bl cos
/* 8037DBD8  FC 00 08 18 */	frsp f0, f1
/* 8037DBDC  FC 20 F0 90 */	fmr f1, f30
/* 8037DBE0  EF FD 00 32 */	fmuls f31, f29, f0
/* 8037DBE4  4B D2 42 F9 */	bl sin
/* 8037DBE8  FC 00 08 18 */	frsp f0, f1
/* 8037DBEC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8037DBF0  FC 20 F0 90 */	fmr f1, f30
/* 8037DBF4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8037DBF8  EC 02 00 2A */	fadds f0, f2, f0
/* 8037DBFC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8037DC00  4B D2 3D 75 */	bl cos
/* 8037DC04  FC 00 08 18 */	frsp f0, f1
/* 8037DC08  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8037DC0C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8037DC10  EC 01 00 2A */	fadds f0, f1, f0
/* 8037DC14  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8037DC18  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8037DC1C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8037DC20  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8037DC24  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8037DC28  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8037DC2C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8037DC30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037DC34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037DC38  7C 08 03 A6 */	mtlr r0
/* 8037DC3C  38 21 00 50 */	addi r1, r1, 0x50
/* 8037DC40  4E 80 00 20 */	blr 
