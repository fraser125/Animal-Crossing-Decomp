lbl_805B21C0:
/* 805B21C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B21C4  7C 08 02 A6 */	mflr r0
/* 805B21C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B21CC  39 61 00 30 */	addi r11, r1, 0x30
/* 805B21D0  4B AE 8D 05 */	bl func_8009AED4
/* 805B21D4  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B21D8  7C 7D 1B 78 */	mr r29, r3
/* 805B21DC  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805B21E0  7C 9E 23 78 */	mr r30, r4
/* 805B21E4  7F E3 FB 78 */	mr r3, r31
/* 805B21E8  4B E2 74 59 */	bl get_player_actor_withoutCheck
/* 805B21EC  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B21F0  7F E3 FB 78 */	mr r3, r31
/* 805B21F4  7D 89 03 A6 */	mtctr r12
/* 805B21F8  4E 80 04 21 */	bctrl 
/* 805B21FC  7C 1D 18 40 */	cmplw r29, r3
/* 805B2200  40 82 00 28 */	bne lbl_805B2228
/* 805B2204  7F A3 EB 78 */	mr r3, r29
/* 805B2208  7F C4 F3 78 */	mr r4, r30
/* 805B220C  4B FF FE 19 */	bl aKKR_rewrite_out_data
/* 805B2210  3C 80 80 6C */	lis r4, aKKR_kamakura_enter_data@ha /* 0x806C56F4@ha */
/* 805B2214  7F C3 F3 78 */	mr r3, r30
/* 805B2218  38 84 56 F4 */	addi r4, r4, aKKR_kamakura_enter_data@l /* 0x806C56F4@l */
/* 805B221C  38 A0 00 01 */	li r5, 1
/* 805B2220  4B E3 EF 89 */	bl goto_other_scene
/* 805B2224  48 00 00 60 */	b lbl_805B2284
lbl_805B2228:
/* 805B2228  7F A3 EB 78 */	mr r3, r29
/* 805B222C  7F C4 F3 78 */	mr r4, r30
/* 805B2230  4B FF FE ED */	bl aKKR_check_player
/* 805B2234  2C 03 00 00 */	cmpwi r3, 0
/* 805B2238  41 82 00 4C */	beq lbl_805B2284
/* 805B223C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805B2240  7F C3 F3 78 */	mr r3, r30
/* 805B2244  D0 01 00 08 */	stfs f0, 8(r1)
/* 805B2248  4B E2 73 F9 */	bl get_player_actor_withoutCheck
/* 805B224C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805B2250  3C 60 80 65 */	lis r3, lit_554@ha /* 0x8064A874@ha */
/* 805B2254  38 83 A8 74 */	addi r4, r3, lit_554@l /* 0x8064A874@l */
/* 805B2258  7F C3 F3 78 */	mr r3, r30
/* 805B225C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805B2260  7F A7 EB 78 */	mr r7, r29
/* 805B2264  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B2268  38 81 00 08 */	addi r4, r1, 8
/* 805B226C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805B2270  38 A0 80 00 */	li r5, -32768
/* 805B2274  38 C0 00 01 */	li r6, 1
/* 805B2278  EC 01 00 2A */	fadds f0, f1, f0
/* 805B227C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805B2280  4B E2 84 09 */	bl mPlib_request_main_door_type1
lbl_805B2284:
/* 805B2284  39 61 00 30 */	addi r11, r1, 0x30
/* 805B2288  4B AE 8C 99 */	bl func_8009AF20
/* 805B228C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B2290  7C 08 03 A6 */	mtlr r0
/* 805B2294  38 21 00 30 */	addi r1, r1, 0x30
/* 805B2298  4E 80 00 20 */	blr 
