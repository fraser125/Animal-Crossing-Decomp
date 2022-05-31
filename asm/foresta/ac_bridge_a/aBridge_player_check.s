lbl_805A96E8:
/* 805A96E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805A96EC  7C 08 02 A6 */	mflr r0
/* 805A96F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 805A96F4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805A96F8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805A96FC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805A9700  7C 7F 1B 78 */	mr r31, r3
/* 805A9704  7C 83 23 78 */	mr r3, r4
/* 805A9708  4B E2 FF 39 */	bl get_player_actor_withoutCheck
/* 805A970C  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 805A9710  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805A9714  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805A9718  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 805A971C  3C 00 43 30 */	lis r0, 0x4330
/* 805A9720  3C 80 80 65 */	lis r4, lit_477@ha /* 0x8064A5AC@ha */
/* 805A9724  90 C1 00 20 */	stw r6, 0x20(r1)
/* 805A9728  38 C4 A5 AC */	addi r6, r4, lit_477@l /* 0x8064A5AC@l */
/* 805A972C  3C 80 80 65 */	lis r4, lit_517@ha /* 0x8064A5BC@ha */
/* 805A9730  3C E0 80 65 */	lis r7, lit_516@ha /* 0x8064A5B8@ha */
/* 805A9734  91 01 00 24 */	stw r8, 0x24(r1)
/* 805A9738  39 04 A5 BC */	addi r8, r4, lit_517@l /* 0x8064A5BC@l */
/* 805A973C  39 27 A5 B8 */	addi r9, r7, lit_516@l /* 0x8064A5B8@l */
/* 805A9740  80 E5 00 00 */	lwz r7, 0(r5)
/* 805A9744  81 43 00 30 */	lwz r10, 0x30(r3)
/* 805A9748  38 81 00 14 */	addi r4, r1, 0x14
/* 805A974C  90 01 00 30 */	stw r0, 0x30(r1)
/* 805A9750  38 A1 00 08 */	addi r5, r1, 8
/* 805A9754  C8 26 00 00 */	lfd f1, 0(r6)
/* 805A9758  91 41 00 28 */	stw r10, 0x28(r1)
/* 805A975C  C0 48 00 00 */	lfs f2, 0(r8)
/* 805A9760  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805A9764  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A9768  C0 69 00 00 */	lfs f3, 0(r9)
/* 805A976C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805A9770  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A9774  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A9778  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A977C  A8 07 1B 42 */	lha r0, 0x1b42(r7)
/* 805A9780  C0 83 00 74 */	lfs f4, 0x74(r3)
/* 805A9784  38 61 00 20 */	addi r3, r1, 0x20
/* 805A9788  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805A978C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A9790  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805A9794  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A9798  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A979C  EC 03 00 2A */	fadds f0, f3, f0
/* 805A97A0  EF E4 00 32 */	fmuls f31, f4, f0
/* 805A97A4  4B E1 17 D5 */	bl xyz_t_sub
/* 805A97A8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 805A97AC  28 00 58 4C */	cmplwi r0, 0x584c
/* 805A97B0  40 82 00 18 */	bne lbl_805A97C8
/* 805A97B4  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A97B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805A97BC  EC 41 00 28 */	fsubs f2, f1, f0
/* 805A97C0  EC 21 00 2A */	fadds f1, f1, f0
/* 805A97C4  48 00 00 14 */	b lbl_805A97D8
lbl_805A97C8:
/* 805A97C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 805A97CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805A97D0  EC 41 00 2A */	fadds f2, f1, f0
/* 805A97D4  EC 21 00 28 */	fsubs f1, f1, f0
lbl_805A97D8:
/* 805A97D8  3C 60 80 65 */	lis r3, lit_518@ha /* 0x8064A5C0@ha */
/* 805A97DC  C0 03 A5 C0 */	lfs f0, lit_518@l(r3)  /* 0x8064A5C0@l */
/* 805A97E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A97E4  40 81 01 50 */	ble lbl_805A9934
/* 805A97E8  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064A5A4@ha */
/* 805A97EC  C0 03 A5 A4 */	lfs f0, lit_474@l(r3)  /* 0x8064A5A4@l */
/* 805A97F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A97F4  40 80 01 40 */	bge lbl_805A9934
/* 805A97F8  3C 60 80 65 */	lis r3, lit_519@ha /* 0x8064A5C4@ha */
/* 805A97FC  C0 03 A5 C4 */	lfs f0, lit_519@l(r3)  /* 0x8064A5C4@l */
/* 805A9800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A9804  40 81 01 30 */	ble lbl_805A9934
/* 805A9808  3C 60 80 65 */	lis r3, lit_520@ha /* 0x8064A5C8@ha */
/* 805A980C  C0 03 A5 C8 */	lfs f0, lit_520@l(r3)  /* 0x8064A5C8@l */
/* 805A9810  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A9814  40 80 01 20 */	bge lbl_805A9934
/* 805A9818  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 805A981C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A9820  40 81 00 58 */	ble lbl_805A9878
/* 805A9824  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805A9828  3C 00 43 30 */	lis r0, 0x4330
/* 805A982C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 805A9830  3C A0 80 65 */	lis r5, lit_517@ha /* 0x8064A5BC@ha */
/* 805A9834  80 84 00 00 */	lwz r4, 0(r4)
/* 805A9838  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064A5AC@ha */
/* 805A983C  3C C0 80 65 */	lis r6, lit_521@ha /* 0x8064A5CC@ha */
/* 805A9840  90 01 00 30 */	stw r0, 0x30(r1)
/* 805A9844  A8 84 1B 3C */	lha r4, 0x1b3c(r4)
/* 805A9848  C8 23 A5 AC */	lfd f1, lit_477@l(r3)  /* 0x8064A5AC@l */
/* 805A984C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805A9850  C0 45 A5 BC */	lfs f2, lit_517@l(r5)  /* 0x8064A5BC@l */
/* 805A9854  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A9858  C0 66 A5 CC */	lfs f3, lit_521@l(r6)  /* 0x8064A5CC@l */
/* 805A985C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805A9860  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A9864  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A9868  EC 03 00 2A */	fadds f0, f3, f0
/* 805A986C  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
/* 805A9870  D3 FF 02 C8 */	stfs f31, 0x2c8(r31)
/* 805A9874  48 00 00 C0 */	b lbl_805A9934
lbl_805A9878:
/* 805A9878  3C 60 80 65 */	lis r3, lit_522@ha /* 0x8064A5D0@ha */
/* 805A987C  C0 63 A5 D0 */	lfs f3, lit_522@l(r3)  /* 0x8064A5D0@l */
/* 805A9880  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 805A9884  40 81 00 B0 */	ble lbl_805A9934
/* 805A9888  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805A988C  3C 00 43 30 */	lis r0, 0x4330
/* 805A9890  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 805A9894  3C A0 80 65 */	lis r5, lit_517@ha /* 0x8064A5BC@ha */
/* 805A9898  80 84 00 00 */	lwz r4, 0(r4)
/* 805A989C  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064A5AC@ha */
/* 805A98A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 805A98A4  FC 20 F8 90 */	fmr f1, f31
/* 805A98A8  A8 04 1B 40 */	lha r0, 0x1b40(r4)
/* 805A98AC  C8 43 A5 AC */	lfd f2, lit_477@l(r3)  /* 0x8064A5AC@l */
/* 805A98B0  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805A98B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805A98B8  C0 85 A5 BC */	lfs f4, lit_517@l(r5)  /* 0x8064A5BC@l */
/* 805A98BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A98C0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805A98C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 805A98C8  EC 04 00 32 */	fmuls f0, f4, f0
/* 805A98CC  EC 43 00 2A */	fadds f2, f3, f0
/* 805A98D0  4B E1 18 E1 */	bl add_calc
/* 805A98D4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805A98D8  3C 00 43 30 */	lis r0, 0x4330
/* 805A98DC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 805A98E0  3C C0 80 65 */	lis r6, lit_517@ha /* 0x8064A5BC@ha */
/* 805A98E4  80 A4 00 00 */	lwz r5, 0(r4)
/* 805A98E8  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064A5AC@ha */
/* 805A98EC  38 83 A5 AC */	addi r4, r3, lit_477@l /* 0x8064A5AC@l */
/* 805A98F0  3C E0 80 65 */	lis r7, lit_522@ha /* 0x8064A5D0@ha */
/* 805A98F4  A8 65 1B 44 */	lha r3, 0x1b44(r5)
/* 805A98F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 805A98FC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805A9900  C8 44 00 00 */	lfd f2, 0(r4)
/* 805A9904  90 61 00 3C */	stw r3, 0x3c(r1)
/* 805A9908  3C 60 80 65 */	lis r3, lit_521@ha /* 0x8064A5CC@ha */
/* 805A990C  C0 23 A5 CC */	lfs f1, lit_521@l(r3)  /* 0x8064A5CC@l */
/* 805A9910  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 805A9914  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805A9918  C0 86 A5 BC */	lfs f4, lit_517@l(r6)  /* 0x8064A5BC@l */
/* 805A991C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805A9920  C0 67 A5 D0 */	lfs f3, lit_522@l(r7)  /* 0x8064A5D0@l */
/* 805A9924  EC 04 00 32 */	fmuls f0, f4, f0
/* 805A9928  EC 43 00 2A */	fadds f2, f3, f0
/* 805A992C  4B E1 18 85 */	bl add_calc
/* 805A9930  48 00 00 80 */	b lbl_805A99B0
lbl_805A9934:
/* 805A9934  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805A9938  3C 00 43 30 */	lis r0, 0x4330
/* 805A993C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 805A9940  3C C0 80 65 */	lis r6, lit_517@ha /* 0x8064A5BC@ha */
/* 805A9944  80 84 00 00 */	lwz r4, 0(r4)
/* 805A9948  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064A5AC@ha */
/* 805A994C  38 A3 A5 AC */	addi r5, r3, lit_477@l /* 0x8064A5AC@l */
/* 805A9950  90 01 00 38 */	stw r0, 0x38(r1)
/* 805A9954  A8 84 1B 3E */	lha r4, 0x1b3e(r4)
/* 805A9958  3C 60 80 65 */	lis r3, lit_522@ha /* 0x8064A5D0@ha */
/* 805A995C  C8 45 00 00 */	lfd f2, 0(r5)
/* 805A9960  3C A0 80 65 */	lis r5, lit_473@ha /* 0x8064A5A0@ha */
/* 805A9964  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805A9968  C0 63 A5 D0 */	lfs f3, lit_522@l(r3)  /* 0x8064A5D0@l */
/* 805A996C  90 81 00 3C */	stw r4, 0x3c(r1)
/* 805A9970  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064A5D4@ha */
/* 805A9974  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 805A9978  3C 60 80 65 */	lis r3, lit_524@ha /* 0x8064A5D8@ha */
/* 805A997C  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 805A9980  C0 86 A5 BC */	lfs f4, lit_517@l(r6)  /* 0x8064A5BC@l */
/* 805A9984  EC 03 00 32 */	fmuls f0, f3, f0
/* 805A9988  EC 41 10 28 */	fsubs f2, f1, f2
/* 805A998C  C0 23 A5 D8 */	lfs f1, lit_524@l(r3)  /* 0x8064A5D8@l */
/* 805A9990  C0 A4 A5 D4 */	lfs f5, lit_523@l(r4)  /* 0x8064A5D4@l */
/* 805A9994  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 805A9998  EC 01 00 2A */	fadds f0, f1, f0
/* 805A999C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 805A99A0  C0 25 A5 A0 */	lfs f1, lit_473@l(r5)  /* 0x8064A5A0@l */
/* 805A99A4  EC 45 10 2A */	fadds f2, f5, f2
/* 805A99A8  EC 42 00 32 */	fmuls f2, f2, f0
/* 805A99AC  4B E1 18 05 */	bl add_calc
lbl_805A99B0:
/* 805A99B0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805A99B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A99B8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805A99BC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805A99C0  7C 08 03 A6 */	mtlr r0
/* 805A99C4  38 21 00 60 */	addi r1, r1, 0x60
/* 805A99C8  4E 80 00 20 */	blr 
