lbl_804BA3A8:
/* 804BA3A8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 804BA3AC  7C 08 02 A6 */	mflr r0
/* 804BA3B0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 804BA3B4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804BA3B8  4B BE 0B 19 */	bl func_8009AED0
/* 804BA3BC  7C BD 2B 78 */	mr r29, r5
/* 804BA3C0  7C 7C 1B 78 */	mr r28, r3
/* 804BA3C4  7C 9F 23 78 */	mr r31, r4
/* 804BA3C8  7F A3 EB 78 */	mr r3, r29
/* 804BA3CC  4B F0 07 25 */	bl sin_s
/* 804BA3D0  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80646090@ha */
/* 804BA3D4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804BA3D8  38 83 60 90 */	addi r4, r3, lit_633@l /* 0x80646090@l */
/* 804BA3DC  7F A3 EB 78 */	mr r3, r29
/* 804BA3E0  C0 44 00 00 */	lfs f2, 0(r4)
/* 804BA3E4  EC 22 00 72 */	fmuls f1, f2, f1
/* 804BA3E8  EC 00 08 2A */	fadds f0, f0, f1
/* 804BA3EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804BA3F0  4B F0 06 AD */	bl cos_s
/* 804BA3F4  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80646090@ha */
/* 804BA3F8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804BA3FC  C0 43 60 90 */	lfs f2, lit_633@l(r3)  /* 0x80646090@l */
/* 804BA400  57 80 04 3F */	clrlwi. r0, r28, 0x10
/* 804BA404  EC 22 00 72 */	fmuls f1, f2, f1
/* 804BA408  EC 00 08 2A */	fadds f0, f0, f1
/* 804BA40C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804BA410  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804BA414  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804BA418  41 82 00 34 */	beq lbl_804BA44C
/* 804BA41C  28 00 FF FF */	cmplwi r0, 0xffff
/* 804BA420  41 82 00 2C */	beq lbl_804BA44C
/* 804BA424  80 DF 00 00 */	lwz r6, 0(r31)
/* 804BA428  38 81 00 08 */	addi r4, r1, 8
/* 804BA42C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804BA430  38 60 00 00 */	li r3, 0
/* 804BA434  38 A0 00 01 */	li r5, 1
/* 804BA438  90 C1 00 08 */	stw r6, 8(r1)
/* 804BA43C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BA440  80 1F 00 08 */	lwz r0, 8(r31)
/* 804BA444  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BA448  4B EE D3 E9 */	bl mFI_SetFG_common
lbl_804BA44C:
/* 804BA44C  3B C1 00 40 */	addi r30, r1, 0x40
/* 804BA450  B3 81 00 3A */	sth r28, 0x3a(r1)
/* 804BA454  7F C3 F3 78 */	mr r3, r30
/* 804BA458  7F E4 FB 78 */	mr r4, r31
/* 804BA45C  4B F0 0A 61 */	bl xyz_t_move
/* 804BA460  3B E1 00 4C */	addi r31, r1, 0x4c
/* 804BA464  38 81 00 20 */	addi r4, r1, 0x20
/* 804BA468  7F E3 FB 78 */	mr r3, r31
/* 804BA46C  4B F0 0A 51 */	bl xyz_t_move
/* 804BA470  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x806460D0@ha */
/* 804BA474  38 A0 00 07 */	li r5, 7
/* 804BA478  C0 03 60 D0 */	lfs f0, lit_1188@l(r3)  /* 0x806460D0@l */
/* 804BA47C  38 80 00 11 */	li r4, 0x11
/* 804BA480  38 60 00 00 */	li r3, 0
/* 804BA484  7F A0 07 35 */	extsh. r0, r29
/* 804BA488  B0 A1 00 A4 */	sth r5, 0xa4(r1)
/* 804BA48C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 804BA490  B0 81 00 9C */	sth r4, 0x9c(r1)
/* 804BA494  B0 61 00 BE */	sth r3, 0xbe(r1)
/* 804BA498  40 81 00 10 */	ble lbl_804BA4A8
/* 804BA49C  38 00 00 74 */	li r0, 0x74
/* 804BA4A0  B0 01 00 98 */	sth r0, 0x98(r1)
/* 804BA4A4  48 00 00 0C */	b lbl_804BA4B0
lbl_804BA4A8:
/* 804BA4A8  38 00 00 34 */	li r0, 0x34
/* 804BA4AC  B0 01 00 98 */	sth r0, 0x98(r1)
lbl_804BA4B0:
/* 804BA4B0  A0 01 00 98 */	lhz r0, 0x98(r1)
/* 804BA4B4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804BA4B8  41 82 00 1C */	beq lbl_804BA4D4
/* 804BA4BC  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x806460D4@ha */
/* 804BA4C0  38 00 00 1A */	li r0, 0x1a
/* 804BA4C4  C0 03 60 D4 */	lfs f0, lit_1311@l(r3)  /* 0x806460D4@l */
/* 804BA4C8  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804BA4CC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804BA4D0  48 00 00 18 */	b lbl_804BA4E8
lbl_804BA4D4:
/* 804BA4D4  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x806460D8@ha */
/* 804BA4D8  38 00 00 11 */	li r0, 0x11
/* 804BA4DC  C0 03 60 D8 */	lfs f0, lit_1312@l(r3)  /* 0x806460D8@l */
/* 804BA4E0  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804BA4E4  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_804BA4E8:
/* 804BA4E8  A0 61 00 3A */	lhz r3, 0x3a(r1)
/* 804BA4EC  38 00 00 00 */	li r0, 0
/* 804BA4F0  B0 01 00 9A */	sth r0, 0x9a(r1)
/* 804BA4F4  28 03 00 08 */	cmplwi r3, 8
/* 804BA4F8  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 804BA4FC  B0 01 00 AC */	sth r0, 0xac(r1)
/* 804BA500  41 80 00 0C */	blt lbl_804BA50C
/* 804BA504  28 03 00 0A */	cmplwi r3, 0xa
/* 804BA508  40 81 00 14 */	ble lbl_804BA51C
lbl_804BA50C:
/* 804BA50C  28 03 25 14 */	cmplwi r3, 0x2514
/* 804BA510  41 80 00 24 */	blt lbl_804BA534
/* 804BA514  28 03 25 1B */	cmplwi r3, 0x251b
/* 804BA518  41 81 00 1C */	bgt lbl_804BA534
lbl_804BA51C:
/* 804BA51C  7F E5 FB 78 */	mr r5, r31
/* 804BA520  38 81 00 14 */	addi r4, r1, 0x14
/* 804BA524  4B FF DD 31 */	bl bIT_actor_rand_pos_get_plus
/* 804BA528  7F E3 FB 78 */	mr r3, r31
/* 804BA52C  38 81 00 14 */	addi r4, r1, 0x14
/* 804BA530  4B F0 09 8D */	bl xyz_t_move
lbl_804BA534:
/* 804BA534  7F E3 FB 78 */	mr r3, r31
/* 804BA538  7F C4 F3 78 */	mr r4, r30
/* 804BA53C  4B F0 0B 51 */	bl search_position_distanceXZ
/* 804BA540  A8 81 00 7C */	lha r4, 0x7c(r1)
/* 804BA544  3C 00 43 30 */	lis r0, 0x4330
/* 804BA548  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804BA54C  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 804BA550  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804BA554  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 804BA558  90 01 00 DC */	stw r0, 0xdc(r1)
/* 804BA55C  38 83 60 AC */	addi r4, r3, lit_770@l /* 0x806460AC@l */
/* 804BA560  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 804BA564  38 61 00 8C */	addi r3, r1, 0x8c
/* 804BA568  C8 64 00 00 */	lfd f3, 0(r4)
/* 804BA56C  38 81 00 90 */	addi r4, r1, 0x90
/* 804BA570  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 804BA574  EC 44 10 28 */	fsubs f2, f4, f2
/* 804BA578  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 804BA57C  EC 60 18 28 */	fsubs f3, f0, f3
/* 804BA580  4B FF E7 25 */	bl func_calc_spec_drop_time
/* 804BA584  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BA588  38 81 00 2C */	addi r4, r1, 0x2c
/* 804BA58C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BA590  3C 63 00 02 */	addis r3, r3, 2
/* 804BA594  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804BA598  80 63 00 00 */	lwz r3, 0(r3)
/* 804BA59C  3C 63 00 01 */	addis r3, r3, 1
/* 804BA5A0  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804BA5A4  4B FF E7 49 */	bl bIT_actor_drop_entry_main
/* 804BA5A8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804BA5AC  4B BE 09 71 */	bl func_8009AF1C
/* 804BA5B0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 804BA5B4  7C 08 03 A6 */	mtlr r0
/* 804BA5B8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 804BA5BC  4E 80 00 20 */	blr 
