lbl_805C9DFC:
/* 805C9DFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C9E00  7C 08 02 A6 */	mflr r0
/* 805C9E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C9E08  39 61 00 20 */	addi r11, r1, 0x20
/* 805C9E0C  4B AD 10 C9 */	bl func_8009AED4
/* 805C9E10  7C 9E 23 78 */	mr r30, r4
/* 805C9E14  7C 7D 1B 78 */	mr r29, r3
/* 805C9E18  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 805C9E1C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C9E20  2C 00 00 00 */	cmpwi r0, 0
/* 805C9E24  83 E6 09 CC */	lwz r31, 0x9cc(r6)
/* 805C9E28  40 82 00 3C */	bne lbl_805C9E64
/* 805C9E2C  38 00 00 01 */	li r0, 1
/* 805C9E30  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C9E34  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 805C9E38  38 A0 00 00 */	li r5, 0
/* 805C9E3C  C0 24 AE A4 */	lfs f1, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805C9E40  38 80 00 0E */	li r4, 0xe
/* 805C9E44  80 FD 00 2C */	lwz r7, 0x2c(r29)
/* 805C9E48  38 C0 00 00 */	li r6, 0
/* 805C9E4C  FC 40 08 90 */	fmr f2, f1
/* 805C9E50  80 E7 09 7C */	lwz r7, 0x97c(r7)
/* 805C9E54  81 87 02 E4 */	lwz r12, 0x2e4(r7)
/* 805C9E58  7D 89 03 A6 */	mtctr r12
/* 805C9E5C  4E 80 04 21 */	bctrl 
/* 805C9E60  48 00 01 74 */	b lbl_805C9FD4
lbl_805C9E64:
/* 805C9E64  A8 BF 00 02 */	lha r5, 2(r31)
/* 805C9E68  2C 05 00 00 */	cmpwi r5, 0
/* 805C9E6C  41 82 00 F0 */	beq lbl_805C9F5C
/* 805C9E70  38 65 FF FF */	addi r3, r5, -1
/* 805C9E74  3C 00 43 30 */	lis r0, 0x4330
/* 805C9E78  B0 7F 00 02 */	sth r3, 2(r31)
/* 805C9E7C  3C 60 80 65 */	lis r3, lit_678@ha /* 0x8064AF04@ha */
/* 805C9E80  3C A0 80 65 */	lis r5, lit_676@ha /* 0x8064AEFC@ha */
/* 805C9E84  C8 23 AF 04 */	lfd f1, lit_678@l(r3)  /* 0x8064AF04@l */
/* 805C9E88  A8 9F 00 02 */	lha r4, 2(r31)
/* 805C9E8C  90 01 00 08 */	stw r0, 8(r1)
/* 805C9E90  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805C9E94  C0 45 AE FC */	lfs f2, lit_676@l(r5)  /* 0x8064AEFC@l */
/* 805C9E98  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C9E9C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C9EA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C9EA4  EC 22 00 32 */	fmuls f1, f2, f0
/* 805C9EA8  4B E3 E9 D5 */	bl sinf_table
/* 805C9EAC  3C 60 80 65 */	lis r3, lit_675@ha /* 0x8064AEF8@ha */
/* 805C9EB0  C0 03 AE F8 */	lfs f0, lit_675@l(r3)  /* 0x8064AEF8@l */
/* 805C9EB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805C9EB8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805C9EBC  A8 1F 00 02 */	lha r0, 2(r31)
/* 805C9EC0  2C 00 00 14 */	cmpwi r0, 0x14
/* 805C9EC4  40 82 00 60 */	bne lbl_805C9F24
/* 805C9EC8  38 00 00 09 */	li r0, 9
/* 805C9ECC  3C 9F 00 01 */	addis r4, r31, 1
/* 805C9ED0  38 A0 00 00 */	li r5, 0
/* 805C9ED4  7C 09 03 A6 */	mtctr r0
/* 805C9ED8  38 84 D9 F4 */	addi r4, r4, -9740
lbl_805C9EDC:
/* 805C9EDC  88 64 00 00 */	lbz r3, 0(r4)
/* 805C9EE0  88 1F 00 01 */	lbz r0, 1(r31)
/* 805C9EE4  7C 03 00 40 */	cmplw r3, r0
/* 805C9EE8  41 82 00 10 */	beq lbl_805C9EF8
/* 805C9EEC  38 A5 00 01 */	addi r5, r5, 1
/* 805C9EF0  38 84 00 01 */	addi r4, r4, 1
/* 805C9EF4  42 00 FF E8 */	bdnz lbl_805C9EDC
lbl_805C9EF8:
/* 805C9EF8  7C A9 03 A6 */	mtctr r5
/* 805C9EFC  2C 05 00 00 */	cmpwi r5, 0
/* 805C9F00  40 81 00 14 */	ble lbl_805C9F14
lbl_805C9F04:
/* 805C9F04  88 04 FF FF */	lbz r0, -1(r4)
/* 805C9F08  98 04 00 00 */	stb r0, 0(r4)
/* 805C9F0C  38 84 FF FF */	addi r4, r4, -1
/* 805C9F10  42 00 FF F4 */	bdnz lbl_805C9F04
lbl_805C9F14:
/* 805C9F14  88 1F 00 01 */	lbz r0, 1(r31)
/* 805C9F18  3C 7F 00 01 */	addis r3, r31, 1
/* 805C9F1C  98 03 D9 F4 */	stb r0, -0x260c(r3)
/* 805C9F20  48 00 00 30 */	b lbl_805C9F50
lbl_805C9F24:
/* 805C9F24  7C 00 07 35 */	extsh. r0, r0
/* 805C9F28  40 82 00 28 */	bne lbl_805C9F50
/* 805C9F2C  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C9F30  7F A3 EB 78 */	mr r3, r29
/* 805C9F34  C0 04 AE A4 */	lfs f0, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805C9F38  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805C9F3C  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805C9F40  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805C9F44  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805C9F48  7D 89 03 A6 */	mtctr r12
/* 805C9F4C  4E 80 04 21 */	bctrl 
lbl_805C9F50:
/* 805C9F50  7F E3 FB 78 */	mr r3, r31
/* 805C9F54  4B FF FC ED */	bl mCL_item_move
/* 805C9F58  48 00 00 7C */	b lbl_805C9FD4
lbl_805C9F5C:
/* 805C9F5C  81 86 09 1C */	lwz r12, 0x91c(r6)
/* 805C9F60  7D 89 03 A6 */	mtctr r12
/* 805C9F64  4E 80 04 21 */	bctrl 
/* 805C9F68  3C DF 00 01 */	addis r6, r31, 1
/* 805C9F6C  88 06 D9 FD */	lbz r0, -0x2603(r6)
/* 805C9F70  28 00 00 00 */	cmplwi r0, 0
/* 805C9F74  41 82 00 3C */	beq lbl_805C9FB0
/* 805C9F78  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805C9F7C  7F A3 EB 78 */	mr r3, r29
/* 805C9F80  88 06 D9 F4 */	lbz r0, -0x260c(r6)
/* 805C9F84  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805C9F88  1C 00 06 44 */	mulli r0, r0, 0x644
/* 805C9F8C  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 805C9F90  7C 86 02 14 */	add r4, r6, r0
/* 805C9F94  B0 A4 A1 4C */	sth r5, -0x5eb4(r4)
/* 805C9F98  88 86 D9 F4 */	lbz r4, -0x260c(r6)
/* 805C9F9C  4B FF FB 2D */	bl mCL_item_data_set
/* 805C9FA0  3C 7F 00 01 */	addis r3, r31, 1
/* 805C9FA4  38 00 00 00 */	li r0, 0
/* 805C9FA8  98 03 D9 FD */	stb r0, -0x2603(r3)
/* 805C9FAC  48 00 00 28 */	b lbl_805C9FD4
lbl_805C9FB0:
/* 805C9FB0  A8 1F 00 02 */	lha r0, 2(r31)
/* 805C9FB4  2C 00 00 28 */	cmpwi r0, 0x28
/* 805C9FB8  40 82 00 14 */	bne lbl_805C9FCC
/* 805C9FBC  88 9F 00 01 */	lbz r4, 1(r31)
/* 805C9FC0  7F A3 EB 78 */	mr r3, r29
/* 805C9FC4  4B FF FB 05 */	bl mCL_item_data_set
/* 805C9FC8  48 00 00 0C */	b lbl_805C9FD4
lbl_805C9FCC:
/* 805C9FCC  7F E3 FB 78 */	mr r3, r31
/* 805C9FD0  4B FF FC 71 */	bl mCL_item_move
lbl_805C9FD4:
/* 805C9FD4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C9FD8  4B AD 0F 49 */	bl func_8009AF20
/* 805C9FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C9FE0  7C 08 03 A6 */	mtlr r0
/* 805C9FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C9FE8  4E 80 00 20 */	blr 
