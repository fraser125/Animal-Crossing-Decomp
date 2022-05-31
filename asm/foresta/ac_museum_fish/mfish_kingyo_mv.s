lbl_8044B670:
/* 8044B670  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8044B674  7C 08 02 A6 */	mflr r0
/* 8044B678  90 01 00 64 */	stw r0, 0x64(r1)
/* 8044B67C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8044B680  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8044B684  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8044B688  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8044B68C  7C 7E 1B 78 */	mr r30, r3
/* 8044B690  7C 9F 23 78 */	mr r31, r4
/* 8044B694  81 83 00 34 */	lwz r12, 0x34(r3)
/* 8044B698  7D 89 03 A6 */	mtctr r12
/* 8044B69C  4E 80 04 21 */	bctrl 
/* 8044B6A0  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8044B6A4  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044B6A8  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8044B6AC  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044B6B0  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044B6B4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044B6B8  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044B6BC  FC 60 30 34 */	frsqrte f3, f6
/* 8044B6C0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044B6C4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044B6C8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044B6CC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044B6D0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044B6D4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B6D8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044B6DC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B6E0  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B6E4  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B6E8  FC 63 00 72 */	fmul f3, f3, f1
/* 8044B6EC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B6F0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B6F4  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B6F8  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B6FC  FC 63 00 72 */	fmul f3, f3, f1
/* 8044B700  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B704  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B708  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B70C  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B710  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B714  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B718  FC 20 08 18 */	frsp f1, f1
/* 8044B71C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8044B720  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8044B724  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044B728  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044B72C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044B730  40 81 00 54 */	ble lbl_8044B784
/* 8044B734  FC 20 10 34 */	frsqrte f1, f2
/* 8044B738  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B73C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B740  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B744  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B748  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B74C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B750  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B754  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B758  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B75C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B760  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B764  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B768  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B76C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B770  FC 01 00 32 */	fmul f0, f1, f0
/* 8044B774  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B778  FC 00 00 18 */	frsp f0, f0
/* 8044B77C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8044B780  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_8044B784:
/* 8044B784  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044B788  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 8044B78C  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044B790  38 7E 06 0C */	addi r3, r30, 0x60c
/* 8044B794  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044B798  38 A0 01 3E */	li r5, 0x13e
/* 8044B79C  38 C0 00 2D */	li r6, 0x2d
/* 8044B7A0  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044B7A4  4B F6 FB 6D */	bl add_calc_short_angle2
/* 8044B7A8  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 8044B7AC  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044B7B0  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 8044B7B4  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8044B7B8  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044B7BC  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044B7C0  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8044B7C4  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 8044B7C8  FC 60 30 34 */	frsqrte f3, f6
/* 8044B7CC  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044B7D0  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044B7D4  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044B7D8  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044B7DC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044B7E0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B7E4  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044B7E8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B7EC  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B7F0  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B7F4  FC 63 00 72 */	fmul f3, f3, f1
/* 8044B7F8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B7FC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B800  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B804  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B808  FC 63 00 72 */	fmul f3, f3, f1
/* 8044B80C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B810  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B814  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B818  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B81C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B820  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B824  FC 20 08 18 */	frsp f1, f1
/* 8044B828  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8044B82C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8044B830  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044B834  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044B838  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044B83C  40 81 00 54 */	ble lbl_8044B890
/* 8044B840  FC 20 10 34 */	frsqrte f1, f2
/* 8044B844  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B848  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B84C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B850  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B854  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B858  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B85C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B860  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B864  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B868  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B86C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B870  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B874  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B878  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B87C  FC 01 00 32 */	fmul f0, f1, f0
/* 8044B880  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B884  FC 00 00 18 */	frsp f0, f0
/* 8044B888  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8044B88C  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_8044B890:
/* 8044B890  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044B894  A8 9E 06 1E */	lha r4, 0x61e(r30)
/* 8044B898  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044B89C  38 7E 06 18 */	addi r3, r30, 0x618
/* 8044B8A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044B8A4  38 A0 00 E3 */	li r5, 0xe3
/* 8044B8A8  38 C0 00 2D */	li r6, 0x2d
/* 8044B8AC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044B8B0  4B F6 FA 61 */	bl add_calc_short_angle2
/* 8044B8B4  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044B8B8  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044B8BC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8044B8C0  40 81 00 20 */	ble lbl_8044B8E0
/* 8044B8C4  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8044B8C8  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044B8CC  C0 63 42 AC */	lfs f3, lit_666@l(r3)  /* 0x806442AC@l */
/* 8044B8D0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8044B8D4  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 8044B8D8  4B F6 F9 BD */	bl add_calc2
/* 8044B8DC  48 00 00 88 */	b lbl_8044B964
lbl_8044B8E0:
/* 8044B8E0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044B8E4  3C A0 43 30 */	lis r5, 0x4330
/* 8044B8E8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044B8EC  3D 00 80 64 */	lis r8, lit_1068@ha /* 0x80644308@ha */
/* 8044B8F0  81 24 00 00 */	lwz r9, 0(r4)
/* 8044B8F4  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044B8F8  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 8044B8FC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8044B900  A8 89 1B 7E */	lha r4, 0x1b7e(r9)
/* 8044B904  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 8044B908  38 E3 42 C4 */	addi r7, r3, lit_793@l /* 0x806442C4@l */
/* 8044B90C  A8 09 1B 80 */	lha r0, 0x1b80(r9)
/* 8044B910  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8044B914  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044B918  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8044B91C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044B920  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044B924  C0 A7 00 00 */	lfs f5, 0(r7)
/* 8044B928  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044B92C  38 83 42 AC */	addi r4, r3, lit_666@l /* 0x806442AC@l */
/* 8044B930  90 01 00 34 */	stw r0, 0x34(r1)
/* 8044B934  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8044B938  EC 40 20 28 */	fsubs f2, f0, f4
/* 8044B93C  C0 C8 43 08 */	lfs f6, lit_1068@l(r8)  /* 0x80644308@l */
/* 8044B940  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8044B944  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044B948  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8044B94C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8044B950  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044B954  EC 46 10 2A */	fadds f2, f6, f2
/* 8044B958  EC 05 00 32 */	fmuls f0, f5, f0
/* 8044B95C  EC 63 00 2A */	fadds f3, f3, f0
/* 8044B960  4B F6 F9 35 */	bl add_calc2
lbl_8044B964:
/* 8044B964  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044B968  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044B96C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044B970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044B974  40 80 00 B8 */	bge lbl_8044BA2C
/* 8044B978  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044B97C  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 8044B980  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 8044B984  C0 44 42 AC */	lfs f2, lit_666@l(r4)  /* 0x806442AC@l */
/* 8044B988  C0 25 00 00 */	lfs f1, 0(r5)
/* 8044B98C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044B990  4B F6 F9 49 */	bl add_calc0
/* 8044B994  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8044B998  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044B99C  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8044B9A0  38 C0 00 5B */	li r6, 0x5b
/* 8044B9A4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044B9A8  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8044B9AC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044B9B0  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044B9B4  FC 40 28 34 */	frsqrte f2, f5
/* 8044B9B8  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8044B9BC  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044B9C0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044B9C4  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044B9C8  38 7E 06 12 */	addi r3, r30, 0x612
/* 8044B9CC  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044B9D0  38 80 00 00 */	li r4, 0
/* 8044B9D4  38 A0 01 11 */	li r5, 0x111
/* 8044B9D8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044B9DC  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B9E0  FC 23 08 28 */	fsub f1, f3, f1
/* 8044B9E4  FC 42 00 72 */	fmul f2, f2, f1
/* 8044B9E8  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044B9EC  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044B9F0  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B9F4  FC 23 08 28 */	fsub f1, f3, f1
/* 8044B9F8  FC 42 00 72 */	fmul f2, f2, f1
/* 8044B9FC  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044BA00  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044BA04  FC 25 00 72 */	fmul f1, f5, f1
/* 8044BA08  FC 23 08 28 */	fsub f1, f3, f1
/* 8044BA0C  FC 22 00 72 */	fmul f1, f2, f1
/* 8044BA10  FC 25 00 72 */	fmul f1, f5, f1
/* 8044BA14  FC 20 08 18 */	frsp f1, f1
/* 8044BA18  D0 21 00 08 */	stfs f1, 8(r1)
/* 8044BA1C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8044BA20  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044BA24  4B F6 F8 ED */	bl add_calc_short_angle2
/* 8044BA28  48 00 00 48 */	b lbl_8044BA70
lbl_8044BA2C:
/* 8044BA2C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044BA30  7C 60 07 35 */	extsh. r0, r3
/* 8044BA34  7C 03 00 D0 */	neg r0, r3
/* 8044BA38  41 80 00 08 */	blt lbl_8044BA40
/* 8044BA3C  7C 60 1B 78 */	mr r0, r3
lbl_8044BA40:
/* 8044BA40  2C 00 23 8E */	cmpwi r0, 0x238e
/* 8044BA44  40 81 00 2C */	ble lbl_8044BA70
/* 8044BA48  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8044BA4C  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8044BA50  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044BA54  38 A3 42 D4 */	addi r5, r3, lit_839@l /* 0x806442D4@l */
/* 8044BA58  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8044BA5C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044BA60  EC 21 00 2A */	fadds f1, f1, f0
/* 8044BA64  C0 64 42 68 */	lfs f3, lit_527@l(r4)  /* 0x80644268@l */
/* 8044BA68  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044BA6C  4B F6 F8 29 */	bl add_calc2
lbl_8044BA70:
/* 8044BA70  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044BA74  4B F6 F0 29 */	bl cos_s
/* 8044BA78  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044BA7C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044BA80  EF E0 00 72 */	fmuls f31, f0, f1
/* 8044BA84  4B F6 F0 6D */	bl sin_s
/* 8044BA88  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8044BA8C  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8044BA90  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044BA94  4B F6 F0 09 */	bl cos_s
/* 8044BA98  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8044BA9C  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 8044BAA0  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044BAA4  4B F6 F0 4D */	bl sin_s
/* 8044BAA8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044BAAC  7F C4 F3 78 */	mr r4, r30
/* 8044BAB0  7F E5 FB 78 */	mr r5, r31
/* 8044BAB4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8044BAB8  FC 00 00 50 */	fneg f0, f0
/* 8044BABC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044BAC0  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 8044BAC4  4B FE BC E1 */	bl mfish_get_flow_vec
/* 8044BAC8  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 8044BACC  7F C3 F3 78 */	mr r3, r30
/* 8044BAD0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8044BAD4  7F E4 FB 78 */	mr r4, r31
/* 8044BAD8  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 8044BADC  EC 01 00 2A */	fadds f0, f1, f0
/* 8044BAE0  EC 02 00 2A */	fadds f0, f2, f0
/* 8044BAE4  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 8044BAE8  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 8044BAEC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8044BAF0  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 8044BAF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8044BAF8  EC 02 00 2A */	fadds f0, f2, f0
/* 8044BAFC  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044BB00  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8044BB04  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8044BB08  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 8044BB0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8044BB10  EC 02 00 2A */	fadds f0, f2, f0
/* 8044BB14  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 8044BB18  4B FE 8A E5 */	bl mfish_onefish_mv
/* 8044BB1C  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 8044BB20  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044BB24  C0 03 42 C4 */	lfs f0, lit_793@l(r3)  /* 0x806442C4@l */
/* 8044BB28  C0 FE 05 E8 */	lfs f7, 0x5e8(r30)
/* 8044BB2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8044BB30  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 8044BB34  41 81 00 20 */	bgt lbl_8044BB54
/* 8044BB38  A8 7E 06 40 */	lha r3, 0x640(r30)
/* 8044BB3C  A8 1E 06 28 */	lha r0, 0x628(r30)
/* 8044BB40  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8044BB44  7C 03 00 50 */	subf r0, r3, r0
/* 8044BB48  7C 00 07 34 */	extsh r0, r0
/* 8044BB4C  7C 04 00 00 */	cmpw r4, r0
/* 8044BB50  40 81 00 9C */	ble lbl_8044BBEC
lbl_8044BB54:
/* 8044BB54  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044BB58  C0 C3 42 68 */	lfs f6, lit_527@l(r3)  /* 0x80644268@l */
/* 8044BB5C  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 8044BB60  40 81 00 8C */	ble lbl_8044BBEC
/* 8044BB64  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044BB68  3C 80 43 30 */	lis r4, 0x4330
/* 8044BB6C  38 A3 61 38 */	addi r5, r3, debug_mode@l /* 0x81166138@l */
/* 8044BB70  3C E0 80 64 */	lis r7, lit_557@ha /* 0x80644280@ha */
/* 8044BB74  81 05 00 00 */	lwz r8, 0(r5)
/* 8044BB78  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044BB7C  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 8044BB80  90 81 00 30 */	stw r4, 0x30(r1)
/* 8044BB84  A8 A8 1B 64 */	lha r5, 0x1b64(r8)
/* 8044BB88  3C 60 80 64 */	lis r3, lit_1145@ha /* 0x80644328@ha */
/* 8044BB8C  A8 08 1B 66 */	lha r0, 0x1b66(r8)
/* 8044BB90  3D 00 80 64 */	lis r8, lit_471@ha /* 0x8064425C@ha */
/* 8044BB94  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044BB98  C8 66 00 00 */	lfd f3, 0(r6)
/* 8044BB9C  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8044BBA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044BBA4  C0 87 42 80 */	lfs f4, lit_557@l(r7)  /* 0x80644280@l */
/* 8044BBA8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8044BBAC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8044BBB0  EC 40 18 28 */	fsubs f2, f0, f3
/* 8044BBB4  C0 23 43 28 */	lfs f1, lit_1145@l(r3)  /* 0x80644328@l */
/* 8044BBB8  90 81 00 28 */	stw r4, 0x28(r1)
/* 8044BBBC  C0 A8 42 5C */	lfs f5, lit_471@l(r8)  /* 0x8064425C@l */
/* 8044BBC0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044BBC4  EC 46 00 B2 */	fmuls f2, f6, f2
/* 8044BBC8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8044BBCC  EC 44 10 2A */	fadds f2, f4, f2
/* 8044BBD0  EC 06 00 32 */	fmuls f0, f6, f0
/* 8044BBD4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8044BBD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8044BBDC  EC 00 01 F2 */	fmuls f0, f0, f7
/* 8044BBE0  EC 02 00 2A */	fadds f0, f2, f0
/* 8044BBE4  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8044BBE8  48 00 00 F4 */	b lbl_8044BCDC
lbl_8044BBEC:
/* 8044BBEC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044BBF0  3C E0 43 30 */	lis r7, 0x4330
/* 8044BBF4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044BBF8  3D 40 80 64 */	lis r10, lit_666@ha /* 0x806442AC@ha */
/* 8044BBFC  80 C4 00 00 */	lwz r6, 0(r4)
/* 8044BC00  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044BC04  39 03 42 8C */	addi r8, r3, lit_570@l /* 0x8064428C@l */
/* 8044BC08  90 E1 00 30 */	stw r7, 0x30(r1)
/* 8044BC0C  A8 A6 1B 76 */	lha r5, 0x1b76(r6)
/* 8044BC10  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 8044BC14  39 23 43 68 */	addi r9, r3, lit_1712@l /* 0x80644368@l */
/* 8044BC18  A8 06 1B 7A */	lha r0, 0x1b7a(r6)
/* 8044BC1C  A8 66 1B 78 */	lha r3, 0x1b78(r6)
/* 8044BC20  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8044BC24  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8044BC28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044BC2C  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8044BC30  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8044BC34  C8 A8 00 00 */	lfd f5, 0(r8)
/* 8044BC38  38 C4 42 C4 */	addi r6, r4, lit_793@l /* 0x806442C4@l */
/* 8044BC3C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8044BC40  3C 60 80 64 */	lis r3, lit_1957@ha /* 0x8064436C@ha */
/* 8044BC44  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8044BC48  38 83 43 6C */	addi r4, r3, lit_1957@l /* 0x8064436C@l */
/* 8044BC4C  EC 20 28 28 */	fsubs f1, f0, f5
/* 8044BC50  C0 C9 00 00 */	lfs f6, 0(r9)
/* 8044BC54  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8044BC58  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044BC5C  C0 6A 42 AC */	lfs f3, lit_666@l(r10)  /* 0x806442AC@l */
/* 8044BC60  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044BC64  EC 26 00 72 */	fmuls f1, f6, f1
/* 8044BC68  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8044BC6C  EC 40 28 28 */	fsubs f2, f0, f5
/* 8044BC70  C0 86 00 00 */	lfs f4, 0(r6)
/* 8044BC74  90 E1 00 38 */	stw r7, 0x38(r1)
/* 8044BC78  EC 23 08 2A */	fadds f1, f3, f1
/* 8044BC7C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8044BC80  EC 46 00 B2 */	fmuls f2, f6, f2
/* 8044BC84  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044BC88  EC 00 28 28 */	fsubs f0, f0, f5
/* 8044BC8C  EC 44 10 2A */	fadds f2, f4, f2
/* 8044BC90  EC 06 00 32 */	fmuls f0, f6, f0
/* 8044BC94  EC 63 00 2A */	fadds f3, f3, f0
/* 8044BC98  4B F6 F5 FD */	bl add_calc2
/* 8044BC9C  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8044BCA0  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 8044BCA4  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 8044BCA8  38 C5 42 5C */	addi r6, r5, lit_471@l /* 0x8064425C@l */
/* 8044BCAC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044BCB0  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8044BCB4  38 A4 42 D4 */	addi r5, r4, lit_839@l /* 0x806442D4@l */
/* 8044BCB8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044BCBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044BCC0  C0 86 00 00 */	lfs f4, 0(r6)
/* 8044BCC4  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044BCC8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044BCCC  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044BCD0  38 7E 00 44 */	addi r3, r30, 0x44
/* 8044BCD4  EC 24 00 2A */	fadds f1, f4, f0
/* 8044BCD8  4B F6 F5 BD */	bl add_calc2
lbl_8044BCDC:
/* 8044BCDC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044BCE0  3C 00 43 30 */	lis r0, 0x4330
/* 8044BCE4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044BCE8  3C A0 80 64 */	lis r5, lit_840@ha /* 0x806442D8@ha */
/* 8044BCEC  80 84 00 00 */	lwz r4, 0(r4)
/* 8044BCF0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044BCF4  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8044BCF8  3C C0 80 64 */	lis r6, lit_588@ha /* 0x80644298@ha */
/* 8044BCFC  A8 84 1B A2 */	lha r4, 0x1ba2(r4)
/* 8044BD00  7F C3 F3 78 */	mr r3, r30
/* 8044BD04  90 01 00 38 */	stw r0, 0x38(r1)
/* 8044BD08  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8044BD0C  C0 45 42 D8 */	lfs f2, lit_840@l(r5)  /* 0x806442D8@l */
/* 8044BD10  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8044BD14  7F E4 FB 78 */	mr r4, r31
/* 8044BD18  C0 66 42 98 */	lfs f3, lit_588@l(r6)  /* 0x80644298@l */
/* 8044BD1C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8044BD20  A8 BE 06 3A */	lha r5, 0x63a(r30)
/* 8044BD24  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044BD28  EC 02 00 2A */	fadds f0, f2, f0
/* 8044BD2C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8044BD30  FC 00 00 1E */	fctiwz f0, f0
/* 8044BD34  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044BD38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8044BD3C  7C 00 07 34 */	extsh r0, r0
/* 8044BD40  7C 05 02 14 */	add r0, r5, r0
/* 8044BD44  B0 1E 06 3A */	sth r0, 0x63a(r30)
/* 8044BD48  80 BE 05 A0 */	lwz r5, 0x5a0(r30)
/* 8044BD4C  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 8044BD50  90 BE 05 B8 */	stw r5, 0x5b8(r30)
/* 8044BD54  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 8044BD58  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 8044BD5C  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 8044BD60  4B FE 9F 31 */	bl Museum_Fish_BGCheck
/* 8044BD64  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 8044BD68  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8044BD6C  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 8044BD70  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 8044BD74  EC 00 08 2A */	fadds f0, f0, f1
/* 8044BD78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044BD7C  40 80 00 20 */	bge lbl_8044BD9C
/* 8044BD80  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044BD84  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8044BD88  2C 00 00 00 */	cmpwi r0, 0
/* 8044BD8C  40 81 00 4C */	ble lbl_8044BDD8
/* 8044BD90  38 00 EA AB */	li r0, -5461
/* 8044BD94  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044BD98  48 00 00 40 */	b lbl_8044BDD8
lbl_8044BD9C:
/* 8044BD9C  3C 60 80 64 */	lis r3, lit_4929@ha /* 0x80644400@ha */
/* 8044BDA0  C0 03 44 00 */	lfs f0, lit_4929@l(r3)  /* 0x80644400@l */
/* 8044BDA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044BDA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044BDAC  40 81 00 20 */	ble lbl_8044BDCC
/* 8044BDB0  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044BDB4  38 00 15 55 */	li r0, 0x1555
/* 8044BDB8  7F C3 F3 78 */	mr r3, r30
/* 8044BDBC  7F E4 FB 78 */	mr r4, r31
/* 8044BDC0  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044BDC4  4B FE C9 A5 */	bl mfish_hamon_make
/* 8044BDC8  48 00 00 10 */	b lbl_8044BDD8
lbl_8044BDCC:
/* 8044BDCC  A8 7E 06 26 */	lha r3, 0x626(r30)
/* 8044BDD0  38 03 FF FF */	addi r0, r3, -1
/* 8044BDD4  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_8044BDD8:
/* 8044BDD8  A8 BE 06 12 */	lha r5, 0x612(r30)
/* 8044BDDC  A8 9E 00 30 */	lha r4, 0x30(r30)
/* 8044BDE0  7C A0 2B 78 */	mr r0, r5
/* 8044BDE4  7C 04 28 00 */	cmpw r4, r5
/* 8044BDE8  40 80 00 08 */	bge lbl_8044BDF0
/* 8044BDEC  7C 80 23 78 */	mr r0, r4
lbl_8044BDF0:
/* 8044BDF0  7C 64 00 D0 */	neg r3, r4
/* 8044BDF4  7C 00 07 34 */	extsh r0, r0
/* 8044BDF8  7C 63 07 34 */	extsh r3, r3
/* 8044BDFC  7C 03 00 00 */	cmpw r3, r0
/* 8044BE00  40 81 00 08 */	ble lbl_8044BE08
/* 8044BE04  48 00 00 14 */	b lbl_8044BE18
lbl_8044BE08:
/* 8044BE08  7C 04 28 00 */	cmpw r4, r5
/* 8044BE0C  40 80 00 08 */	bge lbl_8044BE14
/* 8044BE10  7C 85 23 78 */	mr r5, r4
lbl_8044BE14:
/* 8044BE14  7C A3 2B 78 */	mr r3, r5
lbl_8044BE18:
/* 8044BE18  B0 7E 06 12 */	sth r3, 0x612(r30)
/* 8044BE1C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8044BE20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8044BE24  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8044BE28  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8044BE2C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8044BE30  7C 08 03 A6 */	mtlr r0
/* 8044BE34  38 21 00 60 */	addi r1, r1, 0x60
/* 8044BE38  4E 80 00 20 */	blr 
