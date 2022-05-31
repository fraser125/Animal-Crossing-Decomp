lbl_804D1EF4:
/* 804D1EF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D1EF8  7C 08 02 A6 */	mflr r0
/* 804D1EFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D1F00  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804D1F04  4B EE 16 B5 */	bl mHS_get_arrange_idx
/* 804D1F08  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 804D1F0C  38 00 00 00 */	li r0, 0
/* 804D1F10  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D1F14  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D1F18  3C 60 80 6A */	lis r3, mHsRm_unit_max@ha /* 0x8069C9D4@ha */
/* 804D1F1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804D1F20  7C A4 2A 14 */	add r5, r4, r5
/* 804D1F24  90 01 00 08 */	stw r0, 8(r1)
/* 804D1F28  3F E5 00 01 */	addis r31, r5, 1
/* 804D1F2C  38 83 C9 D4 */	addi r4, r3, mHsRm_unit_max@l /* 0x8069C9D4@l */
/* 804D1F30  38 7F 9D 20 */	addi r3, r31, -25312
/* 804D1F34  88 BF 9D 12 */	lbz r5, -0x62ee(r31)
/* 804D1F38  38 1F 9F 48 */	addi r0, r31, -24760
/* 804D1F3C  90 61 00 10 */	stw r3, 0x10(r1)
/* 804D1F40  54 A3 EE FA */	rlwinm r3, r5, 0x1d, 0x1b, 0x1d
/* 804D1F44  38 A1 00 0C */	addi r5, r1, 0xc
/* 804D1F48  7C 84 18 2E */	lwzx r4, r4, r3
/* 804D1F4C  38 61 00 10 */	addi r3, r1, 0x10
/* 804D1F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1F54  38 C1 00 08 */	addi r6, r1, 8
/* 804D1F58  3B FF 9C E8 */	addi r31, r31, -25368
/* 804D1F5C  4B FF FE A5 */	bl mHsRm_EvaluateHuusuiPoint
/* 804D1F60  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 804D1F64  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 804D1F68  28 00 00 03 */	cmplwi r0, 3
/* 804D1F6C  40 82 00 28 */	bne lbl_804D1F94
/* 804D1F70  38 7F 08 E0 */	addi r3, r31, 0x8e0
/* 804D1F74  38 1F 0B 08 */	addi r0, r31, 0xb08
/* 804D1F78  90 61 00 10 */	stw r3, 0x10(r1)
/* 804D1F7C  38 61 00 10 */	addi r3, r1, 0x10
/* 804D1F80  38 A1 00 0C */	addi r5, r1, 0xc
/* 804D1F84  38 C1 00 08 */	addi r6, r1, 8
/* 804D1F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1F8C  38 80 00 08 */	li r4, 8
/* 804D1F90  4B FF FE 71 */	bl mHsRm_EvaluateHuusuiPoint
lbl_804D1F94:
/* 804D1F94  88 1F 00 24 */	lbz r0, 0x24(r31)
/* 804D1F98  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 804D1F9C  28 00 00 01 */	cmplwi r0, 1
/* 804D1FA0  40 82 00 28 */	bne lbl_804D1FC8
/* 804D1FA4  38 7F 11 88 */	addi r3, r31, 0x1188
/* 804D1FA8  38 1F 13 B0 */	addi r0, r31, 0x13b0
/* 804D1FAC  90 61 00 10 */	stw r3, 0x10(r1)
/* 804D1FB0  38 61 00 10 */	addi r3, r1, 0x10
/* 804D1FB4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804D1FB8  38 C1 00 08 */	addi r6, r1, 8
/* 804D1FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1FC0  38 80 00 0A */	li r4, 0xa
/* 804D1FC4  4B FF FE 3D */	bl mHsRm_EvaluateHuusuiPoint
lbl_804D1FC8:
/* 804D1FC8  80 01 00 08 */	lwz r0, 8(r1)
/* 804D1FCC  2C 00 00 28 */	cmpwi r0, 0x28
/* 804D1FD0  40 81 00 0C */	ble lbl_804D1FDC
/* 804D1FD4  38 00 00 28 */	li r0, 0x28
/* 804D1FD8  90 01 00 08 */	stw r0, 8(r1)
lbl_804D1FDC:
/* 804D1FDC  80 61 00 08 */	lwz r3, 8(r1)
/* 804D1FE0  3C 00 43 30 */	lis r0, 0x4330
/* 804D1FE4  3C A0 80 64 */	lis r5, lit_513@ha /* 0x806464D4@ha */
/* 804D1FE8  3C C0 80 64 */	lis r6, lit_510@ha /* 0x806464CC@ha */
/* 804D1FEC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 804D1FF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804D1FF4  C8 45 64 D4 */	lfd f2, lit_513@l(r5)  /* 0x806464D4@l */
/* 804D1FF8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x806464D0@ha */
/* 804D1FFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804D2000  C0 66 64 CC */	lfs f3, lit_510@l(r6)  /* 0x806464CC@l */
/* 804D2004  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804D2008  90 01 00 28 */	stw r0, 0x28(r1)
/* 804D200C  EC 20 10 28 */	fsubs f1, f0, f2
/* 804D2010  C0 03 64 D0 */	lfs f0, lit_511@l(r3)  /* 0x806464D0@l */
/* 804D2014  EC 63 00 72 */	fmuls f3, f3, f1
/* 804D2018  FC 20 18 1E */	fctiwz f1, f3
/* 804D201C  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 804D2020  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804D2024  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804D2028  90 61 00 08 */	stw r3, 8(r1)
/* 804D202C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804D2030  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 804D2034  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D2038  EC 63 08 28 */	fsubs f3, f3, f1
/* 804D203C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804D2040  40 81 00 0C */	ble lbl_804D204C
/* 804D2044  38 03 00 01 */	addi r0, r3, 1
/* 804D2048  90 01 00 08 */	stw r0, 8(r1)
lbl_804D204C:
/* 804D204C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D2050  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D2054  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D2058  3C 63 00 03 */	addis r3, r3, 3
/* 804D205C  B0 03 85 2C */	sth r0, -0x7ad4(r3)
/* 804D2060  80 01 00 08 */	lwz r0, 8(r1)
/* 804D2064  B0 03 85 2E */	sth r0, -0x7ad2(r3)
/* 804D2068  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D206C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D2070  7C 08 03 A6 */	mtlr r0
/* 804D2074  38 21 00 40 */	addi r1, r1, 0x40
/* 804D2078  4E 80 00 20 */	blr 
