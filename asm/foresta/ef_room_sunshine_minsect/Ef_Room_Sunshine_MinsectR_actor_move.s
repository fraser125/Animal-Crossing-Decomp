lbl_804D12A4:
/* 804D12A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D12A8  7C 08 02 A6 */	mflr r0
/* 804D12AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D12B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D12B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D12B8  7C 7F 1B 78 */	mr r31, r3
/* 804D12BC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D12C0  3C 63 00 02 */	addis r3, r3, 2
/* 804D12C4  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D12C8  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D12CC  41 80 00 2C */	blt lbl_804D12F8
/* 804D12D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804D12D4  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804D12D8  7C 04 00 00 */	cmpw r4, r0
/* 804D12DC  40 80 00 1C */	bge lbl_804D12F8
/* 804D12E0  7C 84 00 50 */	subf r4, r4, r0
/* 804D12E4  38 60 00 00 */	li r3, 0
/* 804D12E8  4B FF FC B9 */	bl calc_scale_Ef_Room_Sunshine_Minsect
/* 804D12EC  FC 00 08 50 */	fneg f0, f1
/* 804D12F0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D12F4  48 00 00 3C */	b lbl_804D1330
lbl_804D12F8:
/* 804D12F8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D12FC  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D1300  7C 04 00 00 */	cmpw r4, r0
/* 804D1304  41 80 00 20 */	blt lbl_804D1324
/* 804D1308  38 03 51 80 */	addi r0, r3, 0x5180
/* 804D130C  38 60 00 01 */	li r3, 1
/* 804D1310  7C 84 00 50 */	subf r4, r4, r0
/* 804D1314  4B FF FC 8D */	bl calc_scale_Ef_Room_Sunshine_Minsect
/* 804D1318  FC 00 08 50 */	fneg f0, f1
/* 804D131C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D1320  48 00 00 10 */	b lbl_804D1330
lbl_804D1324:
/* 804D1324  3C 60 80 64 */	lis r3, lit_393@ha /* 0x80646420@ha */
/* 804D1328  C0 03 64 20 */	lfs f0, lit_393@l(r3)  /* 0x80646420@l */
/* 804D132C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804D1330:
/* 804D1330  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D1334  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 804D1338  3C 00 43 30 */	lis r0, 0x4330
/* 804D133C  3C 60 80 64 */	lis r3, lit_409@ha /* 0x80646444@ha */
/* 804D1340  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804D1344  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 804D1348  3C A0 80 64 */	lis r5, lit_394@ha /* 0x80646424@ha */
/* 804D134C  C8 23 64 44 */	lfd f1, lit_409@l(r3)  /* 0x80646444@l */
/* 804D1350  80 84 00 00 */	lwz r4, 0(r4)
/* 804D1354  90 01 00 08 */	stw r0, 8(r1)
/* 804D1358  A8 04 1B 94 */	lha r0, 0x1b94(r4)
/* 804D135C  C0 45 64 24 */	lfs f2, lit_394@l(r5)  /* 0x80646424@l */
/* 804D1360  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D1364  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 804D1368  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D136C  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D1370  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D1374  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D1378  EC 03 00 2A */	fadds f0, f3, f0
/* 804D137C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804D1380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1384  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D1388  7C 08 03 A6 */	mtlr r0
/* 804D138C  38 21 00 20 */	addi r1, r1, 0x20
/* 804D1390  4E 80 00 20 */	blr 
