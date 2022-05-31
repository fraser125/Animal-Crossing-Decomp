lbl_805F1E50:
/* 805F1E50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F1E54  7C 08 02 A6 */	mflr r0
/* 805F1E58  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F1E5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805F1E60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805F1E64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805F1E68  7C A4 2B 78 */	mr r4, r5
/* 805F1E6C  7C 7F 1B 78 */	mr r31, r3
/* 805F1E70  38 A1 00 08 */	addi r5, r1, 8
/* 805F1E74  38 C1 00 0C */	addi r6, r1, 0xc
/* 805F1E78  4B FF DF 1D */	bl mTG_get_col_width_and_line_select
/* 805F1E7C  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805F1E80  C0 21 00 08 */	lfs f1, 8(r1)
/* 805F1E84  C0 43 B8 68 */	lfs f2, lit_874@l(r3)  /* 0x8064B868@l */
/* 805F1E88  7F E3 FB 78 */	mr r3, r31
/* 805F1E8C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805F1E90  38 80 00 02 */	li r4, 2
/* 805F1E94  EC 22 00 72 */	fmuls f1, f2, f1
/* 805F1E98  EC 42 00 32 */	fmuls f2, f2, f0
/* 805F1E9C  4B FF DB 61 */	bl mTG_set_tag_win_scale_p
/* 805F1EA0  38 00 00 00 */	li r0, 0
/* 805F1EA4  3C 60 80 65 */	lis r3, lit_1083@ha /* 0x8064B8A8@ha */
/* 805F1EA8  98 1F 00 01 */	stb r0, 1(r31)
/* 805F1EAC  38 A3 B8 A8 */	addi r5, r3, lit_1083@l /* 0x8064B8A8@l */
/* 805F1EB0  3C 60 80 65 */	lis r3, lit_1085@ha /* 0x8064B8B0@ha */
/* 805F1EB4  3C 80 80 65 */	lis r4, lit_1084@ha /* 0x8064B8AC@ha */
/* 805F1EB8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805F1EBC  39 03 B8 B0 */	addi r8, r3, lit_1085@l /* 0x8064B8B0@l */
/* 805F1EC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805F1EC4  39 24 B8 AC */	addi r9, r4, lit_1084@l /* 0x8064B8AC@l */
/* 805F1EC8  3C 80 80 65 */	lis r4, lit_1086@ha /* 0x8064B8B4@ha */
/* 805F1ECC  3C 60 80 65 */	lis r3, lit_1014@ha /* 0x8064B88C@ha */
/* 805F1ED0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1ED4  38 E4 B8 B4 */	addi r7, r4, lit_1086@l /* 0x8064B8B4@l */
/* 805F1ED8  38 C3 B8 8C */	addi r6, r3, lit_1014@l /* 0x8064B88C@l */
/* 805F1EDC  3C 60 80 65 */	lis r3, lit_1087@ha /* 0x8064B8B8@ha */
/* 805F1EE0  38 A3 B8 B8 */	addi r5, r3, lit_1087@l /* 0x8064B8B8@l */
/* 805F1EE4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 805F1EE8  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1EEC  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 805F1EF0  C0 88 00 00 */	lfs f4, 0(r8)
/* 805F1EF4  7F E3 FB 78 */	mr r3, r31
/* 805F1EF8  C0 A9 00 00 */	lfs f5, 0(r9)
/* 805F1EFC  38 81 00 10 */	addi r4, r1, 0x10
/* 805F1F00  EC 62 00 2A */	fadds f3, f2, f0
/* 805F1F04  C0 07 00 00 */	lfs f0, 0(r7)
/* 805F1F08  C0 46 00 00 */	lfs f2, 0(r6)
/* 805F1F0C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805F1F10  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 805F1F14  C0 7F 00 08 */	lfs f3, 8(r31)
/* 805F1F18  C0 DF 00 10 */	lfs f6, 0x10(r31)
/* 805F1F1C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 805F1F20  EC 65 18 2A */	fadds f3, f5, f3
/* 805F1F24  EC 66 18 2A */	fadds f3, f6, f3
/* 805F1F28  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 805F1F2C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805F1F30  EC 03 00 28 */	fsubs f0, f3, f0
/* 805F1F34  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 805F1F38  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F1F3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805F1F40  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 805F1F44  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805F1F48  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1F4C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805F1F50  4B FF DC D5 */	bl mTG_check_edge_right_select
/* 805F1F54  2C 03 00 00 */	cmpwi r3, 0
/* 805F1F58  40 82 00 14 */	bne lbl_805F1F6C
/* 805F1F5C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805F1F60  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805F1F64  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F1F68  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_805F1F6C:
/* 805F1F6C  7F E3 FB 78 */	mr r3, r31
/* 805F1F70  4B FF DD 1D */	bl mTG_check_edge_foot_select
/* 805F1F74  2C 03 00 00 */	cmpwi r3, 0
/* 805F1F78  40 82 00 B0 */	bne lbl_805F2028
/* 805F1F7C  3C 80 80 65 */	lis r4, lit_877@ha /* 0x8064B874@ha */
/* 805F1F80  3C 60 80 65 */	lis r3, lit_1085@ha /* 0x8064B8B0@ha */
/* 805F1F84  38 A4 B8 74 */	addi r5, r4, lit_877@l /* 0x8064B874@l */
/* 805F1F88  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805F1F8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805F1F90  38 E3 B8 B0 */	addi r7, r3, lit_1085@l /* 0x8064B8B0@l */
/* 805F1F94  3C 80 80 65 */	lis r4, lit_1084@ha /* 0x8064B8AC@ha */
/* 805F1F98  3C 60 80 65 */	lis r3, lit_677@ha /* 0x8064B858@ha */
/* 805F1F9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1FA0  39 04 B8 AC */	addi r8, r4, lit_1084@l /* 0x8064B8AC@l */
/* 805F1FA4  3C 80 80 65 */	lis r4, lit_1086@ha /* 0x8064B8B4@ha */
/* 805F1FA8  C0 27 00 00 */	lfs f1, 0(r7)
/* 805F1FAC  38 C4 B8 B4 */	addi r6, r4, lit_1086@l /* 0x8064B8B4@l */
/* 805F1FB0  C0 48 00 00 */	lfs f2, 0(r8)
/* 805F1FB4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805F1FB8  38 83 B8 58 */	addi r4, r3, lit_677@l /* 0x8064B858@l */
/* 805F1FBC  3C 60 80 65 */	lis r3, lit_654@ha /* 0x8064B848@ha */
/* 805F1FC0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805F1FC4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805F1FC8  38 A3 B8 48 */	addi r5, r3, lit_654@l /* 0x8064B848@l */
/* 805F1FCC  C0 85 00 00 */	lfs f4, 0(r5)
/* 805F1FD0  3C 60 80 65 */	lis r3, lit_1072@ha /* 0x8064B8A4@ha */
/* 805F1FD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1FD8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805F1FDC  EC 42 00 2A */	fadds f2, f2, f0
/* 805F1FE0  C0 03 B8 A4 */	lfs f0, lit_1072@l(r3)  /* 0x8064B8A4@l */
/* 805F1FE4  EC 5F 10 28 */	fsubs f2, f31, f2
/* 805F1FE8  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 805F1FEC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805F1FF0  EC 22 08 2A */	fadds f1, f2, f1
/* 805F1FF4  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 805F1FF8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 805F1FFC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805F2000  EC 63 00 72 */	fmuls f3, f3, f1
/* 805F2004  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805F2008  EC 22 08 2A */	fadds f1, f2, f1
/* 805F200C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 805F2010  EC 23 08 2A */	fadds f1, f3, f1
/* 805F2014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F2018  40 81 00 10 */	ble lbl_805F2028
/* 805F201C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F2020  EC 02 00 28 */	fsubs f0, f2, f0
/* 805F2024  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_805F2028:
/* 805F2028  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805F202C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F2030  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805F2034  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805F2038  7C 08 03 A6 */	mtlr r0
/* 805F203C  38 21 00 30 */	addi r1, r1, 0x30
/* 805F2040  4E 80 00 20 */	blr 
