lbl_804A11F4:
/* 804A11F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A11F8  7C 08 02 A6 */	mflr r0
/* 804A11FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A1200  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804A1204  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804A1208  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804A120C  3D 00 81 16 */	lis r8, debug_mode@ha /* 0x81166138@ha */
/* 804A1210  7C 7F 1B 78 */	mr r31, r3
/* 804A1214  80 68 61 38 */	lwz r3, debug_mode@l(r8)  /* 0x81166138@l */
/* 804A1218  3D 20 80 64 */	lis r9, data_80645C2C@ha /* 0x80645C2C@ha */
/* 804A121C  C3 E9 5C 2C */	lfs f31, data_80645C2C@l(r9)  /* 0x80645C2C@l */
/* 804A1220  7C 89 23 78 */	mr r9, r4
/* 804A1224  A8 63 16 9E */	lha r3, 0x169e(r3)
/* 804A1228  7C C8 33 78 */	mr r8, r6
/* 804A122C  7C 60 07 35 */	extsh. r0, r3
/* 804A1230  41 82 00 24 */	beq lbl_804A1254
/* 804A1234  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804A1238  3C 00 43 30 */	lis r0, 0x4330
/* 804A123C  90 61 00 34 */	stw r3, 0x34(r1)
/* 804A1240  3C 80 80 64 */	lis r4, lit_487@ha /* 0x80645C3C@ha */
/* 804A1244  C8 24 5C 3C */	lfd f1, lit_487@l(r4)  /* 0x80645C3C@l */
/* 804A1248  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A124C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804A1250  EF E0 08 28 */	fsubs f31, f0, f1
lbl_804A1254:
/* 804A1254  7C A4 2B 78 */	mr r4, r5
/* 804A1258  7D 25 4B 78 */	mr r5, r9
/* 804A125C  7C E6 3B 78 */	mr r6, r7
/* 804A1260  7D 07 43 78 */	mr r7, r8
/* 804A1264  38 61 00 24 */	addi r3, r1, 0x24
/* 804A1268  4B F0 4A 8D */	bl mFI_BkandUtNum2CenterWpos
/* 804A126C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804A1270  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645C34@ha */
/* 804A1274  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 804A1278  38 83 5C 34 */	addi r4, r3, lit_484@l /* 0x80645C34@l */
/* 804A127C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804A1280  38 61 00 0C */	addi r3, r1, 0xc
/* 804A1284  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804A1288  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A128C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804A1290  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A1294  4B EE E7 05 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804A1298  3C 80 80 64 */	lis r4, lit_483@ha /* 0x80645C30@ha */
/* 804A129C  38 7F 20 0C */	addi r3, r31, 0x200c
/* 804A12A0  38 A4 5C 30 */	addi r5, r4, lit_483@l /* 0x80645C30@l */
/* 804A12A4  38 81 00 24 */	addi r4, r1, 0x24
/* 804A12A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A12AC  38 A1 00 18 */	addi r5, r1, 0x18
/* 804A12B0  38 C1 00 08 */	addi r6, r1, 8
/* 804A12B4  EC 00 08 2A */	fadds f0, f0, f1
/* 804A12B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A12BC  4B F5 01 85 */	bl func_803F1440
/* 804A12C0  FC 00 F8 50 */	fneg f0, f31
/* 804A12C4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804A12C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A12CC  40 81 00 68 */	ble lbl_804A1334
/* 804A12D0  3C 60 80 64 */	lis r3, lit_485@ha /* 0x80645C38@ha */
/* 804A12D4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A12D8  C0 43 5C 38 */	lfs f2, lit_485@l(r3)  /* 0x80645C38@l */
/* 804A12DC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804A12E0  40 80 00 08 */	bge lbl_804A12E8
/* 804A12E4  48 00 00 08 */	b lbl_804A12EC
lbl_804A12E8:
/* 804A12E8  EC 42 00 24 */	fdivs f2, f2, f0
lbl_804A12EC:
/* 804A12EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804A12F0  3C 60 80 64 */	lis r3, lit_485@ha /* 0x80645C38@ha */
/* 804A12F4  C0 23 5C 38 */	lfs f1, lit_485@l(r3)  /* 0x80645C38@l */
/* 804A12F8  FC 00 02 10 */	fabs f0, f0
/* 804A12FC  FC 00 00 18 */	frsp f0, f0
/* 804A1300  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804A1304  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A1308  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A130C  40 80 00 28 */	bge lbl_804A1334
/* 804A1310  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A1314  FC 00 02 10 */	fabs f0, f0
/* 804A1318  FC 00 00 18 */	frsp f0, f0
/* 804A131C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804A1320  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A1324  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A1328  40 80 00 0C */	bge lbl_804A1334
/* 804A132C  38 60 00 01 */	li r3, 1
/* 804A1330  48 00 00 08 */	b lbl_804A1338
lbl_804A1334:
/* 804A1334  38 60 00 00 */	li r3, 0
lbl_804A1338:
/* 804A1338  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804A133C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A1340  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804A1344  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804A1348  7C 08 03 A6 */	mtlr r0
/* 804A134C  38 21 00 50 */	addi r1, r1, 0x50
/* 804A1350  4E 80 00 20 */	blr 
