lbl_80461758:
/* 80461758  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046175C  7C 08 02 A6 */	mflr r0
/* 80461760  90 01 00 34 */	stw r0, 0x34(r1)
/* 80461764  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80461768  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8046176C  7C 7E 1B 78 */	mr r30, r3
/* 80461770  4B BF B5 5D */	bl func_8005CCCC
/* 80461774  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 80461778  7C 7F 07 34 */	extsh r31, r3
/* 8046177C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80461780  7F E3 FB 78 */	mr r3, r31
/* 80461784  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80461788  90 A1 00 08 */	stw r5, 8(r1)
/* 8046178C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80461790  90 01 00 10 */	stw r0, 0x10(r1)
/* 80461794  4B F5 93 5D */	bl sin_s
/* 80461798  3C 60 80 64 */	lis r3, lit_581@ha /* 0x8064461C@ha */
/* 8046179C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804617A0  38 83 46 1C */	addi r4, r3, lit_581@l /* 0x8064461C@l */
/* 804617A4  7F E3 FB 78 */	mr r3, r31
/* 804617A8  C0 44 00 00 */	lfs f2, 0(r4)
/* 804617AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 804617B0  EC 00 08 2A */	fadds f0, f0, f1
/* 804617B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804617B8  4B F5 92 E5 */	bl cos_s
/* 804617BC  3C 80 80 64 */	lis r4, lit_581@ha /* 0x8064461C@ha */
/* 804617C0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804617C4  38 A4 46 1C */	addi r5, r4, lit_581@l /* 0x8064461C@l */
/* 804617C8  3C 60 80 64 */	lis r3, lit_1741@ha /* 0x806447A0@ha */
/* 804617CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804617D0  3C 80 80 46 */	lis r4, minsect_batta_normal_process@ha /* 0x80461918@ha */
/* 804617D4  38 04 19 18 */	addi r0, r4, minsect_batta_normal_process@l /* 0x80461918@l */
/* 804617D8  C0 61 00 08 */	lfs f3, 8(r1)
/* 804617DC  EC 20 00 72 */	fmuls f1, f0, f1
/* 804617E0  C0 03 47 A0 */	lfs f0, lit_1741@l(r3)  /* 0x806447A0@l */
/* 804617E4  90 1E 00 04 */	stw r0, 4(r30)
/* 804617E8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804617EC  EC 22 08 2A */	fadds f1, f2, f1
/* 804617F0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804617F4  40 80 00 10 */	bge lbl_80461804
/* 804617F8  38 00 40 00 */	li r0, 0x4000
/* 804617FC  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 80461800  48 00 00 F0 */	b lbl_804618F0
lbl_80461804:
/* 80461804  3C 60 80 64 */	lis r3, lit_1742@ha /* 0x806447A4@ha */
/* 80461808  C0 03 47 A4 */	lfs f0, lit_1742@l(r3)  /* 0x806447A4@l */
/* 8046180C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80461810  40 81 00 48 */	ble lbl_80461858
/* 80461814  38 00 C0 00 */	li r0, -16384
/* 80461818  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8046181C  4B BF B5 11 */	bl fqrand2
/* 80461820  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 80461824  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 80461828  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8046182C  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 80461830  EC 22 00 72 */	fmuls f1, f2, f1
/* 80461834  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 80461838  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046183C  FC 00 00 1E */	fctiwz f0, f0
/* 80461840  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80461844  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80461848  7C 63 07 34 */	extsh r3, r3
/* 8046184C  7C 00 1A 14 */	add r0, r0, r3
/* 80461850  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 80461854  48 00 00 9C */	b lbl_804618F0
lbl_80461858:
/* 80461858  3C 60 80 64 */	lis r3, lit_1743@ha /* 0x806447A8@ha */
/* 8046185C  C0 03 47 A8 */	lfs f0, lit_1743@l(r3)  /* 0x806447A8@l */
/* 80461860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461864  40 81 00 48 */	ble lbl_804618AC
/* 80461868  38 00 80 00 */	li r0, -32768
/* 8046186C  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 80461870  4B BF B4 BD */	bl fqrand2
/* 80461874  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 80461878  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046187C  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 80461880  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 80461884  EC 22 00 72 */	fmuls f1, f2, f1
/* 80461888  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8046188C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80461890  FC 00 00 1E */	fctiwz f0, f0
/* 80461894  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80461898  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8046189C  7C 63 07 34 */	extsh r3, r3
/* 804618A0  7C 00 1A 14 */	add r0, r0, r3
/* 804618A4  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 804618A8  48 00 00 48 */	b lbl_804618F0
lbl_804618AC:
/* 804618AC  3C 60 80 64 */	lis r3, lit_1744@ha /* 0x806447AC@ha */
/* 804618B0  C0 03 47 AC */	lfs f0, lit_1744@l(r3)  /* 0x806447AC@l */
/* 804618B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804618B8  40 80 00 34 */	bge lbl_804618EC
/* 804618BC  4B BF B4 71 */	bl fqrand2
/* 804618C0  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 804618C4  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 804618C8  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 804618CC  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 804618D0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804618D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804618D8  FC 00 00 1E */	fctiwz f0, f0
/* 804618DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804618E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804618E4  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 804618E8  48 00 00 08 */	b lbl_804618F0
lbl_804618EC:
/* 804618EC  B3 FE 00 70 */	sth r31, 0x70(r30)
lbl_804618F0:
/* 804618F0  38 60 FB 06 */	li r3, -1274
/* 804618F4  38 00 00 00 */	li r0, 0
/* 804618F8  B0 7E 00 78 */	sth r3, 0x78(r30)
/* 804618FC  B0 1E 00 7A */	sth r0, 0x7a(r30)
/* 80461900  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80461904  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80461908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046190C  7C 08 03 A6 */	mtlr r0
/* 80461910  38 21 00 30 */	addi r1, r1, 0x30
/* 80461914  4E 80 00 20 */	blr 
