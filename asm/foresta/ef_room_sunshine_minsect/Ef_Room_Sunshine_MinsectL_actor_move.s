lbl_804D11C4:
/* 804D11C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D11C8  7C 08 02 A6 */	mflr r0
/* 804D11CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D11D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D11D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D11D8  7C 7F 1B 78 */	mr r31, r3
/* 804D11DC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D11E0  3C 63 00 02 */	addis r3, r3, 2
/* 804D11E4  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D11E8  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D11EC  40 80 00 14 */	bge lbl_804D1200
/* 804D11F0  38 60 00 01 */	li r3, 1
/* 804D11F4  4B FF FD AD */	bl calc_scale_Ef_Room_Sunshine_Minsect
/* 804D11F8  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804D11FC  48 00 00 44 */	b lbl_804D1240
lbl_804D1200:
/* 804D1200  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804D1204  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804D1208  7C 04 00 00 */	cmpw r4, r0
/* 804D120C  41 80 00 28 */	blt lbl_804D1234
/* 804D1210  38 03 19 40 */	addi r0, r3, 0x1940
/* 804D1214  7C 04 00 00 */	cmpw r4, r0
/* 804D1218  40 80 00 1C */	bge lbl_804D1234
/* 804D121C  3C 84 FF FF */	addis r4, r4, 0xffff
/* 804D1220  38 60 00 00 */	li r3, 0
/* 804D1224  38 84 57 40 */	addi r4, r4, 0x5740
/* 804D1228  4B FF FD 79 */	bl calc_scale_Ef_Room_Sunshine_Minsect
/* 804D122C  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804D1230  48 00 00 10 */	b lbl_804D1240
lbl_804D1234:
/* 804D1234  3C 60 80 64 */	lis r3, lit_393@ha /* 0x80646420@ha */
/* 804D1238  C0 03 64 20 */	lfs f0, lit_393@l(r3)  /* 0x80646420@l */
/* 804D123C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804D1240:
/* 804D1240  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D1244  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 804D1248  3C 00 43 30 */	lis r0, 0x4330
/* 804D124C  3C 60 80 64 */	lis r3, lit_409@ha /* 0x80646444@ha */
/* 804D1250  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804D1254  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 804D1258  3C A0 80 64 */	lis r5, lit_394@ha /* 0x80646424@ha */
/* 804D125C  C8 23 64 44 */	lfd f1, lit_409@l(r3)  /* 0x80646444@l */
/* 804D1260  80 84 00 00 */	lwz r4, 0(r4)
/* 804D1264  90 01 00 08 */	stw r0, 8(r1)
/* 804D1268  A8 04 1B 94 */	lha r0, 0x1b94(r4)
/* 804D126C  C0 45 64 24 */	lfs f2, lit_394@l(r5)  /* 0x80646424@l */
/* 804D1270  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D1274  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 804D1278  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D127C  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D1280  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D1284  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D1288  EC 03 00 2A */	fadds f0, f3, f0
/* 804D128C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804D1290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1294  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D1298  7C 08 03 A6 */	mtlr r0
/* 804D129C  38 21 00 20 */	addi r1, r1, 0x20
/* 804D12A0  4E 80 00 20 */	blr 
