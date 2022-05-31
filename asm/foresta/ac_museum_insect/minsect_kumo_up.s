lbl_80468F6C:
/* 80468F6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80468F70  7C 08 02 A6 */	mflr r0
/* 80468F74  3C C0 80 64 */	lis r6, kumo_top_pos@ha /* 0x80644874@ha */
/* 80468F78  3C A0 80 64 */	lis r5, lit_586@ha /* 0x80644634@ha */
/* 80468F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80468F80  38 C6 48 74 */	addi r6, r6, kumo_top_pos@l /* 0x80644874@l */
/* 80468F84  C0 26 00 04 */	lfs f1, 4(r6)
/* 80468F88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80468F8C  7C 7F 1B 78 */	mr r31, r3
/* 80468F90  C0 05 46 34 */	lfs f0, lit_586@l(r5)  /* 0x80644634@l */
/* 80468F94  A8 E3 00 6E */	lha r7, 0x6e(r3)
/* 80468F98  EC 21 00 28 */	fsubs f1, f1, f0
/* 80468F9C  38 07 FF FF */	addi r0, r7, -1
/* 80468FA0  B0 03 00 6E */	sth r0, 0x6e(r3)
/* 80468FA4  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 80468FA8  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 80468FAC  EC 43 10 2A */	fadds f2, f3, f2
/* 80468FB0  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80468FB4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80468FB8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80468FBC  40 81 00 18 */	ble lbl_80468FD4
/* 80468FC0  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80468FC4  7C 85 23 78 */	mr r5, r4
/* 80468FC8  38 80 00 00 */	li r4, 0
/* 80468FCC  48 00 0E FD */	bl minsect_kumo_setupAction
/* 80468FD0  48 00 00 48 */	b lbl_80469018
lbl_80468FD4:
/* 80468FD4  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80468FD8  2C 00 00 00 */	cmpwi r0, 0
/* 80468FDC  40 80 00 3C */	bge lbl_80469018
/* 80468FE0  4B BF 3D 15 */	bl fqrand
/* 80468FE4  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 80468FE8  3C 60 80 64 */	lis r3, lit_3259@ha /* 0x80644830@ha */
/* 80468FEC  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 80468FF0  C0 03 48 30 */	lfs f0, lit_3259@l(r3)  /* 0x80644830@l */
/* 80468FF4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80468FF8  FC 20 08 1E */	fctiwz f1, f1
/* 80468FFC  D8 21 00 08 */	stfd f1, 8(r1)
/* 80469000  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80469004  38 03 00 32 */	addi r0, r3, 0x32
/* 80469008  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046900C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80469010  A8 1F 00 78 */	lha r0, 0x78(r31)
/* 80469014  B0 1F 00 7E */	sth r0, 0x7e(r31)
lbl_80469018:
/* 80469018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046901C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80469020  7C 08 03 A6 */	mtlr r0
/* 80469024  38 21 00 20 */	addi r1, r1, 0x20
/* 80469028  4E 80 00 20 */	blr 
