lbl_804C20B8:
/* 804C20B8  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804C20BC  7C 08 02 A6 */	mflr r0
/* 804C20C0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804C20C4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804C20C8  4B BD 8E 01 */	bl func_8009AEC8
/* 804C20CC  B0 81 00 22 */	sth r4, 0x22(r1)
/* 804C20D0  3B C1 00 28 */	addi r30, r1, 0x28
/* 804C20D4  7C 7D 1B 78 */	mr r29, r3
/* 804C20D8  7C DA 33 78 */	mr r26, r6
/* 804C20DC  7C FB 3B 78 */	mr r27, r7
/* 804C20E0  7D 1C 43 78 */	mr r28, r8
/* 804C20E4  7F C3 F3 78 */	mr r3, r30
/* 804C20E8  7C A4 2B 78 */	mr r4, r5
/* 804C20EC  4B EF 8D D1 */	bl xyz_t_move
/* 804C20F0  3B E1 00 34 */	addi r31, r1, 0x34
/* 804C20F4  7F 44 D3 78 */	mr r4, r26
/* 804C20F8  7F E3 FB 78 */	mr r3, r31
/* 804C20FC  4B EF 8D C1 */	bl xyz_t_move
/* 804C2100  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646180@ha */
/* 804C2104  57 60 06 31 */	rlwinm. r0, r27, 0, 0x18, 0x18
/* 804C2108  C0 03 61 80 */	lfs f0, lit_1188@l(r3)  /* 0x80646180@l */
/* 804C210C  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 804C2110  B3 61 00 80 */	sth r27, 0x80(r1)
/* 804C2114  B3 81 00 A6 */	sth r28, 0xa6(r1)
/* 804C2118  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804C211C  41 82 00 10 */	beq lbl_804C212C
/* 804C2120  38 00 00 2E */	li r0, 0x2e
/* 804C2124  B0 01 00 94 */	sth r0, 0x94(r1)
/* 804C2128  48 00 00 0C */	b lbl_804C2134
lbl_804C212C:
/* 804C212C  38 00 00 00 */	li r0, 0
/* 804C2130  B0 01 00 94 */	sth r0, 0x94(r1)
lbl_804C2134:
/* 804C2134  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804C2138  41 82 00 24 */	beq lbl_804C215C
/* 804C213C  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646184@ha */
/* 804C2140  38 80 00 1A */	li r4, 0x1a
/* 804C2144  C0 03 61 84 */	lfs f0, lit_1311@l(r3)  /* 0x80646184@l */
/* 804C2148  38 00 00 00 */	li r0, 0
/* 804C214C  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804C2150  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804C2154  B0 01 00 82 */	sth r0, 0x82(r1)
/* 804C2158  48 00 00 20 */	b lbl_804C2178
lbl_804C215C:
/* 804C215C  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646188@ha */
/* 804C2160  38 80 00 0E */	li r4, 0xe
/* 804C2164  C0 03 61 88 */	lfs f0, lit_1312@l(r3)  /* 0x80646188@l */
/* 804C2168  38 00 00 01 */	li r0, 1
/* 804C216C  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804C2170  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804C2174  B0 01 00 82 */	sth r0, 0x82(r1)
lbl_804C2178:
/* 804C2178  A0 61 00 22 */	lhz r3, 0x22(r1)
/* 804C217C  38 00 00 00 */	li r0, 0
/* 804C2180  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 804C2184  28 03 00 08 */	cmplwi r3, 8
/* 804C2188  41 80 00 0C */	blt lbl_804C2194
/* 804C218C  28 03 00 0A */	cmplwi r3, 0xa
/* 804C2190  40 81 00 14 */	ble lbl_804C21A4
lbl_804C2194:
/* 804C2194  28 03 25 14 */	cmplwi r3, 0x2514
/* 804C2198  41 80 00 24 */	blt lbl_804C21BC
/* 804C219C  28 03 25 1B */	cmplwi r3, 0x251b
/* 804C21A0  41 81 00 1C */	bgt lbl_804C21BC
lbl_804C21A4:
/* 804C21A4  7F E5 FB 78 */	mr r5, r31
/* 804C21A8  38 81 00 08 */	addi r4, r1, 8
/* 804C21AC  4B FF DB A1 */	bl bIT_actor_rand_pos_get_plus
/* 804C21B0  7F E3 FB 78 */	mr r3, r31
/* 804C21B4  38 81 00 08 */	addi r4, r1, 8
/* 804C21B8  4B EF 8D 05 */	bl xyz_t_move
lbl_804C21BC:
/* 804C21BC  7F E3 FB 78 */	mr r3, r31
/* 804C21C0  7F C4 F3 78 */	mr r4, r30
/* 804C21C4  4B EF 8E C9 */	bl search_position_distanceXZ
/* 804C21C8  A8 81 00 64 */	lha r4, 0x64(r1)
/* 804C21CC  3C 00 43 30 */	lis r0, 0x4330
/* 804C21D0  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C21D4  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 804C21D8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C21DC  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 804C21E0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804C21E4  38 83 61 5C */	addi r4, r3, lit_770@l /* 0x8064615C@l */
/* 804C21E8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 804C21EC  38 61 00 74 */	addi r3, r1, 0x74
/* 804C21F0  C8 64 00 00 */	lfd f3, 0(r4)
/* 804C21F4  38 81 00 78 */	addi r4, r1, 0x78
/* 804C21F8  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 804C21FC  EC 44 10 28 */	fsubs f2, f4, f2
/* 804C2200  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 804C2204  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C2208  4B FF E5 95 */	bl func_calc_spec_drop_time
/* 804C220C  7F A3 EB 78 */	mr r3, r29
/* 804C2210  38 81 00 14 */	addi r4, r1, 0x14
/* 804C2214  4B FF E5 D1 */	bl bIT_actor_drop_entry_main
/* 804C2218  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804C221C  4B BD 8C F9 */	bl func_8009AF14
/* 804C2220  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804C2224  7C 08 03 A6 */	mtlr r0
/* 804C2228  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804C222C  4E 80 00 20 */	blr 
