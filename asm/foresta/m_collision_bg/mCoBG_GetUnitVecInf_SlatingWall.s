lbl_8038B8A0:
/* 8038B8A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038B8A4  7C 08 02 A6 */	mflr r0
/* 8038B8A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038B8AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8038B8B0  4B D0 F6 21 */	bl func_8009AED0
/* 8038B8B4  80 04 00 20 */	lwz r0, 0x20(r4)
/* 8038B8B8  3D 00 43 30 */	lis r8, 0x4330
/* 8038B8BC  7C 7D 1B 78 */	mr r29, r3
/* 8038B8C0  7C 9E 23 78 */	mr r30, r4
/* 8038B8C4  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8038B8C8  6C 09 80 00 */	xoris r9, r0, 0x8000
/* 8038B8CC  91 21 00 0C */	stw r9, 0xc(r1)
/* 8038B8D0  3D 40 80 64 */	lis r10, lit_793@ha /* 0x806419DC@ha */
/* 8038B8D4  6C 87 80 00 */	xoris r7, r4, 0x8000
/* 8038B8D8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8038B8DC  91 01 00 08 */	stw r8, 8(r1)
/* 8038B8E0  2C 00 00 05 */	cmpwi r0, 5
/* 8038B8E4  C8 4A 19 DC */	lfd f2, lit_793@l(r10)  /* 0x806419DC@l */
/* 8038B8E8  38 9D 00 08 */	addi r4, r29, 8
/* 8038B8EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8038B8F0  3B 9D 00 20 */	addi r28, r29, 0x20
/* 8038B8F4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8038B8F8  3B FD 00 10 */	addi r31, r29, 0x10
/* 8038B8FC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8038B900  91 01 00 10 */	stw r8, 0x10(r1)
/* 8038B904  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8038B908  98 A3 00 2A */	stb r5, 0x2a(r3)
/* 8038B90C  EC 40 10 28 */	fsubs f2, f0, f2
/* 8038B910  41 82 00 9C */	beq lbl_8038B9AC
/* 8038B914  40 80 01 2C */	bge lbl_8038BA40
/* 8038B918  2C 00 00 04 */	cmpwi r0, 4
/* 8038B91C  40 80 00 08 */	bge lbl_8038B924
/* 8038B920  48 00 01 20 */	b lbl_8038BA40
lbl_8038B924:
/* 8038B924  38 A0 00 04 */	li r5, 4
/* 8038B928  4B FF FA 69 */	bl func_8038B390
/* 8038B92C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038B930  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8038B934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038B938  40 81 00 3C */	ble lbl_8038B974
/* 8038B93C  3C 80 80 64 */	lis r4, lit_1128@ha /* 0x80641A30@ha */
/* 8038B940  7F 83 E3 78 */	mr r3, r28
/* 8038B944  C0 24 1A 30 */	lfs f1, lit_1128@l(r4)  /* 0x80641A30@l */
/* 8038B948  FC 40 08 90 */	fmr f2, f1
/* 8038B94C  4B FF A0 B9 */	bl mCoBG_SetXZ
/* 8038B950  38 00 20 00 */	li r0, 0x2000
/* 8038B954  7F E3 FB 78 */	mr r3, r31
/* 8038B958  B0 1D 00 28 */	sth r0, 0x28(r29)
/* 8038B95C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 8038B960  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038B964  FC 80 18 90 */	fmr f4, f3
/* 8038B968  FC 40 08 90 */	fmr f2, f1
/* 8038B96C  4B FF FF 21 */	bl mCoBG_SetTopBtm
/* 8038B970  48 00 00 D0 */	b lbl_8038BA40
lbl_8038B974:
/* 8038B974  3C 80 80 64 */	lis r4, lit_1129@ha /* 0x80641A34@ha */
/* 8038B978  7F 83 E3 78 */	mr r3, r28
/* 8038B97C  C0 24 1A 34 */	lfs f1, lit_1129@l(r4)  /* 0x80641A34@l */
/* 8038B980  FC 40 08 90 */	fmr f2, f1
/* 8038B984  4B FF A0 81 */	bl mCoBG_SetXZ
/* 8038B988  38 00 A0 00 */	li r0, -24576
/* 8038B98C  7F E3 FB 78 */	mr r3, r31
/* 8038B990  B0 1D 00 28 */	sth r0, 0x28(r29)
/* 8038B994  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8038B998  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8038B99C  FC 80 18 90 */	fmr f4, f3
/* 8038B9A0  FC 40 08 90 */	fmr f2, f1
/* 8038B9A4  4B FF FE E9 */	bl mCoBG_SetTopBtm
/* 8038B9A8  48 00 00 98 */	b lbl_8038BA40
lbl_8038B9AC:
/* 8038B9AC  38 A0 00 05 */	li r5, 5
/* 8038B9B0  4B FF F9 E1 */	bl func_8038B390
/* 8038B9B4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8038B9B8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8038B9BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038B9C0  40 81 00 44 */	ble lbl_8038BA04
/* 8038B9C4  3C 60 80 64 */	lis r3, lit_1128@ha /* 0x80641A30@ha */
/* 8038B9C8  3C 80 80 64 */	lis r4, lit_1129@ha /* 0x80641A34@ha */
/* 8038B9CC  38 A3 1A 30 */	addi r5, r3, lit_1128@l /* 0x80641A30@l */
/* 8038B9D0  C0 44 1A 34 */	lfs f2, lit_1129@l(r4)  /* 0x80641A34@l */
/* 8038B9D4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8038B9D8  7F 83 E3 78 */	mr r3, r28
/* 8038B9DC  4B FF A0 29 */	bl mCoBG_SetXZ
/* 8038B9E0  38 00 60 00 */	li r0, 0x6000
/* 8038B9E4  7F E3 FB 78 */	mr r3, r31
/* 8038B9E8  B0 1D 00 28 */	sth r0, 0x28(r29)
/* 8038B9EC  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 8038B9F0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8038B9F4  FC 80 18 90 */	fmr f4, f3
/* 8038B9F8  FC 40 08 90 */	fmr f2, f1
/* 8038B9FC  4B FF FE 91 */	bl mCoBG_SetTopBtm
/* 8038BA00  48 00 00 40 */	b lbl_8038BA40
lbl_8038BA04:
/* 8038BA04  3C 60 80 64 */	lis r3, lit_1129@ha /* 0x80641A34@ha */
/* 8038BA08  3C 80 80 64 */	lis r4, lit_1128@ha /* 0x80641A30@ha */
/* 8038BA0C  38 A3 1A 34 */	addi r5, r3, lit_1129@l /* 0x80641A34@l */
/* 8038BA10  C0 44 1A 30 */	lfs f2, lit_1128@l(r4)  /* 0x80641A30@l */
/* 8038BA14  C0 25 00 00 */	lfs f1, 0(r5)
/* 8038BA18  7F 83 E3 78 */	mr r3, r28
/* 8038BA1C  4B FF 9F E9 */	bl mCoBG_SetXZ
/* 8038BA20  38 00 E0 00 */	li r0, -8192
/* 8038BA24  7F E3 FB 78 */	mr r3, r31
/* 8038BA28  B0 1D 00 28 */	sth r0, 0x28(r29)
/* 8038BA2C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8038BA30  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8038BA34  FC 80 18 90 */	fmr f4, f3
/* 8038BA38  FC 40 08 90 */	fmr f2, f1
/* 8038BA3C  4B FF FE 51 */	bl mCoBG_SetTopBtm
lbl_8038BA40:
/* 8038BA40  39 61 00 30 */	addi r11, r1, 0x30
/* 8038BA44  4B D0 F4 D9 */	bl func_8009AF1C
/* 8038BA48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038BA4C  7C 08 03 A6 */	mtlr r0
/* 8038BA50  38 21 00 30 */	addi r1, r1, 0x30
/* 8038BA54  4E 80 00 20 */	blr 
