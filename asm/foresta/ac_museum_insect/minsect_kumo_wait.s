lbl_80469CF8:
/* 80469CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80469CFC  7C 08 02 A6 */	mflr r0
/* 80469D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80469D04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80469D08  7C 7F 1B 78 */	mr r31, r3
/* 80469D0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80469D10  7C 9E 23 78 */	mr r30, r4
/* 80469D14  A8 63 00 6E */	lha r3, 0x6e(r3)
/* 80469D18  38 03 FF FF */	addi r0, r3, -1
/* 80469D1C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80469D20  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80469D24  2C 00 00 00 */	cmpwi r0, 0
/* 80469D28  40 80 00 B8 */	bge lbl_80469DE0
/* 80469D2C  3C 80 80 64 */	lis r4, kumo_top_pos@ha /* 0x80644874@ha */
/* 80469D30  3C 60 80 64 */	lis r3, lit_507@ha /* 0x806445EC@ha */
/* 80469D34  38 84 48 74 */	addi r4, r4, kumo_top_pos@l /* 0x80644874@l */
/* 80469D38  C0 03 45 EC */	lfs f0, lit_507@l(r3)  /* 0x806445EC@l */
/* 80469D3C  C0 24 00 04 */	lfs f1, 4(r4)
/* 80469D40  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80469D44  EC 01 00 28 */	fsubs f0, f1, f0
/* 80469D48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80469D4C  4C 41 13 82 */	cror 2, 1, 2
/* 80469D50  40 82 00 44 */	bne lbl_80469D94
/* 80469D54  4B BF 2F A1 */	bl fqrand
/* 80469D58  3C 60 80 64 */	lis r3, lit_584@ha /* 0x8064462C@ha */
/* 80469D5C  C0 03 46 2C */	lfs f0, lit_584@l(r3)  /* 0x8064462C@l */
/* 80469D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80469D64  41 81 00 1C */	bgt lbl_80469D80
/* 80469D68  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80469D6C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80469D70  80 63 00 00 */	lwz r3, 0(r3)
/* 80469D74  A8 03 16 BC */	lha r0, 0x16bc(r3)
/* 80469D78  2C 00 00 00 */	cmpwi r0, 0
/* 80469D7C  41 82 00 18 */	beq lbl_80469D94
lbl_80469D80:
/* 80469D80  7F E3 FB 78 */	mr r3, r31
/* 80469D84  7F C5 F3 78 */	mr r5, r30
/* 80469D88  38 80 00 03 */	li r4, 3
/* 80469D8C  48 00 01 3D */	bl minsect_kumo_setupAction
/* 80469D90  48 00 00 50 */	b lbl_80469DE0
lbl_80469D94:
/* 80469D94  4B BF 2F 61 */	bl fqrand
/* 80469D98  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80469D9C  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 80469DA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80469DA4  40 81 00 18 */	ble lbl_80469DBC
/* 80469DA8  7F E3 FB 78 */	mr r3, r31
/* 80469DAC  7F C5 F3 78 */	mr r5, r30
/* 80469DB0  38 80 00 01 */	li r4, 1
/* 80469DB4  48 00 01 15 */	bl minsect_kumo_setupAction
/* 80469DB8  48 00 00 28 */	b lbl_80469DE0
lbl_80469DBC:
/* 80469DBC  4B BF 2F 39 */	bl fqrand
/* 80469DC0  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80469DC4  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80469DC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80469DCC  FC 00 00 1E */	fctiwz f0, f0
/* 80469DD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80469DD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80469DD8  38 03 00 28 */	addi r0, r3, 0x28
/* 80469DDC  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_80469DE0:
/* 80469DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80469DE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80469DE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80469DEC  7C 08 03 A6 */	mtlr r0
/* 80469DF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80469DF4  4E 80 00 20 */	blr 
