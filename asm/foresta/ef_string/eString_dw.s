lbl_8061F298:
/* 8061F298  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061F29C  7C 08 02 A6 */	mflr r0
/* 8061F2A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061F2A4  39 61 00 40 */	addi r11, r1, 0x40
/* 8061F2A8  4B A7 BC 2D */	bl func_8009AED4
/* 8061F2AC  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 8061F2B0  7C 9E 23 78 */	mr r30, r4
/* 8061F2B4  2C 00 00 02 */	cmpwi r0, 2
/* 8061F2B8  40 80 00 C8 */	bge lbl_8061F380
/* 8061F2BC  3C 60 80 6D */	lis r3, eString_string_table@ha /* 0x806D36D0@ha */
/* 8061F2C0  54 00 10 3A */	slwi r0, r0, 2
/* 8061F2C4  38 83 36 D0 */	addi r4, r3, eString_string_table@l /* 0x806D36D0@l */
/* 8061F2C8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8061F2CC  7C A4 00 2E */	lwzx r5, r4, r0
/* 8061F2D0  38 80 00 01 */	li r4, 1
/* 8061F2D4  80 05 00 08 */	lwz r0, 8(r5)
/* 8061F2D8  83 E5 00 00 */	lwz r31, 0(r5)
/* 8061F2DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061F2E0  83 A5 00 04 */	lwz r29, 4(r5)
/* 8061F2E4  4B D9 0E 55 */	bl mFont_SetMatrix
/* 8061F2E8  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 8061F2EC  3C 00 43 30 */	lis r0, 0x4330
/* 8061F2F0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8061F2F4  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064CC74@ha */
/* 8061F2F8  38 C0 00 01 */	li r6, 1
/* 8061F2FC  3C A0 80 65 */	lis r5, data_8064CC64@ha /* 0x8064CC64@ha */
/* 8061F300  90 61 00 24 */	stw r3, 0x24(r1)
/* 8061F304  38 64 CC 74 */	addi r3, r4, lit_405@l /* 0x8064CC74@l */
/* 8061F308  C8 23 00 00 */	lfd f1, 0(r3)
/* 8061F30C  3C 80 80 65 */	lis r4, lit_401@ha /* 0x8064CC68@ha */
/* 8061F310  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8061F314  3C 60 80 65 */	lis r3, lit_403@ha /* 0x8064CC70@ha */
/* 8061F318  C0 44 CC 68 */	lfs f2, lit_401@l(r4)  /* 0x8064CC68@l */
/* 8061F31C  38 00 00 00 */	li r0, 0
/* 8061F320  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061F324  C0 63 CC 70 */	lfs f3, lit_403@l(r3)  /* 0x8064CC70@l */
/* 8061F328  90 C1 00 08 */	stw r6, 8(r1)
/* 8061F32C  3C 60 80 65 */	lis r3, lit_402@ha /* 0x8064CC6C@ha */
/* 8061F330  C0 25 CC 64 */	lfs f1, data_8064CC64@l(r5)  /* 0x8064CC64@l */
/* 8061F334  38 83 CC 6C */	addi r4, r3, lit_402@l /* 0x8064CC6C@l */
/* 8061F338  EC 02 00 28 */	fsubs f0, f2, f0
/* 8061F33C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061F340  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061F344  FC 80 18 90 */	fmr f4, f3
/* 8061F348  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8061F34C  7F C3 F3 78 */	mr r3, r30
/* 8061F350  EC 21 00 32 */	fmuls f1, f1, f0
/* 8061F354  88 C1 00 18 */	lbz r6, 0x18(r1)
/* 8061F358  88 E1 00 19 */	lbz r7, 0x19(r1)
/* 8061F35C  7F E4 FB 78 */	mr r4, r31
/* 8061F360  89 01 00 1A */	lbz r8, 0x1a(r1)
/* 8061F364  7F A5 EB 78 */	mr r5, r29
/* 8061F368  89 21 00 1B */	lbz r9, 0x1b(r1)
/* 8061F36C  39 40 00 00 */	li r10, 0
/* 8061F370  4B D9 0D 01 */	bl mFont_SetLineStrings_AndSpace
/* 8061F374  80 7E 00 00 */	lwz r3, 0(r30)
/* 8061F378  38 80 00 01 */	li r4, 1
/* 8061F37C  4B D9 0E BD */	bl mFont_UnSetMatrix
lbl_8061F380:
/* 8061F380  39 61 00 40 */	addi r11, r1, 0x40
/* 8061F384  4B A7 BB 9D */	bl func_8009AF20
/* 8061F388  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061F38C  7C 08 03 A6 */	mtlr r0
/* 8061F390  38 21 00 40 */	addi r1, r1, 0x40
/* 8061F394  4E 80 00 20 */	blr 
