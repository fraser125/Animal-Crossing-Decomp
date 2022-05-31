lbl_804C92B8:
/* 804C92B8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 804C92BC  7C 08 02 A6 */	mflr r0
/* 804C92C0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 804C92C4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804C92C8  4B BD 1C 09 */	bl func_8009AED0
/* 804C92CC  7C BD 2B 78 */	mr r29, r5
/* 804C92D0  7C 7C 1B 78 */	mr r28, r3
/* 804C92D4  7C 9F 23 78 */	mr r31, r4
/* 804C92D8  7F A3 EB 78 */	mr r3, r29
/* 804C92DC  4B EF 18 15 */	bl sin_s
/* 804C92E0  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806461E0@ha */
/* 804C92E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804C92E8  38 83 61 E0 */	addi r4, r3, lit_633@l /* 0x806461E0@l */
/* 804C92EC  7F A3 EB 78 */	mr r3, r29
/* 804C92F0  C0 44 00 00 */	lfs f2, 0(r4)
/* 804C92F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 804C92F8  EC 00 08 2A */	fadds f0, f0, f1
/* 804C92FC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C9300  4B EF 17 9D */	bl cos_s
/* 804C9304  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806461E0@ha */
/* 804C9308  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804C930C  C0 43 61 E0 */	lfs f2, lit_633@l(r3)  /* 0x806461E0@l */
/* 804C9310  57 80 04 3F */	clrlwi. r0, r28, 0x10
/* 804C9314  EC 22 00 72 */	fmuls f1, f2, f1
/* 804C9318  EC 00 08 2A */	fadds f0, f0, f1
/* 804C931C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C9320  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C9324  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C9328  41 82 00 34 */	beq lbl_804C935C
/* 804C932C  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C9330  41 82 00 2C */	beq lbl_804C935C
/* 804C9334  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C9338  38 81 00 08 */	addi r4, r1, 8
/* 804C933C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C9340  38 60 00 00 */	li r3, 0
/* 804C9344  38 A0 00 01 */	li r5, 1
/* 804C9348  90 C1 00 08 */	stw r6, 8(r1)
/* 804C934C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C9350  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C9354  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C9358  4B ED E4 D9 */	bl mFI_SetFG_common
lbl_804C935C:
/* 804C935C  3B C1 00 40 */	addi r30, r1, 0x40
/* 804C9360  B3 81 00 3A */	sth r28, 0x3a(r1)
/* 804C9364  7F C3 F3 78 */	mr r3, r30
/* 804C9368  7F E4 FB 78 */	mr r4, r31
/* 804C936C  4B EF 1B 51 */	bl xyz_t_move
/* 804C9370  3B E1 00 4C */	addi r31, r1, 0x4c
/* 804C9374  38 81 00 20 */	addi r4, r1, 0x20
/* 804C9378  7F E3 FB 78 */	mr r3, r31
/* 804C937C  4B EF 1B 41 */	bl xyz_t_move
/* 804C9380  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646220@ha */
/* 804C9384  38 A0 00 07 */	li r5, 7
/* 804C9388  C0 03 62 20 */	lfs f0, lit_1188@l(r3)  /* 0x80646220@l */
/* 804C938C  38 80 00 11 */	li r4, 0x11
/* 804C9390  38 60 00 00 */	li r3, 0
/* 804C9394  7F A0 07 35 */	extsh. r0, r29
/* 804C9398  B0 A1 00 A4 */	sth r5, 0xa4(r1)
/* 804C939C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 804C93A0  B0 81 00 9C */	sth r4, 0x9c(r1)
/* 804C93A4  B0 61 00 BE */	sth r3, 0xbe(r1)
/* 804C93A8  40 81 00 10 */	ble lbl_804C93B8
/* 804C93AC  38 00 00 74 */	li r0, 0x74
/* 804C93B0  B0 01 00 98 */	sth r0, 0x98(r1)
/* 804C93B4  48 00 00 0C */	b lbl_804C93C0
lbl_804C93B8:
/* 804C93B8  38 00 00 34 */	li r0, 0x34
/* 804C93BC  B0 01 00 98 */	sth r0, 0x98(r1)
lbl_804C93C0:
/* 804C93C0  A0 01 00 98 */	lhz r0, 0x98(r1)
/* 804C93C4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C93C8  41 82 00 1C */	beq lbl_804C93E4
/* 804C93CC  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646224@ha */
/* 804C93D0  38 00 00 1A */	li r0, 0x1a
/* 804C93D4  C0 03 62 24 */	lfs f0, lit_1311@l(r3)  /* 0x80646224@l */
/* 804C93D8  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804C93DC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804C93E0  48 00 00 18 */	b lbl_804C93F8
lbl_804C93E4:
/* 804C93E4  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646228@ha */
/* 804C93E8  38 00 00 11 */	li r0, 0x11
/* 804C93EC  C0 03 62 28 */	lfs f0, lit_1312@l(r3)  /* 0x80646228@l */
/* 804C93F0  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804C93F4  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_804C93F8:
/* 804C93F8  A0 61 00 3A */	lhz r3, 0x3a(r1)
/* 804C93FC  38 00 00 00 */	li r0, 0
/* 804C9400  B0 01 00 9A */	sth r0, 0x9a(r1)
/* 804C9404  28 03 00 08 */	cmplwi r3, 8
/* 804C9408  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 804C940C  B0 01 00 AC */	sth r0, 0xac(r1)
/* 804C9410  41 80 00 0C */	blt lbl_804C941C
/* 804C9414  28 03 00 0A */	cmplwi r3, 0xa
/* 804C9418  40 81 00 14 */	ble lbl_804C942C
lbl_804C941C:
/* 804C941C  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C9420  41 80 00 24 */	blt lbl_804C9444
/* 804C9424  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C9428  41 81 00 1C */	bgt lbl_804C9444
lbl_804C942C:
/* 804C942C  7F E5 FB 78 */	mr r5, r31
/* 804C9430  38 81 00 14 */	addi r4, r1, 0x14
/* 804C9434  4B FF DD 31 */	bl bIT_actor_rand_pos_get_plus
/* 804C9438  7F E3 FB 78 */	mr r3, r31
/* 804C943C  38 81 00 14 */	addi r4, r1, 0x14
/* 804C9440  4B EF 1A 7D */	bl xyz_t_move
lbl_804C9444:
/* 804C9444  7F E3 FB 78 */	mr r3, r31
/* 804C9448  7F C4 F3 78 */	mr r4, r30
/* 804C944C  4B EF 1C 41 */	bl search_position_distanceXZ
/* 804C9450  A8 81 00 7C */	lha r4, 0x7c(r1)
/* 804C9454  3C 00 43 30 */	lis r0, 0x4330
/* 804C9458  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C945C  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 804C9460  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C9464  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 804C9468  90 01 00 DC */	stw r0, 0xdc(r1)
/* 804C946C  38 83 61 FC */	addi r4, r3, lit_770@l /* 0x806461FC@l */
/* 804C9470  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 804C9474  38 61 00 8C */	addi r3, r1, 0x8c
/* 804C9478  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C947C  38 81 00 90 */	addi r4, r1, 0x90
/* 804C9480  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 804C9484  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C9488  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 804C948C  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C9490  4B FF E7 25 */	bl func_calc_spec_drop_time
/* 804C9494  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C9498  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C949C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C94A0  3C 63 00 02 */	addis r3, r3, 2
/* 804C94A4  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C94A8  80 63 00 00 */	lwz r3, 0(r3)
/* 804C94AC  3C 63 00 01 */	addis r3, r3, 1
/* 804C94B0  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C94B4  4B FF E7 49 */	bl bIT_actor_drop_entry_main
/* 804C94B8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804C94BC  4B BD 1A 61 */	bl func_8009AF1C
/* 804C94C0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 804C94C4  7C 08 03 A6 */	mtlr r0
/* 804C94C8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 804C94CC  4E 80 00 20 */	blr 
