lbl_804C1EA0:
/* 804C1EA0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 804C1EA4  7C 08 02 A6 */	mflr r0
/* 804C1EA8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 804C1EAC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804C1EB0  4B BD 90 21 */	bl func_8009AED0
/* 804C1EB4  7C BD 2B 78 */	mr r29, r5
/* 804C1EB8  7C 7C 1B 78 */	mr r28, r3
/* 804C1EBC  7C 9F 23 78 */	mr r31, r4
/* 804C1EC0  7F A3 EB 78 */	mr r3, r29
/* 804C1EC4  4B EF 8C 2D */	bl sin_s
/* 804C1EC8  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80646140@ha */
/* 804C1ECC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804C1ED0  38 83 61 40 */	addi r4, r3, lit_633@l /* 0x80646140@l */
/* 804C1ED4  7F A3 EB 78 */	mr r3, r29
/* 804C1ED8  C0 44 00 00 */	lfs f2, 0(r4)
/* 804C1EDC  EC 22 00 72 */	fmuls f1, f2, f1
/* 804C1EE0  EC 00 08 2A */	fadds f0, f0, f1
/* 804C1EE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C1EE8  4B EF 8B B5 */	bl cos_s
/* 804C1EEC  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80646140@ha */
/* 804C1EF0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804C1EF4  C0 43 61 40 */	lfs f2, lit_633@l(r3)  /* 0x80646140@l */
/* 804C1EF8  57 80 04 3F */	clrlwi. r0, r28, 0x10
/* 804C1EFC  EC 22 00 72 */	fmuls f1, f2, f1
/* 804C1F00  EC 00 08 2A */	fadds f0, f0, f1
/* 804C1F04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C1F08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C1F0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C1F10  41 82 00 34 */	beq lbl_804C1F44
/* 804C1F14  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C1F18  41 82 00 2C */	beq lbl_804C1F44
/* 804C1F1C  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C1F20  38 81 00 08 */	addi r4, r1, 8
/* 804C1F24  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C1F28  38 60 00 00 */	li r3, 0
/* 804C1F2C  38 A0 00 01 */	li r5, 1
/* 804C1F30  90 C1 00 08 */	stw r6, 8(r1)
/* 804C1F34  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C1F38  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C1F3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C1F40  4B EE 58 F1 */	bl mFI_SetFG_common
lbl_804C1F44:
/* 804C1F44  3B C1 00 40 */	addi r30, r1, 0x40
/* 804C1F48  B3 81 00 3A */	sth r28, 0x3a(r1)
/* 804C1F4C  7F C3 F3 78 */	mr r3, r30
/* 804C1F50  7F E4 FB 78 */	mr r4, r31
/* 804C1F54  4B EF 8F 69 */	bl xyz_t_move
/* 804C1F58  3B E1 00 4C */	addi r31, r1, 0x4c
/* 804C1F5C  38 81 00 20 */	addi r4, r1, 0x20
/* 804C1F60  7F E3 FB 78 */	mr r3, r31
/* 804C1F64  4B EF 8F 59 */	bl xyz_t_move
/* 804C1F68  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646180@ha */
/* 804C1F6C  38 A0 00 07 */	li r5, 7
/* 804C1F70  C0 03 61 80 */	lfs f0, lit_1188@l(r3)  /* 0x80646180@l */
/* 804C1F74  38 80 00 11 */	li r4, 0x11
/* 804C1F78  38 60 00 00 */	li r3, 0
/* 804C1F7C  7F A0 07 35 */	extsh. r0, r29
/* 804C1F80  B0 A1 00 A4 */	sth r5, 0xa4(r1)
/* 804C1F84  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 804C1F88  B0 81 00 9C */	sth r4, 0x9c(r1)
/* 804C1F8C  B0 61 00 BE */	sth r3, 0xbe(r1)
/* 804C1F90  40 81 00 10 */	ble lbl_804C1FA0
/* 804C1F94  38 00 00 74 */	li r0, 0x74
/* 804C1F98  B0 01 00 98 */	sth r0, 0x98(r1)
/* 804C1F9C  48 00 00 0C */	b lbl_804C1FA8
lbl_804C1FA0:
/* 804C1FA0  38 00 00 34 */	li r0, 0x34
/* 804C1FA4  B0 01 00 98 */	sth r0, 0x98(r1)
lbl_804C1FA8:
/* 804C1FA8  A0 01 00 98 */	lhz r0, 0x98(r1)
/* 804C1FAC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C1FB0  41 82 00 1C */	beq lbl_804C1FCC
/* 804C1FB4  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646184@ha */
/* 804C1FB8  38 00 00 1A */	li r0, 0x1a
/* 804C1FBC  C0 03 61 84 */	lfs f0, lit_1311@l(r3)  /* 0x80646184@l */
/* 804C1FC0  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804C1FC4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804C1FC8  48 00 00 18 */	b lbl_804C1FE0
lbl_804C1FCC:
/* 804C1FCC  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646188@ha */
/* 804C1FD0  38 00 00 11 */	li r0, 0x11
/* 804C1FD4  C0 03 61 88 */	lfs f0, lit_1312@l(r3)  /* 0x80646188@l */
/* 804C1FD8  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804C1FDC  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_804C1FE0:
/* 804C1FE0  A0 61 00 3A */	lhz r3, 0x3a(r1)
/* 804C1FE4  38 00 00 00 */	li r0, 0
/* 804C1FE8  B0 01 00 9A */	sth r0, 0x9a(r1)
/* 804C1FEC  28 03 00 08 */	cmplwi r3, 8
/* 804C1FF0  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 804C1FF4  B0 01 00 AC */	sth r0, 0xac(r1)
/* 804C1FF8  41 80 00 0C */	blt lbl_804C2004
/* 804C1FFC  28 03 00 0A */	cmplwi r3, 0xa
/* 804C2000  40 81 00 14 */	ble lbl_804C2014
lbl_804C2004:
/* 804C2004  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C2008  41 80 00 24 */	blt lbl_804C202C
/* 804C200C  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C2010  41 81 00 1C */	bgt lbl_804C202C
lbl_804C2014:
/* 804C2014  7F E5 FB 78 */	mr r5, r31
/* 804C2018  38 81 00 14 */	addi r4, r1, 0x14
/* 804C201C  4B FF DD 31 */	bl bIT_actor_rand_pos_get_plus
/* 804C2020  7F E3 FB 78 */	mr r3, r31
/* 804C2024  38 81 00 14 */	addi r4, r1, 0x14
/* 804C2028  4B EF 8E 95 */	bl xyz_t_move
lbl_804C202C:
/* 804C202C  7F E3 FB 78 */	mr r3, r31
/* 804C2030  7F C4 F3 78 */	mr r4, r30
/* 804C2034  4B EF 90 59 */	bl search_position_distanceXZ
/* 804C2038  A8 81 00 7C */	lha r4, 0x7c(r1)
/* 804C203C  3C 00 43 30 */	lis r0, 0x4330
/* 804C2040  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C2044  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 804C2048  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C204C  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 804C2050  90 01 00 DC */	stw r0, 0xdc(r1)
/* 804C2054  38 83 61 5C */	addi r4, r3, lit_770@l /* 0x8064615C@l */
/* 804C2058  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 804C205C  38 61 00 8C */	addi r3, r1, 0x8c
/* 804C2060  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C2064  38 81 00 90 */	addi r4, r1, 0x90
/* 804C2068  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 804C206C  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C2070  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 804C2074  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C2078  4B FF E7 25 */	bl func_calc_spec_drop_time
/* 804C207C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C2080  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C2084  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C2088  3C 63 00 02 */	addis r3, r3, 2
/* 804C208C  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C2090  80 63 00 00 */	lwz r3, 0(r3)
/* 804C2094  3C 63 00 01 */	addis r3, r3, 1
/* 804C2098  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C209C  4B FF E7 49 */	bl bIT_actor_drop_entry_main
/* 804C20A0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804C20A4  4B BD 8E 79 */	bl func_8009AF1C
/* 804C20A8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 804C20AC  7C 08 03 A6 */	mtlr r0
/* 804C20B0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 804C20B4  4E 80 00 20 */	blr 
