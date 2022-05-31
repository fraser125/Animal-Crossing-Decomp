lbl_8050B5D4:
/* 8050B5D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050B5D8  7C 08 02 A6 */	mflr r0
/* 8050B5DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050B5E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8050B5E4  4B B8 F8 F1 */	bl func_8009AED4
/* 8050B5E8  7C 7D 1B 78 */	mr r29, r3
/* 8050B5EC  7C 9E 23 78 */	mr r30, r4
/* 8050B5F0  3B E0 00 03 */	li r31, 3
/* 8050B5F4  4B B5 17 01 */	bl fqrand
/* 8050B5F8  3C 80 80 65 */	lis r4, lit_510@ha /* 0x80648E10@ha */
/* 8050B5FC  38 60 00 64 */	li r3, 0x64
/* 8050B600  C0 44 8E 10 */	lfs f2, lit_510@l(r4)  /* 0x80648E10@l */
/* 8050B604  EC 02 00 72 */	fmuls f0, f2, f1
/* 8050B608  EC 02 00 2A */	fadds f0, f2, f0
/* 8050B60C  D0 1D 01 80 */	stfs f0, 0x180(r29)
/* 8050B610  80 9E 20 90 */	lwz r4, 0x2090(r30)
/* 8050B614  7C 04 1B 96 */	divwu r0, r4, r3
/* 8050B618  7C 00 19 D6 */	mullw r0, r0, r3
/* 8050B61C  7C 00 20 50 */	subf r0, r0, r4
/* 8050B620  28 00 00 14 */	cmplwi r0, 0x14
/* 8050B624  41 81 00 18 */	bgt lbl_8050B63C
/* 8050B628  4B B5 16 CD */	bl fqrand
/* 8050B62C  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648E04@ha */
/* 8050B630  C0 03 8E 04 */	lfs f0, lit_447@l(r3)  /* 0x80648E04@l */
/* 8050B634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B638  40 80 00 0C */	bge lbl_8050B644
lbl_8050B63C:
/* 8050B63C  3B E0 00 02 */	li r31, 2
/* 8050B640  48 00 00 1C */	b lbl_8050B65C
lbl_8050B644:
/* 8050B644  3C 60 80 65 */	lis r3, lit_511@ha /* 0x80648E14@ha */
/* 8050B648  C0 3D 00 BC */	lfs f1, 0xbc(r29)
/* 8050B64C  C0 03 8E 14 */	lfs f0, lit_511@l(r3)  /* 0x80648E14@l */
/* 8050B650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B654  40 80 00 08 */	bge lbl_8050B65C
/* 8050B658  3B E0 00 02 */	li r31, 2
lbl_8050B65C:
/* 8050B65C  7F A3 EB 78 */	mr r3, r29
/* 8050B660  7F C4 F3 78 */	mr r4, r30
/* 8050B664  7F E5 FB 78 */	mr r5, r31
/* 8050B668  48 00 0A 0D */	bl aHG_setupAction
/* 8050B66C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050B670  4B B8 F8 B1 */	bl func_8009AF20
/* 8050B674  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050B678  7C 08 03 A6 */	mtlr r0
/* 8050B67C  38 21 00 20 */	addi r1, r1, 0x20
/* 8050B680  4E 80 00 20 */	blr 
