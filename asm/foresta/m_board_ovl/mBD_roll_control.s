lbl_805C4E68:
/* 805C4E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C4E6C  7C 08 02 A6 */	mflr r0
/* 805C4E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C4E74  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C4E78  80 A3 09 8C */	lwz r5, 0x98c(r3)
/* 805C4E7C  80 C3 09 90 */	lwz r6, 0x990(r3)
/* 805C4E80  28 05 00 00 */	cmplwi r5, 0
/* 805C4E84  41 82 01 50 */	beq lbl_805C4FD4
/* 805C4E88  88 06 00 00 */	lbz r0, 0(r6)
/* 805C4E8C  28 00 00 01 */	cmplwi r0, 1
/* 805C4E90  40 82 00 10 */	bne lbl_805C4EA0
/* 805C4E94  A8 65 00 24 */	lha r3, 0x24(r5)
/* 805C4E98  38 A3 00 02 */	addi r5, r3, 2
/* 805C4E9C  48 00 00 18 */	b lbl_805C4EB4
lbl_805C4EA0:
/* 805C4EA0  28 00 00 00 */	cmplwi r0, 0
/* 805C4EA4  40 82 00 0C */	bne lbl_805C4EB0
/* 805C4EA8  38 A0 00 00 */	li r5, 0
/* 805C4EAC  48 00 00 08 */	b lbl_805C4EB4
lbl_805C4EB0:
/* 805C4EB0  38 A0 00 09 */	li r5, 9
lbl_805C4EB4:
/* 805C4EB4  88 06 00 01 */	lbz r0, 1(r6)
/* 805C4EB8  7C 00 28 50 */	subf r0, r0, r5
/* 805C4EBC  2C 00 FF FE */	cmpwi r0, -2
/* 805C4EC0  40 80 00 1C */	bge lbl_805C4EDC
/* 805C4EC4  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C4EC8  38 05 00 02 */	addi r0, r5, 2
/* 805C4ECC  98 06 00 01 */	stb r0, 1(r6)
/* 805C4ED0  C0 03 AD CC */	lfs f0, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C4ED4  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805C4ED8  48 00 00 20 */	b lbl_805C4EF8
lbl_805C4EDC:
/* 805C4EDC  2C 00 00 02 */	cmpwi r0, 2
/* 805C4EE0  40 81 00 18 */	ble lbl_805C4EF8
/* 805C4EE4  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C4EE8  38 05 FF FE */	addi r0, r5, -2
/* 805C4EEC  98 06 00 01 */	stb r0, 1(r6)
/* 805C4EF0  C0 03 AD CC */	lfs f0, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C4EF4  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805C4EF8:
/* 805C4EF8  88 C6 00 01 */	lbz r6, 1(r6)
/* 805C4EFC  3C 00 43 30 */	lis r0, 0x4330
/* 805C4F00  3C A0 80 65 */	lis r5, lit_483@ha /* 0x8064ADEC@ha */
/* 805C4F04  90 01 00 08 */	stw r0, 8(r1)
/* 805C4F08  38 C6 FF FE */	addi r6, r6, -2
/* 805C4F0C  C8 25 AD EC */	lfd f1, lit_483@l(r5)  /* 0x8064ADEC@l */
/* 805C4F10  54 C0 20 36 */	slwi r0, r6, 4
/* 805C4F14  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 805C4F18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C4F1C  3C 60 80 65 */	lis r3, lit_476@ha /* 0x8064ADD0@ha */
/* 805C4F20  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C4F24  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C4F28  EC 20 08 28 */	fsubs f1, f0, f1
/* 805C4F2C  C0 03 AD D0 */	lfs f0, lit_476@l(r3)  /* 0x8064ADD0@l */
/* 805C4F30  EC 41 10 28 */	fsubs f2, f1, f2
/* 805C4F34  FC 40 12 10 */	fabs f2, f2
/* 805C4F38  FC 40 10 18 */	frsp f2, f2
/* 805C4F3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C4F40  40 81 00 90 */	ble lbl_805C4FD0
/* 805C4F44  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064ADD4@ha */
/* 805C4F48  C0 03 AD D4 */	lfs f0, lit_477@l(r3)  /* 0x8064ADD4@l */
/* 805C4F4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C4F50  40 81 00 34 */	ble lbl_805C4F84
/* 805C4F54  3C A0 80 65 */	lis r5, lit_478@ha /* 0x8064ADD8@ha */
/* 805C4F58  3C 60 80 65 */	lis r3, lit_479@ha /* 0x8064ADDC@ha */
/* 805C4F5C  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805C4F60  C0 45 AD D8 */	lfs f2, lit_478@l(r5)  /* 0x8064ADD8@l */
/* 805C4F64  C0 03 AD DC */	lfs f0, lit_479@l(r3)  /* 0x8064ADDC@l */
/* 805C4F68  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805C4F6C  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805C4F70  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805C4F74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C4F78  40 81 00 48 */	ble lbl_805C4FC0
/* 805C4F7C  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805C4F80  48 00 00 40 */	b lbl_805C4FC0
lbl_805C4F84:
/* 805C4F84  3C 60 80 65 */	lis r3, lit_480@ha /* 0x8064ADE0@ha */
/* 805C4F88  C0 03 AD E0 */	lfs f0, lit_480@l(r3)  /* 0x8064ADE0@l */
/* 805C4F8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C4F90  40 80 00 30 */	bge lbl_805C4FC0
/* 805C4F94  3C A0 80 65 */	lis r5, lit_481@ha /* 0x8064ADE4@ha */
/* 805C4F98  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C4F9C  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805C4FA0  C0 45 AD E4 */	lfs f2, lit_481@l(r5)  /* 0x8064ADE4@l */
/* 805C4FA4  C0 03 AD CC */	lfs f0, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C4FA8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805C4FAC  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805C4FB0  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805C4FB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C4FB8  40 80 00 08 */	bge lbl_805C4FC0
/* 805C4FBC  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805C4FC0:
/* 805C4FC0  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805C4FC4  38 64 00 1C */	addi r3, r4, 0x1c
/* 805C4FC8  4B DF 5C A1 */	bl chase_f
/* 805C4FCC  48 00 00 08 */	b lbl_805C4FD4
lbl_805C4FD0:
/* 805C4FD0  D0 24 00 1C */	stfs f1, 0x1c(r4)
lbl_805C4FD4:
/* 805C4FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C4FD8  7C 08 03 A6 */	mtlr r0
/* 805C4FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C4FE0  4E 80 00 20 */	blr 
