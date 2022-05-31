lbl_80536EF8:
/* 80536EF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80536EFC  7C 08 02 A6 */	mflr r0
/* 80536F00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80536F04  38 81 00 08 */	addi r4, r1, 8
/* 80536F08  38 A1 00 10 */	addi r5, r1, 0x10
/* 80536F0C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80536F10  7C 7F 1B 78 */	mr r31, r3
/* 80536F14  38 61 00 0C */	addi r3, r1, 0xc
/* 80536F18  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 80536F1C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80536F20  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80536F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80536F28  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80536F2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80536F30  4B E6 E6 DD */	bl mFI_Wpos2UtNum_inBlock
/* 80536F34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80536F38  2C 00 00 00 */	cmpwi r0, 0
/* 80536F3C  41 82 00 20 */	beq lbl_80536F5C
/* 80536F40  2C 00 00 0F */	cmpwi r0, 0xf
/* 80536F44  41 82 00 18 */	beq lbl_80536F5C
/* 80536F48  80 01 00 08 */	lwz r0, 8(r1)
/* 80536F4C  2C 00 00 00 */	cmpwi r0, 0
/* 80536F50  41 82 00 0C */	beq lbl_80536F5C
/* 80536F54  2C 00 00 0F */	cmpwi r0, 0xf
/* 80536F58  40 82 00 88 */	bne lbl_80536FE0
lbl_80536F5C:
/* 80536F5C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80536F60  7F E3 FB 78 */	mr r3, r31
/* 80536F64  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80536F68  48 00 05 31 */	bl func_80537498
/* 80536F6C  38 60 00 00 */	li r3, 0
/* 80536F70  3C 00 43 30 */	lis r0, 0x4330
/* 80536F74  98 7F 09 17 */	stb r3, 0x917(r31)
/* 80536F78  3C 60 80 65 */	lis r3, lit_818@ha /* 0x80649284@ha */
/* 80536F7C  3C A0 80 65 */	lis r5, lit_802@ha /* 0x80649278@ha */
/* 80536F80  3C C0 80 65 */	lis r6, lit_1492@ha /* 0x806492B0@ha */
/* 80536F84  88 9F 00 08 */	lbz r4, 8(r31)
/* 80536F88  C8 23 92 84 */	lfd f1, lit_818@l(r3)  /* 0x80649284@l */
/* 80536F8C  7C 84 07 74 */	extsb r4, r4
/* 80536F90  90 01 00 20 */	stw r0, 0x20(r1)
/* 80536F94  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80536F98  C0 45 92 78 */	lfs f2, lit_802@l(r5)  /* 0x80649278@l */
/* 80536F9C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80536FA0  C0 66 92 B0 */	lfs f3, lit_1492@l(r6)  /* 0x806492B0@l */
/* 80536FA4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80536FA8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80536FAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80536FB0  EC 02 00 2A */	fadds f0, f2, f0
/* 80536FB4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80536FB8  D0 1F 09 18 */	stfs f0, 0x918(r31)
/* 80536FBC  88 1F 00 09 */	lbz r0, 9(r31)
/* 80536FC0  7C 00 07 74 */	extsb r0, r0
/* 80536FC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80536FC8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80536FCC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80536FD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80536FD4  EC 02 00 2A */	fadds f0, f2, f0
/* 80536FD8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80536FDC  D0 1F 09 1C */	stfs f0, 0x91c(r31)
lbl_80536FE0:
/* 80536FE0  38 00 00 00 */	li r0, 0
/* 80536FE4  3C 60 80 6A */	lis r3, data_806A1400@ha /* 0x806A1400@ha */
/* 80536FE8  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80536FEC  38 E3 14 00 */	addi r7, r3, data_806A1400@l /* 0x806A1400@l */
/* 80536FF0  7F E3 FB 78 */	mr r3, r31
/* 80536FF4  38 80 00 01 */	li r4, 1
/* 80536FF8  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 80536FFC  38 A0 00 00 */	li r5, 0
/* 80537000  38 C0 00 00 */	li r6, 0
/* 80537004  4B FF A5 F9 */	bl aNPC_set_request_act
/* 80537008  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053700C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80537010  7C 08 03 A6 */	mtlr r0
/* 80537014  38 21 00 40 */	addi r1, r1, 0x40
/* 80537018  4E 80 00 20 */	blr 
