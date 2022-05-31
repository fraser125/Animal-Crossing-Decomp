lbl_8062D1B8:
/* 8062D1B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D1BC  7C 08 02 A6 */	mflr r0
/* 8062D1C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D1C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D1C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8062D1CC  7C 7E 1B 78 */	mr r30, r3
/* 8062D1D0  7F DF F3 78 */	mr r31, r30
/* 8062D1D4  4B FF FA 81 */	bl save_menu_move_main
/* 8062D1D8  7F E3 FB 78 */	mr r3, r31
/* 8062D1DC  4B FF FF 25 */	bl save_menu_draw_main
/* 8062D1E0  83 FE 00 00 */	lwz r31, 0(r30)
/* 8062D1E4  7F C3 F3 78 */	mr r3, r30
/* 8062D1E8  7F E4 FB 78 */	mr r4, r31
/* 8062D1EC  4B DD 7A 09 */	bl game_debug_draw_last
/* 8062D1F0  7F E3 FB 78 */	mr r3, r31
/* 8062D1F4  4B DD 7B 85 */	bl game_draw_last
/* 8062D1F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D1FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D200  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062D204  7C 08 03 A6 */	mtlr r0
/* 8062D208  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D20C  4E 80 00 20 */	blr 
