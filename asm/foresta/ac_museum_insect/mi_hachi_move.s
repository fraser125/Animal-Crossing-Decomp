lbl_804646AC:
/* 804646AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804646B0  7C 08 02 A6 */	mflr r0
/* 804646B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804646B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804646BC  7C 7F 1B 78 */	mr r31, r3
/* 804646C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804646C4  7C 9E 23 78 */	mr r30, r4
/* 804646C8  A8 63 00 6E */	lha r3, 0x6e(r3)
/* 804646CC  38 03 FF FF */	addi r0, r3, -1
/* 804646D0  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804646D4  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 804646D8  2C 00 00 00 */	cmpwi r0, 0
/* 804646DC  40 80 00 90 */	bge lbl_8046476C
/* 804646E0  4B BF 86 15 */	bl fqrand
/* 804646E4  3C 60 80 64 */	lis r3, lit_584@ha /* 0x8064462C@ha */
/* 804646E8  C0 03 46 2C */	lfs f0, lit_584@l(r3)  /* 0x8064462C@l */
/* 804646EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804646F0  41 81 00 1C */	bgt lbl_8046470C
/* 804646F4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804646F8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804646FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80464700  A8 03 16 96 */	lha r0, 0x1696(r3)
/* 80464704  2C 00 00 00 */	cmpwi r0, 0
/* 80464708  41 82 00 40 */	beq lbl_80464748
lbl_8046470C:
/* 8046470C  4B BF 85 E9 */	bl fqrand
/* 80464710  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80464714  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 80464718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046471C  40 81 00 18 */	ble lbl_80464734
/* 80464720  7F E3 FB 78 */	mr r3, r31
/* 80464724  7F C5 F3 78 */	mr r5, r30
/* 80464728  38 80 00 00 */	li r4, 0
/* 8046472C  48 00 03 21 */	bl mi_hachi_setupAction
/* 80464730  48 00 03 04 */	b lbl_80464A34
lbl_80464734:
/* 80464734  7F E3 FB 78 */	mr r3, r31
/* 80464738  7F C5 F3 78 */	mr r5, r30
/* 8046473C  38 80 00 02 */	li r4, 2
/* 80464740  48 00 03 0D */	bl mi_hachi_setupAction
/* 80464744  48 00 02 F0 */	b lbl_80464A34
lbl_80464748:
/* 80464748  4B BF 85 AD */	bl fqrand
/* 8046474C  3C 60 80 64 */	lis r3, lit_2418@ha /* 0x806447CC@ha */
/* 80464750  C0 03 47 CC */	lfs f0, lit_2418@l(r3)  /* 0x806447CC@l */
/* 80464754  EC 00 00 72 */	fmuls f0, f0, f1
/* 80464758  FC 00 00 1E */	fctiwz f0, f0
/* 8046475C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80464760  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80464764  38 03 01 68 */	addi r0, r3, 0x168
/* 80464768  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_8046476C:
/* 8046476C  A8 7F 00 70 */	lha r3, 0x70(r31)
/* 80464770  7C 60 07 35 */	extsh. r0, r3
/* 80464774  40 82 02 A0 */	bne lbl_80464A14
/* 80464778  38 00 F8 E4 */	li r0, -1820
/* 8046477C  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 80464780  4B BF 85 75 */	bl fqrand
/* 80464784  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80464788  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046478C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80464790  40 81 00 50 */	ble lbl_804647E0
/* 80464794  4B BF 85 61 */	bl fqrand
/* 80464798  3C 60 80 64 */	lis r3, lit_581@ha /* 0x8064461C@ha */
/* 8046479C  3C 80 80 64 */	lis r4, lit_586@ha /* 0x80644634@ha */
/* 804647A0  38 A3 46 1C */	addi r5, r3, lit_581@l /* 0x8064461C@l */
/* 804647A4  C0 44 46 34 */	lfs f2, lit_586@l(r4)  /* 0x80644634@l */
/* 804647A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804647AC  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 804647B0  A8 1F 00 74 */	lha r0, 0x74(r31)
/* 804647B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 804647B8  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 804647BC  EC 22 08 2A */	fadds f1, f2, f1
/* 804647C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804647C4  FC 00 00 1E */	fctiwz f0, f0
/* 804647C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804647CC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804647D0  7C 63 07 34 */	extsh r3, r3
/* 804647D4  7C 00 1A 14 */	add r0, r0, r3
/* 804647D8  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804647DC  48 00 00 4C */	b lbl_80464828
lbl_804647E0:
/* 804647E0  4B BF 85 15 */	bl fqrand
/* 804647E4  3C 60 80 64 */	lis r3, lit_581@ha /* 0x8064461C@ha */
/* 804647E8  3C 80 80 64 */	lis r4, lit_586@ha /* 0x80644634@ha */
/* 804647EC  38 A3 46 1C */	addi r5, r3, lit_581@l /* 0x8064461C@l */
/* 804647F0  C0 44 46 34 */	lfs f2, lit_586@l(r4)  /* 0x80644634@l */
/* 804647F4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804647F8  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 804647FC  A8 1F 00 74 */	lha r0, 0x74(r31)
/* 80464800  EC 20 00 72 */	fmuls f1, f0, f1
/* 80464804  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 80464808  EC 22 08 2A */	fadds f1, f2, f1
/* 8046480C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80464810  FC 00 00 1E */	fctiwz f0, f0
/* 80464814  D8 01 00 08 */	stfd f0, 8(r1)
/* 80464818  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046481C  7C 63 07 34 */	extsh r3, r3
/* 80464820  7C 03 00 50 */	subf r0, r3, r0
/* 80464824  B0 1F 00 74 */	sth r0, 0x74(r31)
lbl_80464828:
/* 80464828  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046482C  3C 00 43 30 */	lis r0, 0x4330
/* 80464830  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80464834  3C A0 80 64 */	lis r5, lit_678@ha /* 0x80644654@ha */
/* 80464838  80 84 00 00 */	lwz r4, 0(r4)
/* 8046483C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80464840  3C C0 80 64 */	lis r6, lit_511@ha /* 0x8064460C@ha */
/* 80464844  90 01 00 08 */	stw r0, 8(r1)
/* 80464848  A8 84 16 A4 */	lha r4, 0x16a4(r4)
/* 8046484C  C8 23 46 3C */	lfd f1, lit_589@l(r3)  /* 0x8064463C@l */
/* 80464850  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80464854  C0 45 46 54 */	lfs f2, lit_678@l(r5)  /* 0x80644654@l */
/* 80464858  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046485C  C0 66 46 0C */	lfs f3, lit_511@l(r6)  /* 0x8064460C@l */
/* 80464860  C8 01 00 08 */	lfd f0, 8(r1)
/* 80464864  EC 00 08 28 */	fsubs f0, f0, f1
/* 80464868  EC 02 00 32 */	fmuls f0, f2, f0
/* 8046486C  EC 03 00 2A */	fadds f0, f3, f0
/* 80464870  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80464874  A8 7F 00 74 */	lha r3, 0x74(r31)
/* 80464878  4B F5 62 79 */	bl sin_s
/* 8046487C  3C 80 80 64 */	lis r4, lit_2454@ha /* 0x806447D0@ha */
/* 80464880  3C 60 80 64 */	lis r3, lit_2456@ha /* 0x806447D8@ha */
/* 80464884  38 A4 47 D0 */	addi r5, r4, lit_2454@l /* 0x806447D0@l */
/* 80464888  C0 03 47 D8 */	lfs f0, lit_2456@l(r3)  /* 0x806447D8@l */
/* 8046488C  C0 45 00 00 */	lfs f2, 0(r5)
/* 80464890  3C 80 80 64 */	lis r4, lit_2455@ha /* 0x806447D4@ha */
/* 80464894  A8 7F 00 76 */	lha r3, 0x76(r31)
/* 80464898  EC 42 00 72 */	fmuls f2, f2, f1
/* 8046489C  C0 24 47 D4 */	lfs f1, lit_2455@l(r4)  /* 0x806447D4@l */
/* 804648A0  EC 02 00 24 */	fdivs f0, f2, f0
/* 804648A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804648A8  FC 00 00 1E */	fctiwz f0, f0
/* 804648AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804648B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804648B4  7C 00 07 34 */	extsh r0, r0
/* 804648B8  7C 03 02 14 */	add r0, r3, r0
/* 804648BC  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804648C0  A8 7F 00 74 */	lha r3, 0x74(r31)
/* 804648C4  4B F5 61 D9 */	bl cos_s
/* 804648C8  3C 80 80 64 */	lis r4, lit_506@ha /* 0x806445E8@ha */
/* 804648CC  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 804648D0  C0 64 45 E8 */	lfs f3, lit_506@l(r4)  /* 0x806445E8@l */
/* 804648D4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 804648D8  EC 23 00 72 */	fmuls f1, f3, f1
/* 804648DC  C0 03 46 34 */	lfs f0, lit_586@l(r3)  /* 0x80644634@l */
/* 804648E0  EC 22 08 2A */	fadds f1, f2, f1
/* 804648E4  D0 3F 00 48 */	stfs f1, 0x48(r31)
/* 804648E8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804648EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804648F0  40 81 00 4C */	ble lbl_8046493C
/* 804648F4  4B BF 84 39 */	bl fqrand2
/* 804648F8  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 804648FC  3C 80 80 64 */	lis r4, lit_505@ha /* 0x806445E4@ha */
/* 80464900  38 A3 46 48 */	addi r5, r3, lit_675@l /* 0x80644648@l */
/* 80464904  C0 44 45 E4 */	lfs f2, lit_505@l(r4)  /* 0x806445E4@l */
/* 80464908  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046490C  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 80464910  EC 20 00 72 */	fmuls f1, f0, f1
/* 80464914  C0 03 46 34 */	lfs f0, lit_586@l(r3)  /* 0x80644634@l */
/* 80464918  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046491C  FC 20 08 1E */	fctiwz f1, f1
/* 80464920  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80464924  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80464928  3C 63 00 01 */	addis r3, r3, 1
/* 8046492C  38 03 80 00 */	addi r0, r3, -32768
/* 80464930  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 80464934  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80464938  48 00 00 50 */	b lbl_80464988
lbl_8046493C:
/* 8046493C  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x806447DC@ha */
/* 80464940  C0 03 47 DC */	lfs f0, lit_2457@l(r3)  /* 0x806447DC@l */
/* 80464944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80464948  40 80 00 40 */	bge lbl_80464988
/* 8046494C  4B BF 83 E1 */	bl fqrand2
/* 80464950  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 80464954  3C 80 80 64 */	lis r4, lit_505@ha /* 0x806445E4@ha */
/* 80464958  38 A3 46 48 */	addi r5, r3, lit_675@l /* 0x80644648@l */
/* 8046495C  C0 44 45 E4 */	lfs f2, lit_505@l(r4)  /* 0x806445E4@l */
/* 80464960  C0 05 00 00 */	lfs f0, 0(r5)
/* 80464964  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x806447DC@ha */
/* 80464968  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046496C  C0 03 47 DC */	lfs f0, lit_2457@l(r3)  /* 0x806447DC@l */
/* 80464970  EC 22 00 72 */	fmuls f1, f2, f1
/* 80464974  FC 20 08 1E */	fctiwz f1, f1
/* 80464978  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8046497C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464980  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 80464984  D0 1F 00 48 */	stfs f0, 0x48(r31)
lbl_80464988:
/* 80464988  A8 1F 00 76 */	lha r0, 0x76(r31)
/* 8046498C  2C 00 15 55 */	cmpwi r0, 0x1555
/* 80464990  40 81 00 40 */	ble lbl_804649D0
/* 80464994  4B BF 83 99 */	bl fqrand2
/* 80464998  3C 80 80 64 */	lis r4, lit_675@ha /* 0x80644648@ha */
/* 8046499C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 804649A0  C0 44 46 48 */	lfs f2, lit_675@l(r4)  /* 0x80644648@l */
/* 804649A4  38 00 15 55 */	li r0, 0x1555
/* 804649A8  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 804649AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 804649B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804649B4  FC 00 00 1E */	fctiwz f0, f0
/* 804649B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804649BC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804649C0  38 63 40 00 */	addi r3, r3, 0x4000
/* 804649C4  B0 7F 00 74 */	sth r3, 0x74(r31)
/* 804649C8  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804649CC  48 00 00 68 */	b lbl_80464A34
lbl_804649D0:
/* 804649D0  2C 00 EA AB */	cmpwi r0, -5461
/* 804649D4  40 80 00 60 */	bge lbl_80464A34
/* 804649D8  4B BF 83 55 */	bl fqrand2
/* 804649DC  3C 80 80 64 */	lis r4, lit_675@ha /* 0x80644648@ha */
/* 804649E0  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 804649E4  C0 44 46 48 */	lfs f2, lit_675@l(r4)  /* 0x80644648@l */
/* 804649E8  38 00 EA AB */	li r0, -5461
/* 804649EC  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 804649F0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804649F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804649F8  FC 00 00 1E */	fctiwz f0, f0
/* 804649FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80464A00  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80464A04  38 63 C0 00 */	addi r3, r3, -16384
/* 80464A08  B0 7F 00 74 */	sth r3, 0x74(r31)
/* 80464A0C  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 80464A10  48 00 00 24 */	b lbl_80464A34
lbl_80464A14:
/* 80464A14  A8 1F 00 72 */	lha r0, 0x72(r31)
/* 80464A18  7C 03 00 00 */	cmpw r3, r0
/* 80464A1C  40 82 00 18 */	bne lbl_80464A34
/* 80464A20  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80464A24  38 00 00 00 */	li r0, 0
/* 80464A28  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 80464A2C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80464A30  D0 1F 00 58 */	stfs f0, 0x58(r31)
lbl_80464A34:
/* 80464A34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80464A38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80464A3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80464A40  7C 08 03 A6 */	mtlr r0
/* 80464A44  38 21 00 20 */	addi r1, r1, 0x20
/* 80464A48  4E 80 00 20 */	blr 