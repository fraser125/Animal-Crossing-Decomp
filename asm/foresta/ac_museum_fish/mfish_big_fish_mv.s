lbl_8044E708:
/* 8044E708  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8044E70C  7C 08 02 A6 */	mflr r0
/* 8044E710  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8044E714  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8044E718  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8044E71C  39 61 00 90 */	addi r11, r1, 0x90
/* 8044E720  4B C4 C7 B5 */	bl func_8009AED4
/* 8044E724  7C 7E 1B 78 */	mr r30, r3
/* 8044E728  7C 9F 23 78 */	mr r31, r4
/* 8044E72C  4B FE 5E D1 */	bl mfish_onefish_mv
/* 8044E730  7F C3 F3 78 */	mr r3, r30
/* 8044E734  7F E4 FB 78 */	mr r4, r31
/* 8044E738  4B FE 89 59 */	bl mfish_body_wind_anime_play
/* 8044E73C  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 8044E740  2C 00 00 27 */	cmpwi r0, 0x27
/* 8044E744  40 82 00 3C */	bne lbl_8044E780
/* 8044E748  A8 7E 06 3A */	lha r3, 0x63a(r30)
/* 8044E74C  4B F6 C3 A5 */	bl sin_s
/* 8044E750  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8044E754  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044E758  38 A3 42 D4 */	addi r5, r3, lit_839@l /* 0x806442D4@l */
/* 8044E75C  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8044E760  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044E764  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044E768  EC 20 00 72 */	fmuls f1, f0, f1
/* 8044E76C  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 8044E770  EC 22 08 2A */	fadds f1, f2, f1
/* 8044E774  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044E778  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8044E77C  48 00 00 90 */	b lbl_8044E80C
lbl_8044E780:
/* 8044E780  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8044E784  A8 7E 06 3A */	lha r3, 0x63a(r30)
/* 8044E788  83 A4 61 38 */	lwz r29, debug_mode@l(r4)  /* 0x81166138@l */
/* 8044E78C  4B F6 C3 65 */	bl sin_s
/* 8044E790  A8 7D 1B 84 */	lha r3, 0x1b84(r29)
/* 8044E794  3C 80 43 30 */	lis r4, 0x4330
/* 8044E798  A8 1D 1B 82 */	lha r0, 0x1b82(r29)
/* 8044E79C  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044E7A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044E7A4  90 81 00 60 */	stw r4, 0x60(r1)
/* 8044E7A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044E7AC  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8044E7B0  90 61 00 64 */	stw r3, 0x64(r1)
/* 8044E7B4  38 65 42 8C */	addi r3, r5, lit_570@l /* 0x8064428C@l */
/* 8044E7B8  C8 83 00 00 */	lfd f4, 0(r3)
/* 8044E7BC  38 A6 42 C4 */	addi r5, r6, lit_793@l /* 0x806442C4@l */
/* 8044E7C0  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8044E7C4  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 8044E7C8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8044E7CC  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044E7D0  EC 40 20 28 */	fsubs f2, f0, f4
/* 8044E7D4  C0 A5 00 00 */	lfs f5, 0(r5)
/* 8044E7D8  90 81 00 68 */	stw r4, 0x68(r1)
/* 8044E7DC  C0 C6 42 68 */	lfs f6, lit_527@l(r6)  /* 0x80644268@l */
/* 8044E7E0  EC 65 00 B2 */	fmuls f3, f5, f2
/* 8044E7E4  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8044E7E8  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8044E7EC  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044E7F0  EC 66 18 2A */	fadds f3, f6, f3
/* 8044E7F4  EC 05 00 32 */	fmuls f0, f5, f0
/* 8044E7F8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8044E7FC  EC 02 00 2A */	fadds f0, f2, f0
/* 8044E800  EC 00 08 2A */	fadds f0, f0, f1
/* 8044E804  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044E808  D0 1E 00 44 */	stfs f0, 0x44(r30)
lbl_8044E80C:
/* 8044E80C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044E810  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8044E814  38 A3 42 48 */	addi r5, r3, lit_468@l /* 0x80644248@l */
/* 8044E818  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 8044E81C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044E820  38 A4 42 68 */	addi r5, r4, lit_527@l /* 0x80644268@l */
/* 8044E824  38 83 43 48 */	addi r4, r3, lit_1558@l /* 0x80644348@l */
/* 8044E828  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044E82C  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 8044E830  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8044E834  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044E838  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044E83C  4B F6 CA 59 */	bl add_calc2
/* 8044E840  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044E844  4B F6 C2 AD */	bl sin_s
/* 8044E848  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044E84C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044E850  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8044E854  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044E858  4B F6 C2 45 */	bl cos_s
/* 8044E85C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044E860  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044E864  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 8044E868  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 8044E86C  2C 00 00 27 */	cmpwi r0, 0x27
/* 8044E870  40 82 02 88 */	bne lbl_8044EAF8
/* 8044E874  3C 60 80 64 */	lis r3, lit_4774@ha /* 0x806443F8@ha */
/* 8044E878  C0 3E 06 00 */	lfs f1, 0x600(r30)
/* 8044E87C  C0 03 43 F8 */	lfs f0, lit_4774@l(r3)  /* 0x806443F8@l */
/* 8044E880  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044E884  40 81 00 D0 */	ble lbl_8044E954
/* 8044E888  A8 1E 06 32 */	lha r0, 0x632(r30)
/* 8044E88C  2C 00 07 1C */	cmpwi r0, 0x71c
/* 8044E890  40 81 00 28 */	ble lbl_8044E8B8
/* 8044E894  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044E898  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044E89C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8044E8A0  C0 24 42 60 */	lfs f1, lit_472@l(r4)  /* 0x80644260@l */
/* 8044E8A4  C0 43 42 6C */	lfs f2, lit_528@l(r3)  /* 0x8064426C@l */
/* 8044E8A8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044E8AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8044E8B0  4B F6 CA 29 */	bl add_calc0
/* 8044E8B4  48 00 04 C4 */	b lbl_8044ED78
lbl_8044E8B8:
/* 8044E8B8  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044E8BC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044E8C0  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044E8C4  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044E8C8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8044E8CC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044E8D0  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 8044E8D4  3C A0 80 64 */	lis r5, lit_6800@ha /* 0x80644438@ha */
/* 8044E8D8  FC 20 38 34 */	frsqrte f1, f7
/* 8044E8DC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044E8E0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044E8E4  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8044E8E8  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044E8EC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044E8F0  FC 41 00 72 */	fmul f2, f1, f1
/* 8044E8F4  C0 63 42 6C */	lfs f3, lit_528@l(r3)  /* 0x8064426C@l */
/* 8044E8F8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044E8FC  FC 86 00 72 */	fmul f4, f6, f1
/* 8044E900  C0 25 44 38 */	lfs f1, lit_6800@l(r5)  /* 0x80644438@l */
/* 8044E904  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E908  FC 45 10 28 */	fsub f2, f5, f2
/* 8044E90C  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044E910  FC 44 01 32 */	fmul f2, f4, f4
/* 8044E914  FC 86 01 32 */	fmul f4, f6, f4
/* 8044E918  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E91C  FC 45 10 28 */	fsub f2, f5, f2
/* 8044E920  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044E924  FC 44 01 32 */	fmul f2, f4, f4
/* 8044E928  FC 86 01 32 */	fmul f4, f6, f4
/* 8044E92C  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E930  FC 45 10 28 */	fsub f2, f5, f2
/* 8044E934  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044E938  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E93C  FC 40 10 18 */	frsp f2, f2
/* 8044E940  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8044E944  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8044E948  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044E94C  4B F6 C9 49 */	bl add_calc2
/* 8044E950  48 00 04 28 */	b lbl_8044ED78
lbl_8044E954:
/* 8044E954  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644280@ha */
/* 8044E958  C0 03 42 80 */	lfs f0, lit_557@l(r3)  /* 0x80644280@l */
/* 8044E95C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044E960  40 80 00 A0 */	bge lbl_8044EA00
/* 8044E964  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044E968  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044E96C  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044E970  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044E974  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8044E978  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044E97C  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 8044E980  3C A0 80 64 */	lis r5, lit_526@ha /* 0x80644264@ha */
/* 8044E984  FC 20 38 34 */	frsqrte f1, f7
/* 8044E988  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044E98C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044E990  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8044E994  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044E998  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044E99C  FC 41 00 72 */	fmul f2, f1, f1
/* 8044E9A0  C0 63 42 6C */	lfs f3, lit_528@l(r3)  /* 0x8064426C@l */
/* 8044E9A4  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044E9A8  FC 86 00 72 */	fmul f4, f6, f1
/* 8044E9AC  C0 25 42 64 */	lfs f1, lit_526@l(r5)  /* 0x80644264@l */
/* 8044E9B0  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E9B4  FC 45 10 28 */	fsub f2, f5, f2
/* 8044E9B8  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044E9BC  FC 44 01 32 */	fmul f2, f4, f4
/* 8044E9C0  FC 86 01 32 */	fmul f4, f6, f4
/* 8044E9C4  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E9C8  FC 45 10 28 */	fsub f2, f5, f2
/* 8044E9CC  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044E9D0  FC 44 01 32 */	fmul f2, f4, f4
/* 8044E9D4  FC 86 01 32 */	fmul f4, f6, f4
/* 8044E9D8  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E9DC  FC 45 10 28 */	fsub f2, f5, f2
/* 8044E9E0  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044E9E4  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044E9E8  FC 40 10 18 */	frsp f2, f2
/* 8044E9EC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8044E9F0  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8044E9F4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044E9F8  4B F6 C8 9D */	bl add_calc2
/* 8044E9FC  48 00 03 7C */	b lbl_8044ED78
lbl_8044EA00:
/* 8044EA00  A8 1E 06 44 */	lha r0, 0x644(r30)
/* 8044EA04  2C 00 07 1C */	cmpwi r0, 0x71c
/* 8044EA08  40 81 03 70 */	ble lbl_8044ED78
/* 8044EA0C  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044EA10  6C 07 80 00 */	xoris r7, r0, 0x8000
/* 8044EA14  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044EA18  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044EA1C  C9 45 00 00 */	lfd f10, 0(r5)
/* 8044EA20  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044EA24  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044EA28  C9 24 42 4C */	lfd f9, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044EA2C  FC 20 50 34 */	frsqrte f1, f10
/* 8044EA30  3C 00 43 30 */	lis r0, 0x4330
/* 8044EA34  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044EA38  3C 80 80 64 */	lis r4, lit_556@ha /* 0x8064427C@ha */
/* 8044EA3C  39 03 42 8C */	addi r8, r3, lit_570@l /* 0x8064428C@l */
/* 8044EA40  C9 05 00 00 */	lfd f8, 0(r5)
/* 8044EA44  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EA48  3C 60 80 64 */	lis r3, lit_1598@ha /* 0x80644350@ha */
/* 8044EA4C  39 23 43 50 */	addi r9, r3, lit_1598@l /* 0x80644350@l */
/* 8044EA50  90 E1 00 6C */	stw r7, 0x6c(r1)
/* 8044EA54  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044EA58  FC 29 00 72 */	fmul f1, f9, f1
/* 8044EA5C  FC 0A 00 32 */	fmul f0, f10, f0
/* 8044EA60  39 43 42 68 */	addi r10, r3, lit_527@l /* 0x80644268@l */
/* 8044EA64  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044EA68  90 01 00 68 */	stw r0, 0x68(r1)
/* 8044EA6C  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044EA70  C8 48 00 00 */	lfd f2, 0(r8)
/* 8044EA74  FC 08 00 28 */	fsub f0, f8, f0
/* 8044EA78  C0 89 00 00 */	lfs f4, 0(r9)
/* 8044EA7C  C0 AA 00 00 */	lfs f5, 0(r10)
/* 8044EA80  38 C4 42 7C */	addi r6, r4, lit_556@l /* 0x8064427C@l */
/* 8044EA84  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044EA88  FC C1 00 32 */	fmul f6, f1, f0
/* 8044EA8C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8044EA90  38 83 42 6C */	addi r4, r3, lit_528@l /* 0x8064426C@l */
/* 8044EA94  C0 26 00 00 */	lfs f1, 0(r6)
/* 8044EA98  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044EA9C  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044EAA0  FC 66 01 B2 */	fmul f3, f6, f6
/* 8044EAA4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044EAA8  FC E9 01 B2 */	fmul f7, f9, f6
/* 8044EAAC  FC CA 00 F2 */	fmul f6, f10, f3
/* 8044EAB0  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044EAB4  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8044EAB8  FC 88 30 28 */	fsub f4, f8, f6
/* 8044EABC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8044EAC0  FC 87 01 32 */	fmul f4, f7, f4
/* 8044EAC4  EC 22 08 24 */	fdivs f1, f2, f1
/* 8044EAC8  FC 44 01 32 */	fmul f2, f4, f4
/* 8044EACC  FC 89 01 32 */	fmul f4, f9, f4
/* 8044EAD0  FC 4A 00 B2 */	fmul f2, f10, f2
/* 8044EAD4  FC 48 10 28 */	fsub f2, f8, f2
/* 8044EAD8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044EADC  FC 4A 00 B2 */	fmul f2, f10, f2
/* 8044EAE0  FC 40 10 18 */	frsp f2, f2
/* 8044EAE4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8044EAE8  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8044EAEC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044EAF0  4B F6 C7 A5 */	bl add_calc2
/* 8044EAF4  48 00 02 84 */	b lbl_8044ED78
lbl_8044EAF8:
/* 8044EAF8  3C 60 80 64 */	lis r3, lit_4774@ha /* 0x806443F8@ha */
/* 8044EAFC  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 8044EB00  C0 03 43 F8 */	lfs f0, lit_4774@l(r3)  /* 0x806443F8@l */
/* 8044EB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044EB08  40 81 00 D0 */	ble lbl_8044EBD8
/* 8044EB0C  A8 1E 06 32 */	lha r0, 0x632(r30)
/* 8044EB10  2C 00 07 1C */	cmpwi r0, 0x71c
/* 8044EB14  40 81 00 28 */	ble lbl_8044EB3C
/* 8044EB18  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044EB1C  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044EB20  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8044EB24  C0 24 42 60 */	lfs f1, lit_472@l(r4)  /* 0x80644260@l */
/* 8044EB28  C0 43 42 6C */	lfs f2, lit_528@l(r3)  /* 0x8064426C@l */
/* 8044EB2C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044EB30  EC 21 00 28 */	fsubs f1, f1, f0
/* 8044EB34  4B F6 C7 A5 */	bl add_calc0
/* 8044EB38  48 00 02 40 */	b lbl_8044ED78
lbl_8044EB3C:
/* 8044EB3C  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044EB40  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044EB44  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044EB48  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044EB4C  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8044EB50  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044EB54  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 8044EB58  3C A0 80 64 */	lis r5, lit_6800@ha /* 0x80644438@ha */
/* 8044EB5C  FC 20 38 34 */	frsqrte f1, f7
/* 8044EB60  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044EB64  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044EB68  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8044EB6C  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044EB70  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044EB74  FC 41 00 72 */	fmul f2, f1, f1
/* 8044EB78  C0 63 42 6C */	lfs f3, lit_528@l(r3)  /* 0x8064426C@l */
/* 8044EB7C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044EB80  FC 86 00 72 */	fmul f4, f6, f1
/* 8044EB84  C0 25 44 38 */	lfs f1, lit_6800@l(r5)  /* 0x80644438@l */
/* 8044EB88  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EB8C  FC 45 10 28 */	fsub f2, f5, f2
/* 8044EB90  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044EB94  FC 44 01 32 */	fmul f2, f4, f4
/* 8044EB98  FC 86 01 32 */	fmul f4, f6, f4
/* 8044EB9C  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EBA0  FC 45 10 28 */	fsub f2, f5, f2
/* 8044EBA4  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044EBA8  FC 44 01 32 */	fmul f2, f4, f4
/* 8044EBAC  FC 86 01 32 */	fmul f4, f6, f4
/* 8044EBB0  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EBB4  FC 45 10 28 */	fsub f2, f5, f2
/* 8044EBB8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044EBBC  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EBC0  FC 40 10 18 */	frsp f2, f2
/* 8044EBC4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8044EBC8  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8044EBCC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044EBD0  4B F6 C6 C5 */	bl add_calc2
/* 8044EBD4  48 00 01 A4 */	b lbl_8044ED78
lbl_8044EBD8:
/* 8044EBD8  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644280@ha */
/* 8044EBDC  C0 03 42 80 */	lfs f0, lit_557@l(r3)  /* 0x80644280@l */
/* 8044EBE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044EBE4  40 80 00 A0 */	bge lbl_8044EC84
/* 8044EBE8  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044EBEC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044EBF0  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044EBF4  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044EBF8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8044EBFC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044EC00  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 8044EC04  3C A0 80 64 */	lis r5, lit_791@ha /* 0x806442BC@ha */
/* 8044EC08  FC 20 38 34 */	frsqrte f1, f7
/* 8044EC0C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044EC10  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044EC14  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8044EC18  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044EC1C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044EC20  FC 41 00 72 */	fmul f2, f1, f1
/* 8044EC24  C0 63 42 6C */	lfs f3, lit_528@l(r3)  /* 0x8064426C@l */
/* 8044EC28  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044EC2C  FC 86 00 72 */	fmul f4, f6, f1
/* 8044EC30  C0 25 42 BC */	lfs f1, lit_791@l(r5)  /* 0x806442BC@l */
/* 8044EC34  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EC38  FC 45 10 28 */	fsub f2, f5, f2
/* 8044EC3C  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044EC40  FC 44 01 32 */	fmul f2, f4, f4
/* 8044EC44  FC 86 01 32 */	fmul f4, f6, f4
/* 8044EC48  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EC4C  FC 45 10 28 */	fsub f2, f5, f2
/* 8044EC50  FC 84 00 B2 */	fmul f4, f4, f2
/* 8044EC54  FC 44 01 32 */	fmul f2, f4, f4
/* 8044EC58  FC 86 01 32 */	fmul f4, f6, f4
/* 8044EC5C  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EC60  FC 45 10 28 */	fsub f2, f5, f2
/* 8044EC64  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044EC68  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044EC6C  FC 40 10 18 */	frsp f2, f2
/* 8044EC70  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8044EC74  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8044EC78  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044EC7C  4B F6 C6 19 */	bl add_calc2
/* 8044EC80  48 00 00 F8 */	b lbl_8044ED78
lbl_8044EC84:
/* 8044EC84  A8 1E 06 44 */	lha r0, 0x644(r30)
/* 8044EC88  2C 00 07 1C */	cmpwi r0, 0x71c
/* 8044EC8C  40 81 00 EC */	ble lbl_8044ED78
/* 8044EC90  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044EC94  6C 07 80 00 */	xoris r7, r0, 0x8000
/* 8044EC98  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044EC9C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044ECA0  C9 45 00 00 */	lfd f10, 0(r5)
/* 8044ECA4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044ECA8  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044ECAC  C9 24 42 4C */	lfd f9, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044ECB0  FC 20 50 34 */	frsqrte f1, f10
/* 8044ECB4  3C 00 43 30 */	lis r0, 0x4330
/* 8044ECB8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044ECBC  3C 80 80 64 */	lis r4, lit_556@ha /* 0x8064427C@ha */
/* 8044ECC0  39 03 42 8C */	addi r8, r3, lit_570@l /* 0x8064428C@l */
/* 8044ECC4  C9 05 00 00 */	lfd f8, 0(r5)
/* 8044ECC8  FC 01 00 72 */	fmul f0, f1, f1
/* 8044ECCC  3C 60 80 64 */	lis r3, lit_1598@ha /* 0x80644350@ha */
/* 8044ECD0  39 23 43 50 */	addi r9, r3, lit_1598@l /* 0x80644350@l */
/* 8044ECD4  90 E1 00 6C */	stw r7, 0x6c(r1)
/* 8044ECD8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044ECDC  FC 29 00 72 */	fmul f1, f9, f1
/* 8044ECE0  FC 0A 00 32 */	fmul f0, f10, f0
/* 8044ECE4  39 43 42 68 */	addi r10, r3, lit_527@l /* 0x80644268@l */
/* 8044ECE8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044ECEC  90 01 00 68 */	stw r0, 0x68(r1)
/* 8044ECF0  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044ECF4  C8 48 00 00 */	lfd f2, 0(r8)
/* 8044ECF8  FC 08 00 28 */	fsub f0, f8, f0
/* 8044ECFC  C0 89 00 00 */	lfs f4, 0(r9)
/* 8044ED00  C0 AA 00 00 */	lfs f5, 0(r10)
/* 8044ED04  38 C4 42 7C */	addi r6, r4, lit_556@l /* 0x8064427C@l */
/* 8044ED08  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8044ED0C  FC C1 00 32 */	fmul f6, f1, f0
/* 8044ED10  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8044ED14  38 83 42 6C */	addi r4, r3, lit_528@l /* 0x8064426C@l */
/* 8044ED18  C0 26 00 00 */	lfs f1, 0(r6)
/* 8044ED1C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044ED20  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044ED24  FC 66 01 B2 */	fmul f3, f6, f6
/* 8044ED28  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044ED2C  FC E9 01 B2 */	fmul f7, f9, f6
/* 8044ED30  FC CA 00 F2 */	fmul f6, f10, f3
/* 8044ED34  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044ED38  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8044ED3C  FC 88 30 28 */	fsub f4, f8, f6
/* 8044ED40  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8044ED44  FC 87 01 32 */	fmul f4, f7, f4
/* 8044ED48  EC 22 08 24 */	fdivs f1, f2, f1
/* 8044ED4C  FC 44 01 32 */	fmul f2, f4, f4
/* 8044ED50  FC 89 01 32 */	fmul f4, f9, f4
/* 8044ED54  FC 4A 00 B2 */	fmul f2, f10, f2
/* 8044ED58  FC 48 10 28 */	fsub f2, f8, f2
/* 8044ED5C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044ED60  FC 4A 00 B2 */	fmul f2, f10, f2
/* 8044ED64  FC 40 10 18 */	frsp f2, f2
/* 8044ED68  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8044ED6C  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8044ED70  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044ED74  4B F6 C5 21 */	bl add_calc2
lbl_8044ED78:
/* 8044ED78  7F C4 F3 78 */	mr r4, r30
/* 8044ED7C  7F E5 FB 78 */	mr r5, r31
/* 8044ED80  38 61 00 50 */	addi r3, r1, 0x50
/* 8044ED84  4B FE 8A 21 */	bl mfish_get_flow_vec
/* 8044ED88  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8044ED8C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044ED90  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8044ED94  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044ED98  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044ED9C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044EDA0  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044EDA4  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8044EDA8  FC 20 30 34 */	frsqrte f1, f6
/* 8044EDAC  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044EDB0  38 C3 42 68 */	addi r6, r3, lit_527@l /* 0x80644268@l */
/* 8044EDB4  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044EDB8  C1 46 00 00 */	lfs f10, 0(r6)
/* 8044EDBC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044EDC0  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EDC4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044EDC8  C1 1E 05 D0 */	lfs f8, 0x5d0(r30)
/* 8044EDCC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044EDD0  EC EA 00 B2 */	fmuls f7, f10, f2
/* 8044EDD4  C1 3E 05 A0 */	lfs f9, 0x5a0(r30)
/* 8044EDD8  FC 65 00 72 */	fmul f3, f5, f1
/* 8044EDDC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044EDE0  FC 26 00 32 */	fmul f1, f6, f0
/* 8044EDE4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044EDE8  EC E8 38 2A */	fadds f7, f8, f7
/* 8044EDEC  FC 24 08 28 */	fsub f1, f4, f1
/* 8044EDF0  FD 03 00 72 */	fmul f8, f3, f1
/* 8044EDF4  EC 69 38 2A */	fadds f3, f9, f7
/* 8044EDF8  FC 28 02 32 */	fmul f1, f8, f8
/* 8044EDFC  D0 7E 05 A0 */	stfs f3, 0x5a0(r30)
/* 8044EE00  FC 65 02 32 */	fmul f3, f5, f8
/* 8044EE04  C0 E1 00 58 */	lfs f7, 0x58(r1)
/* 8044EE08  FC 26 00 72 */	fmul f1, f6, f1
/* 8044EE0C  C1 1E 05 D8 */	lfs f8, 0x5d8(r30)
/* 8044EE10  C1 3E 05 A8 */	lfs f9, 0x5a8(r30)
/* 8044EE14  EC EA 01 F2 */	fmuls f7, f10, f7
/* 8044EE18  FC 24 08 28 */	fsub f1, f4, f1
/* 8044EE1C  EC E8 38 2A */	fadds f7, f8, f7
/* 8044EE20  FD 03 00 72 */	fmul f8, f3, f1
/* 8044EE24  EC 69 38 2A */	fadds f3, f9, f7
/* 8044EE28  FC 28 02 32 */	fmul f1, f8, f8
/* 8044EE2C  D0 7E 05 A8 */	stfs f3, 0x5a8(r30)
/* 8044EE30  FC 65 02 32 */	fmul f3, f5, f8
/* 8044EE34  FC 26 00 72 */	fmul f1, f6, f1
/* 8044EE38  FC 24 08 28 */	fsub f1, f4, f1
/* 8044EE3C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044EE40  FC 26 00 72 */	fmul f1, f6, f1
/* 8044EE44  FC 20 08 18 */	frsp f1, f1
/* 8044EE48  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8044EE4C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8044EE50  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044EE54  EF E2 08 28 */	fsubs f31, f2, f1
/* 8044EE58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8044EE5C  40 81 00 54 */	ble lbl_8044EEB0
/* 8044EE60  FC 20 F8 34 */	frsqrte f1, f31
/* 8044EE64  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EE68  FC 25 00 72 */	fmul f1, f5, f1
/* 8044EE6C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044EE70  FC 04 00 28 */	fsub f0, f4, f0
/* 8044EE74  FC 21 00 32 */	fmul f1, f1, f0
/* 8044EE78  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EE7C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044EE80  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044EE84  FC 04 00 28 */	fsub f0, f4, f0
/* 8044EE88  FC 21 00 32 */	fmul f1, f1, f0
/* 8044EE8C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EE90  FC 25 00 72 */	fmul f1, f5, f1
/* 8044EE94  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044EE98  FC 04 00 28 */	fsub f0, f4, f0
/* 8044EE9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8044EEA0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044EEA4  FC 00 00 18 */	frsp f0, f0
/* 8044EEA8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8044EEAC  C3 E1 00 30 */	lfs f31, 0x30(r1)
lbl_8044EEB0:
/* 8044EEB0  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044EEB4  4B F6 BC 3D */	bl sin_s
/* 8044EEB8  A8 7E 06 32 */	lha r3, 0x632(r30)
/* 8044EEBC  3C E0 43 30 */	lis r7, 0x4330
/* 8044EEC0  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044EEC4  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044EEC8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8044EECC  C8 85 42 8C */	lfd f4, lit_570@l(r5)  /* 0x8064428C@l */
/* 8044EED0  90 81 00 6C */	stw r4, 0x6c(r1)
/* 8044EED4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044EED8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044EEDC  38 A0 01 55 */	li r5, 0x155
/* 8044EEE0  90 E1 00 68 */	stw r7, 0x68(r1)
/* 8044EEE4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044EEE8  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8044EEEC  38 C0 00 09 */	li r6, 9
/* 8044EEF0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8044EEF4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8044EEF8  EC 60 20 28 */	fsubs f3, f0, f4
/* 8044EEFC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044EF00  90 E1 00 60 */	stw r7, 0x60(r1)
/* 8044EF04  EC 63 00 72 */	fmuls f3, f3, f1
/* 8044EF08  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 8044EF0C  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8044EF10  EC 02 20 28 */	fsubs f0, f2, f4
/* 8044EF14  EC 00 18 2A */	fadds f0, f0, f3
/* 8044EF18  FC 00 00 1E */	fctiwz f0, f0
/* 8044EF1C  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8044EF20  80 81 00 74 */	lwz r4, 0x74(r1)
/* 8044EF24  4B F6 C3 ED */	bl add_calc_short_angle2
/* 8044EF28  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8044EF2C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044EF30  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8044EF34  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8044EF38  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044EF3C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044EF40  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8044EF44  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8044EF48  FC 60 30 34 */	frsqrte f3, f6
/* 8044EF4C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044EF50  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044EF54  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044EF58  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044EF5C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044EF60  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044EF64  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044EF68  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044EF6C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044EF70  FC 24 08 28 */	fsub f1, f4, f1
/* 8044EF74  FC 63 00 72 */	fmul f3, f3, f1
/* 8044EF78  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044EF7C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044EF80  FC 26 00 72 */	fmul f1, f6, f1
/* 8044EF84  FC 24 08 28 */	fsub f1, f4, f1
/* 8044EF88  FC 63 00 72 */	fmul f3, f3, f1
/* 8044EF8C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044EF90  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044EF94  FC 26 00 72 */	fmul f1, f6, f1
/* 8044EF98  FC 24 08 28 */	fsub f1, f4, f1
/* 8044EF9C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044EFA0  FC 26 00 72 */	fmul f1, f6, f1
/* 8044EFA4  FC 20 08 18 */	frsp f1, f1
/* 8044EFA8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8044EFAC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8044EFB0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044EFB4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044EFB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044EFBC  40 81 00 54 */	ble lbl_8044F010
/* 8044EFC0  FC 20 10 34 */	frsqrte f1, f2
/* 8044EFC4  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EFC8  FC 25 00 72 */	fmul f1, f5, f1
/* 8044EFCC  FC 02 00 32 */	fmul f0, f2, f0
/* 8044EFD0  FC 04 00 28 */	fsub f0, f4, f0
/* 8044EFD4  FC 21 00 32 */	fmul f1, f1, f0
/* 8044EFD8  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EFDC  FC 25 00 72 */	fmul f1, f5, f1
/* 8044EFE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8044EFE4  FC 04 00 28 */	fsub f0, f4, f0
/* 8044EFE8  FC 21 00 32 */	fmul f1, f1, f0
/* 8044EFEC  FC 01 00 72 */	fmul f0, f1, f1
/* 8044EFF0  FC 25 00 72 */	fmul f1, f5, f1
/* 8044EFF4  FC 02 00 32 */	fmul f0, f2, f0
/* 8044EFF8  FC 04 00 28 */	fsub f0, f4, f0
/* 8044EFFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8044F000  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F004  FC 00 00 18 */	frsp f0, f0
/* 8044F008  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8044F00C  C0 41 00 28 */	lfs f2, 0x28(r1)
lbl_8044F010:
/* 8044F010  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F014  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8044F018  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044F01C  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8044F020  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044F024  38 A0 00 E3 */	li r5, 0xe3
/* 8044F028  38 C0 00 04 */	li r6, 4
/* 8044F02C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044F030  4B F6 C2 E1 */	bl add_calc_short_angle2
/* 8044F034  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044F038  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044F03C  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044F040  38 C0 00 09 */	li r6, 9
/* 8044F044  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044F048  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8044F04C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044F050  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044F054  FC 40 28 34 */	frsqrte f2, f5
/* 8044F058  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8044F05C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044F060  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F064  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044F068  38 7E 06 32 */	addi r3, r30, 0x632
/* 8044F06C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044F070  38 80 00 00 */	li r4, 0
/* 8044F074  38 A0 00 5B */	li r5, 0x5b
/* 8044F078  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044F07C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F080  FC 23 08 28 */	fsub f1, f3, f1
/* 8044F084  FC 42 00 72 */	fmul f2, f2, f1
/* 8044F088  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044F08C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044F090  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F094  FC 23 08 28 */	fsub f1, f3, f1
/* 8044F098  FC 42 00 72 */	fmul f2, f2, f1
/* 8044F09C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044F0A0  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044F0A4  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F0A8  FC 23 08 28 */	fsub f1, f3, f1
/* 8044F0AC  FC 22 00 72 */	fmul f1, f2, f1
/* 8044F0B0  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F0B4  FC 20 08 18 */	frsp f1, f1
/* 8044F0B8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8044F0BC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8044F0C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044F0C4  4B F6 C2 4D */	bl add_calc_short_angle2
/* 8044F0C8  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8044F0CC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044F0D0  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8044F0D4  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044F0D8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8044F0DC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044F0E0  C8 A3 42 54 */	lfd f5, lit_470@l(r3)  /* 0x80644254@l */
/* 8044F0E4  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8044F0E8  FC 20 38 34 */	frsqrte f1, f7
/* 8044F0EC  80 A5 61 38 */	lwz r5, debug_mode@l(r5)  /* 0x81166138@l */
/* 8044F0F0  3C 00 43 30 */	lis r0, 0x4330
/* 8044F0F4  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044F0F8  39 04 42 8C */	addi r8, r4, lit_570@l /* 0x8064428C@l */
/* 8044F0FC  A8 A5 1B A2 */	lha r5, 0x1ba2(r5)
/* 8044F100  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F104  6C A7 80 00 */	xoris r7, r5, 0x8000
/* 8044F108  90 E1 00 74 */	stw r7, 0x74(r1)
/* 8044F10C  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8044F110  39 24 42 68 */	addi r9, r4, lit_527@l /* 0x80644268@l */
/* 8044F114  3C A0 80 64 */	lis r5, lit_840@ha /* 0x806442D8@ha */
/* 8044F118  FC 07 00 32 */	fmul f0, f7, f0
/* 8044F11C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8044F120  39 45 42 D8 */	addi r10, r5, lit_840@l /* 0x806442D8@l */
/* 8044F124  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044F128  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F12C  39 63 42 98 */	addi r11, r3, lit_588@l /* 0x80644298@l */
/* 8044F130  FC 05 00 28 */	fsub f0, f5, f0
/* 8044F134  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F138  38 C3 42 60 */	addi r6, r3, lit_472@l /* 0x80644260@l */
/* 8044F13C  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80644320@ha */
/* 8044F140  C8 88 00 00 */	lfd f4, 0(r8)
/* 8044F144  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044F148  FC 21 00 32 */	fmul f1, f1, f0
/* 8044F14C  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 8044F150  38 A4 43 20 */	addi r5, r4, lit_1100@l /* 0x80644320@l */
/* 8044F154  38 83 42 AC */	addi r4, r3, lit_666@l /* 0x806442AC@l */
/* 8044F158  ED 03 20 28 */	fsubs f8, f3, f4
/* 8044F15C  C1 29 00 00 */	lfs f9, 0(r9)
/* 8044F160  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F164  C1 4A 00 00 */	lfs f10, 0(r10)
/* 8044F168  C1 6B 00 00 */	lfs f11, 0(r11)
/* 8044F16C  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 8044F170  FC 46 00 72 */	fmul f2, f6, f1
/* 8044F174  A8 FE 06 36 */	lha r7, 0x636(r30)
/* 8044F178  FC 27 00 32 */	fmul f1, f7, f0
/* 8044F17C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8044F180  C0 65 00 00 */	lfs f3, 0(r5)
/* 8044F184  ED 09 02 32 */	fmuls f8, f9, f8
/* 8044F188  C0 84 00 00 */	lfs f4, 0(r4)
/* 8044F18C  FC 25 08 28 */	fsub f1, f5, f1
/* 8044F190  ED 0A 40 2A */	fadds f8, f10, f8
/* 8044F194  FC 42 00 72 */	fmul f2, f2, f1
/* 8044F198  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044F19C  FC 46 00 B2 */	fmul f2, f6, f2
/* 8044F1A0  FC 27 00 72 */	fmul f1, f7, f1
/* 8044F1A4  EC CB 02 32 */	fmuls f6, f11, f8
/* 8044F1A8  FC 25 08 28 */	fsub f1, f5, f1
/* 8044F1AC  FC A0 30 1E */	fctiwz f5, f6
/* 8044F1B0  FC 22 00 72 */	fmul f1, f2, f1
/* 8044F1B4  D8 A1 00 68 */	stfd f5, 0x68(r1)
/* 8044F1B8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8044F1BC  FC 27 00 72 */	fmul f1, f7, f1
/* 8044F1C0  7C 07 02 14 */	add r0, r7, r0
/* 8044F1C4  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 8044F1C8  FC A0 08 18 */	frsp f5, f1
/* 8044F1CC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8044F1D0  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8044F1D4  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8044F1D8  EC 22 08 2A */	fadds f1, f2, f1
/* 8044F1DC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8044F1E0  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044F1E4  4B F6 BF CD */	bl add_calc
/* 8044F1E8  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 8044F1EC  2C 00 00 02 */	cmpwi r0, 2
/* 8044F1F0  40 82 00 14 */	bne lbl_8044F204
/* 8044F1F4  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044F1F8  38 03 07 1C */	addi r0, r3, 0x71c
/* 8044F1FC  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 8044F200  48 00 00 14 */	b lbl_8044F214
lbl_8044F204:
/* 8044F204  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 8044F208  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 8044F20C  7C 03 02 14 */	add r0, r3, r0
/* 8044F210  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_8044F214:
/* 8044F214  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8044F218  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044F21C  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8044F220  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044F224  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044F228  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044F22C  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044F230  FC 60 30 34 */	frsqrte f3, f6
/* 8044F234  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F238  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044F23C  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044F240  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044F244  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044F248  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F24C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044F250  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F254  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F258  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F25C  FC 63 00 72 */	fmul f3, f3, f1
/* 8044F260  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F264  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F268  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F26C  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F270  FC 63 00 72 */	fmul f3, f3, f1
/* 8044F274  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F278  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F27C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F280  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F284  FC 23 00 72 */	fmul f1, f3, f1
/* 8044F288  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F28C  FC 20 08 18 */	frsp f1, f1
/* 8044F290  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8044F294  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8044F298  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044F29C  EC C2 08 28 */	fsubs f6, f2, f1
/* 8044F2A0  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8044F2A4  40 81 00 54 */	ble lbl_8044F2F8
/* 8044F2A8  FC 20 30 34 */	frsqrte f1, f6
/* 8044F2AC  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F2B0  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F2B4  FC 06 00 32 */	fmul f0, f6, f0
/* 8044F2B8  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F2BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8044F2C0  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F2C4  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F2C8  FC 06 00 32 */	fmul f0, f6, f0
/* 8044F2CC  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F2D0  FC 21 00 32 */	fmul f1, f1, f0
/* 8044F2D4  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F2D8  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F2DC  FC 06 00 32 */	fmul f0, f6, f0
/* 8044F2E0  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8044F2E8  FC 06 00 32 */	fmul f0, f6, f0
/* 8044F2EC  FC 00 00 18 */	frsp f0, f0
/* 8044F2F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8044F2F4  C0 C1 00 18 */	lfs f6, 0x18(r1)
lbl_8044F2F8:
/* 8044F2F8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044F2FC  3C 00 43 30 */	lis r0, 0x4330
/* 8044F300  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044F304  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 8044F308  80 A4 00 00 */	lwz r5, 0(r4)
/* 8044F30C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044F310  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8044F314  C0 29 42 60 */	lfs f1, lit_472@l(r9)  /* 0x80644260@l */
/* 8044F318  A8 65 1B 8E */	lha r3, 0x1b8e(r5)
/* 8044F31C  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 8044F320  38 A6 42 68 */	addi r5, r6, lit_527@l /* 0x80644268@l */
/* 8044F324  C8 44 00 00 */	lfd f2, 0(r4)
/* 8044F328  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044F32C  3C C0 80 64 */	lis r6, lit_588@ha /* 0x80644298@ha */
/* 8044F330  90 61 00 74 */	stw r3, 0x74(r1)
/* 8044F334  39 06 42 98 */	addi r8, r6, lit_588@l /* 0x80644298@l */
/* 8044F338  C0 65 00 00 */	lfs f3, 0(r5)
/* 8044F33C  3C E0 80 64 */	lis r7, lit_587@ha /* 0x80644294@ha */
/* 8044F340  90 01 00 70 */	stw r0, 0x70(r1)
/* 8044F344  EC 21 30 28 */	fsubs f1, f1, f6
/* 8044F348  C0 88 00 00 */	lfs f4, 0(r8)
/* 8044F34C  38 7E 06 34 */	addi r3, r30, 0x634
/* 8044F350  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8044F354  38 C0 00 04 */	li r6, 4
/* 8044F358  A8 9E 06 40 */	lha r4, 0x640(r30)
/* 8044F35C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044F360  C0 47 42 94 */	lfs f2, lit_587@l(r7)  /* 0x80644294@l */
/* 8044F364  EC 03 00 32 */	fmuls f0, f3, f0
/* 8044F368  EC 02 00 2A */	fadds f0, f2, f0
/* 8044F36C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8044F370  FC 00 00 1E */	fctiwz f0, f0
/* 8044F374  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8044F378  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8044F37C  7C 00 07 34 */	extsh r0, r0
/* 8044F380  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044F384  7C 00 07 34 */	extsh r0, r0
/* 8044F388  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044F38C  7C 05 07 34 */	extsh r5, r0
/* 8044F390  4B F6 BF 81 */	bl add_calc_short_angle2
/* 8044F394  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044F398  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 8044F39C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044F3A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044F3A4  40 81 01 08 */	ble lbl_8044F4AC
/* 8044F3A8  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8044F3AC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044F3B0  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8044F3B4  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044F3B8  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8044F3BC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044F3C0  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044F3C4  FC 60 30 34 */	frsqrte f3, f6
/* 8044F3C8  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8044F3CC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F3D0  C8 84 00 00 */	lfd f4, 0(r4)
/* 8044F3D4  C0 43 42 60 */	lfs f2, lit_472@l(r3)  /* 0x80644260@l */
/* 8044F3D8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F3DC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F3E0  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F3E4  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F3E8  FC 63 00 72 */	fmul f3, f3, f1
/* 8044F3EC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F3F0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F3F4  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F3F8  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F3FC  FC 63 00 72 */	fmul f3, f3, f1
/* 8044F400  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F404  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F408  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F40C  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F410  FC 23 00 72 */	fmul f1, f3, f1
/* 8044F414  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F418  FC 20 08 18 */	frsp f1, f1
/* 8044F41C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8044F420  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8044F424  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044F428  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044F42C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044F430  40 81 00 54 */	ble lbl_8044F484
/* 8044F434  FC 20 10 34 */	frsqrte f1, f2
/* 8044F438  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F43C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F440  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F444  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F448  FC 21 00 32 */	fmul f1, f1, f0
/* 8044F44C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F450  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F454  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F458  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F45C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044F460  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F464  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F468  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F46C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F470  FC 01 00 32 */	fmul f0, f1, f0
/* 8044F474  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F478  FC 00 00 18 */	frsp f0, f0
/* 8044F47C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8044F480  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_8044F484:
/* 8044F484  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F488  A8 9E 06 34 */	lha r4, 0x634(r30)
/* 8044F48C  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044F490  38 7E 06 44 */	addi r3, r30, 0x644
/* 8044F494  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044F498  38 A0 00 71 */	li r5, 0x71
/* 8044F49C  38 C0 00 04 */	li r6, 4
/* 8044F4A0  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044F4A4  4B F6 BE 6D */	bl add_calc_short_angle2
/* 8044F4A8  48 00 01 04 */	b lbl_8044F5AC
lbl_8044F4AC:
/* 8044F4AC  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8044F4B0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044F4B4  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8044F4B8  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044F4BC  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8044F4C0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044F4C4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044F4C8  FC 60 30 34 */	frsqrte f3, f6
/* 8044F4CC  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8044F4D0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F4D4  C8 84 00 00 */	lfd f4, 0(r4)
/* 8044F4D8  C0 43 42 60 */	lfs f2, lit_472@l(r3)  /* 0x80644260@l */
/* 8044F4DC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F4E0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F4E4  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F4E8  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F4EC  FC 63 00 72 */	fmul f3, f3, f1
/* 8044F4F0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F4F4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F4F8  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F4FC  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F500  FC 63 00 72 */	fmul f3, f3, f1
/* 8044F504  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044F508  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044F50C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F510  FC 24 08 28 */	fsub f1, f4, f1
/* 8044F514  FC 23 00 72 */	fmul f1, f3, f1
/* 8044F518  FC 26 00 72 */	fmul f1, f6, f1
/* 8044F51C  FC 20 08 18 */	frsp f1, f1
/* 8044F520  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8044F524  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8044F528  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044F52C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044F530  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044F534  40 81 00 54 */	ble lbl_8044F588
/* 8044F538  FC 20 10 34 */	frsqrte f1, f2
/* 8044F53C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F540  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F544  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F548  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F54C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044F550  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F554  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F558  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F55C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F560  FC 21 00 32 */	fmul f1, f1, f0
/* 8044F564  FC 01 00 72 */	fmul f0, f1, f1
/* 8044F568  FC 25 00 72 */	fmul f1, f5, f1
/* 8044F56C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F570  FC 04 00 28 */	fsub f0, f4, f0
/* 8044F574  FC 01 00 32 */	fmul f0, f1, f0
/* 8044F578  FC 02 00 32 */	fmul f0, f2, f0
/* 8044F57C  FC 00 00 18 */	frsp f0, f0
/* 8044F580  D0 01 00 08 */	stfs f0, 8(r1)
/* 8044F584  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8044F588:
/* 8044F588  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044F58C  38 7E 06 44 */	addi r3, r30, 0x644
/* 8044F590  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044F594  38 80 00 00 */	li r4, 0
/* 8044F598  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044F59C  38 A0 00 71 */	li r5, 0x71
/* 8044F5A0  38 C0 00 04 */	li r6, 4
/* 8044F5A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044F5A8  4B F6 BD 69 */	bl add_calc_short_angle2
lbl_8044F5AC:
/* 8044F5AC  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 8044F5B0  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 8044F5B4  C0 63 43 48 */	lfs f3, lit_1558@l(r3)  /* 0x80644348@l */
/* 8044F5B8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8044F5BC  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 8044F5C0  C0 44 43 08 */	lfs f2, lit_1068@l(r4)  /* 0x80644308@l */
/* 8044F5C4  4B F6 BC D1 */	bl add_calc2
/* 8044F5C8  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8044F5CC  38 64 FF FF */	addi r3, r4, -1
/* 8044F5D0  7C 80 07 35 */	extsh. r0, r4
/* 8044F5D4  B0 7E 06 26 */	sth r3, 0x626(r30)
/* 8044F5D8  40 80 03 7C */	bge lbl_8044F954
/* 8044F5DC  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 8044F5E0  2C 00 00 27 */	cmpwi r0, 0x27
/* 8044F5E4  40 82 00 18 */	bne lbl_8044F5FC
/* 8044F5E8  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8044F5EC  C0 3E 06 00 */	lfs f1, 0x600(r30)
/* 8044F5F0  C0 03 42 B0 */	lfs f0, lit_697@l(r3)  /* 0x806442B0@l */
/* 8044F5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044F5F8  41 80 00 20 */	blt lbl_8044F618
lbl_8044F5FC:
/* 8044F5FC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8044F600  40 82 02 D4 */	bne lbl_8044F8D4
/* 8044F604  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8044F608  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 8044F60C  C0 03 42 B0 */	lfs f0, lit_697@l(r3)  /* 0x806442B0@l */
/* 8044F610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044F614  40 80 02 C0 */	bge lbl_8044F8D4
lbl_8044F618:
/* 8044F618  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 8044F61C  2C 00 00 00 */	cmpwi r0, 0
/* 8044F620  40 81 00 10 */	ble lbl_8044F630
/* 8044F624  38 00 40 00 */	li r0, 0x4000
/* 8044F628  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044F62C  48 00 00 0C */	b lbl_8044F638
lbl_8044F630:
/* 8044F630  38 00 C0 00 */	li r0, -16384
/* 8044F634  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_8044F638:
/* 8044F638  4B C0 D6 BD */	bl fqrand
/* 8044F63C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8044F640  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044F644  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044F648  FC 40 00 50 */	fneg f2, f0
/* 8044F64C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8044F650  40 81 00 08 */	ble lbl_8044F658
/* 8044F654  48 00 00 10 */	b lbl_8044F664
lbl_8044F658:
/* 8044F658  4B C0 D6 9D */	bl fqrand
/* 8044F65C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8044F660  EC 40 00 72 */	fmuls f2, f0, f1
lbl_8044F664:
/* 8044F664  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044F668  EC 00 10 2A */	fadds f0, f0, f2
/* 8044F66C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8044F670  4B C0 D6 85 */	bl fqrand
/* 8044F674  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044F678  3C 00 43 30 */	lis r0, 0x4330
/* 8044F67C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044F680  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 8044F684  80 84 00 00 */	lwz r4, 0(r4)
/* 8044F688  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044F68C  3C C0 80 64 */	lis r6, lit_471@ha /* 0x8064425C@ha */
/* 8044F690  90 01 00 70 */	stw r0, 0x70(r1)
/* 8044F694  A8 84 1B A0 */	lha r4, 0x1ba0(r4)
/* 8044F698  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 8044F69C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8044F6A0  C0 65 42 C4 */	lfs f3, lit_793@l(r5)  /* 0x806442C4@l */
/* 8044F6A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8044F6A8  C0 86 42 5C */	lfs f4, lit_471@l(r6)  /* 0x8064425C@l */
/* 8044F6AC  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8044F6B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044F6B4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8044F6B8  EC 04 00 2A */	fadds f0, f4, f0
/* 8044F6BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044F6C0  40 80 01 64 */	bge lbl_8044F824
/* 8044F6C4  4B C0 D6 69 */	bl fqrand2
/* 8044F6C8  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8044F6CC  3C 80 80 64 */	lis r4, lit_840@ha /* 0x806442D8@ha */
/* 8044F6D0  38 A3 42 44 */	addi r5, r3, data_80644244@l /* 0x80644244@l */
/* 8044F6D4  C0 44 42 D8 */	lfs f2, lit_840@l(r4)  /* 0x806442D8@l */
/* 8044F6D8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044F6DC  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044F6E0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8044F6E4  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 8044F6E8  EC 22 08 2A */	fadds f1, f2, f1
/* 8044F6EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044F6F0  FC 00 00 1E */	fctiwz f0, f0
/* 8044F6F4  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8044F6F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8044F6FC  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 8044F700  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 8044F704  2C 00 00 27 */	cmpwi r0, 0x27
/* 8044F708  41 82 00 1C */	beq lbl_8044F724
/* 8044F70C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044F710  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044F714  80 63 00 00 */	lwz r3, 0(r3)
/* 8044F718  A8 03 1B 86 */	lha r0, 0x1b86(r3)
/* 8044F71C  2C 00 00 01 */	cmpwi r0, 1
/* 8044F720  40 82 00 84 */	bne lbl_8044F7A4
lbl_8044F724:
/* 8044F724  4B C0 D5 D1 */	bl fqrand
/* 8044F728  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8044F72C  3C 80 80 64 */	lis r4, lit_698@ha /* 0x806442B4@ha */
/* 8044F730  38 A3 42 B0 */	addi r5, r3, lit_697@l /* 0x806442B0@l */
/* 8044F734  C0 44 42 B4 */	lfs f2, lit_698@l(r4)  /* 0x806442B4@l */
/* 8044F738  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044F73C  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044F740  EC 20 00 72 */	fmuls f1, f0, f1
/* 8044F744  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 8044F748  EC 22 08 2A */	fadds f1, f2, f1
/* 8044F74C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044F750  FC 00 00 1E */	fctiwz f0, f0
/* 8044F754  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8044F758  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8044F75C  B0 1E 06 34 */	sth r0, 0x634(r30)
/* 8044F760  4B C0 D5 95 */	bl fqrand
/* 8044F764  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8044F768  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8044F76C  38 A3 42 B0 */	addi r5, r3, lit_697@l /* 0x806442B0@l */
/* 8044F770  C0 04 42 98 */	lfs f0, lit_588@l(r4)  /* 0x80644298@l */
/* 8044F774  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044F778  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044F77C  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044F780  C0 23 42 60 */	lfs f1, lit_472@l(r3)  /* 0x80644260@l */
/* 8044F784  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8044F788  FC 00 00 1E */	fctiwz f0, f0
/* 8044F78C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8044F790  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8044F794  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8044F798  4B FE 1E 51 */	bl func_804315E8
/* 8044F79C  D0 3E 05 B4 */	stfs f1, 0x5b4(r30)
/* 8044F7A0  48 00 01 70 */	b lbl_8044F910
lbl_8044F7A4:
/* 8044F7A4  4B C0 D5 51 */	bl fqrand
/* 8044F7A8  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644280@ha */
/* 8044F7AC  3C 80 80 64 */	lis r4, lit_1101@ha /* 0x80644324@ha */
/* 8044F7B0  38 A3 42 80 */	addi r5, r3, lit_557@l /* 0x80644280@l */
/* 8044F7B4  C0 44 43 24 */	lfs f2, lit_1101@l(r4)  /* 0x80644324@l */
/* 8044F7B8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044F7BC  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044F7C0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8044F7C4  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 8044F7C8  EC 22 08 2A */	fadds f1, f2, f1
/* 8044F7CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044F7D0  FC 00 00 1E */	fctiwz f0, f0
/* 8044F7D4  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8044F7D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8044F7DC  B0 1E 06 34 */	sth r0, 0x634(r30)
/* 8044F7E0  4B C0 D5 15 */	bl fqrand
/* 8044F7E4  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8044F7E8  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8044F7EC  38 A3 42 B0 */	addi r5, r3, lit_697@l /* 0x806442B0@l */
/* 8044F7F0  C0 04 42 98 */	lfs f0, lit_588@l(r4)  /* 0x80644298@l */
/* 8044F7F4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044F7F8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044F7FC  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044F800  C0 23 42 5C */	lfs f1, lit_471@l(r3)  /* 0x8064425C@l */
/* 8044F804  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8044F808  FC 00 00 1E */	fctiwz f0, f0
/* 8044F80C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8044F810  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8044F814  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8044F818  4B FE 1D D1 */	bl func_804315E8
/* 8044F81C  D0 3E 05 B4 */	stfs f1, 0x5b4(r30)
/* 8044F820  48 00 00 F0 */	b lbl_8044F910
lbl_8044F824:
/* 8044F824  4B C0 D5 09 */	bl fqrand2
/* 8044F828  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8044F82C  3C 00 43 30 */	lis r0, 0x4330
/* 8044F830  38 A3 42 44 */	addi r5, r3, data_80644244@l /* 0x80644244@l */
/* 8044F834  3C 80 80 64 */	lis r4, lit_840@ha /* 0x806442D8@ha */
/* 8044F838  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044F83C  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044F840  38 A3 42 98 */	addi r5, r3, lit_588@l /* 0x80644298@l */
/* 8044F844  90 01 00 68 */	stw r0, 0x68(r1)
/* 8044F848  EC 20 00 72 */	fmuls f1, f0, f1
/* 8044F84C  C0 04 42 D8 */	lfs f0, lit_840@l(r4)  /* 0x806442D8@l */
/* 8044F850  C0 85 00 00 */	lfs f4, 0(r5)
/* 8044F854  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044F858  38 C3 42 48 */	addi r6, r3, lit_468@l /* 0x80644248@l */
/* 8044F85C  38 E0 00 00 */	li r7, 0
/* 8044F860  EC 00 08 2A */	fadds f0, f0, f1
/* 8044F864  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044F868  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8044F86C  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8044F870  3C A0 80 64 */	lis r5, lit_555@ha /* 0x80644278@ha */
/* 8044F874  EC 44 00 32 */	fmuls f2, f4, f0
/* 8044F878  C0 06 00 00 */	lfs f0, 0(r6)
/* 8044F87C  FC 60 10 1E */	fctiwz f3, f2
/* 8044F880  C0 45 42 78 */	lfs f2, lit_555@l(r5)  /* 0x80644278@l */
/* 8044F884  D8 61 00 70 */	stfd f3, 0x70(r1)
/* 8044F888  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8044F88C  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 8044F890  B0 FE 06 34 */	sth r7, 0x634(r30)
/* 8044F894  B0 FE 06 40 */	sth r7, 0x640(r30)
/* 8044F898  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 8044F89C  80 64 61 38 */	lwz r3, debug_mode@l(r4)  /* 0x81166138@l */
/* 8044F8A0  A8 03 1B A4 */	lha r0, 0x1ba4(r3)
/* 8044F8A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044F8A8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8044F8AC  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8044F8B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044F8B4  EC 02 00 2A */	fadds f0, f2, f0
/* 8044F8B8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8044F8BC  FC 00 00 1E */	fctiwz f0, f0
/* 8044F8C0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8044F8C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8044F8C8  B0 1E 06 32 */	sth r0, 0x632(r30)
/* 8044F8CC  B0 FE 06 36 */	sth r7, 0x636(r30)
/* 8044F8D0  48 00 00 40 */	b lbl_8044F910
lbl_8044F8D4:
/* 8044F8D4  3C 60 80 64 */	lis r3, lit_6801@ha /* 0x8064443C@ha */
/* 8044F8D8  C0 03 44 3C */	lfs f0, lit_6801@l(r3)  /* 0x8064443C@l */
/* 8044F8DC  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8044F8E0  4B C0 D4 4D */	bl fqrand2
/* 8044F8E4  3C 80 80 64 */	lis r4, lit_557@ha /* 0x80644280@ha */
/* 8044F8E8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044F8EC  C0 44 42 80 */	lfs f2, lit_557@l(r4)  /* 0x80644280@l */
/* 8044F8F0  38 00 00 00 */	li r0, 0
/* 8044F8F4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044F8F8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044F8FC  D0 3E 05 F4 */	stfs f1, 0x5f4(r30)
/* 8044F900  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 8044F904  B0 1E 06 34 */	sth r0, 0x634(r30)
/* 8044F908  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8044F90C  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
lbl_8044F910:
/* 8044F910  4B C0 D3 E5 */	bl fqrand
/* 8044F914  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8044F918  3C 00 43 30 */	lis r0, 0x4330
/* 8044F91C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8044F920  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044F924  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044F928  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044F92C  90 61 00 74 */	stw r3, 0x74(r1)
/* 8044F930  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044F934  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8044F938  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044F93C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044F940  FC 00 00 1E */	fctiwz f0, f0
/* 8044F944  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8044F948  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8044F94C  7C 00 1A 14 */	add r0, r0, r3
/* 8044F950  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_8044F954:
/* 8044F954  7F C3 F3 78 */	mr r3, r30
/* 8044F958  7F E4 FB 78 */	mr r4, r31
/* 8044F95C  4B FE 63 35 */	bl Museum_Fish_BGCheck
/* 8044F960  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8044F964  39 61 00 90 */	addi r11, r1, 0x90
/* 8044F968  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8044F96C  4B C4 B5 B5 */	bl func_8009AF20
/* 8044F970  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8044F974  7C 08 03 A6 */	mtlr r0
/* 8044F978  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8044F97C  4E 80 00 20 */	blr 
