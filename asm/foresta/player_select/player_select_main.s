lbl_8062C680:
/* 8062C680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062C684  7C 08 02 A6 */	mflr r0
/* 8062C688  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062C68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062C690  93 C1 00 08 */	stw r30, 8(r1)
/* 8062C694  7C 7E 1B 78 */	mr r30, r3
/* 8062C698  7F DF F3 78 */	mr r31, r30
/* 8062C69C  4B FF FA 99 */	bl player_select_move_main
/* 8062C6A0  7F E3 FB 78 */	mr r3, r31
/* 8062C6A4  4B FF FF 21 */	bl player_select_draw_main
/* 8062C6A8  83 FE 00 00 */	lwz r31, 0(r30)
/* 8062C6AC  7F C3 F3 78 */	mr r3, r30
/* 8062C6B0  7F E4 FB 78 */	mr r4, r31
/* 8062C6B4  4B DD 85 41 */	bl game_debug_draw_last
/* 8062C6B8  7F E3 FB 78 */	mr r3, r31
/* 8062C6BC  4B DD 86 BD */	bl game_draw_last
/* 8062C6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062C6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062C6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062C6CC  7C 08 03 A6 */	mtlr r0
/* 8062C6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8062C6D4  4E 80 00 20 */	blr 
