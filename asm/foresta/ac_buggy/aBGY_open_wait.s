lbl_805AA34C:
/* 805AA34C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AA350  7C 08 02 A6 */	mflr r0
/* 805AA354  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AA358  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA35C  4B AF 0B 79 */	bl func_8009AED4
/* 805AA360  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805AA364  7C 7E 1B 78 */	mr r30, r3
/* 805AA368  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805AA36C  7C 9D 23 78 */	mr r29, r4
/* 805AA370  7F E3 FB 78 */	mr r3, r31
/* 805AA374  4B E2 F2 CD */	bl get_player_actor_withoutCheck
/* 805AA378  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805AA37C  7F E3 FB 78 */	mr r3, r31
/* 805AA380  7D 89 03 A6 */	mtctr r12
/* 805AA384  4E 80 04 21 */	bctrl 
/* 805AA388  7C 1E 18 40 */	cmplw r30, r3
/* 805AA38C  40 82 00 28 */	bne lbl_805AA3B4
/* 805AA390  7F C3 F3 78 */	mr r3, r30
/* 805AA394  7F A4 EB 78 */	mr r4, r29
/* 805AA398  4B FF FC C1 */	bl aBGY_rewrite_out_data
/* 805AA39C  3C 80 80 6C */	lis r4, aBGY_buggy_door_data@ha /* 0x806C4680@ha */
/* 805AA3A0  7F A3 EB 78 */	mr r3, r29
/* 805AA3A4  38 84 46 80 */	addi r4, r4, aBGY_buggy_door_data@l /* 0x806C4680@l */
/* 805AA3A8  38 A0 00 01 */	li r5, 1
/* 805AA3AC  4B E4 6D FD */	bl goto_other_scene
/* 805AA3B0  48 00 00 B0 */	b lbl_805AA460
lbl_805AA3B4:
/* 805AA3B4  7F A3 EB 78 */	mr r3, r29
/* 805AA3B8  4B E3 3F C9 */	bl mPlib_check_player_actor_main_index_OutDoorMove
/* 805AA3BC  2C 03 00 00 */	cmpwi r3, 0
/* 805AA3C0  40 82 00 A0 */	bne lbl_805AA460
/* 805AA3C4  7F C3 F3 78 */	mr r3, r30
/* 805AA3C8  7F A4 EB 78 */	mr r4, r29
/* 805AA3CC  4B FF FD 95 */	bl aBGY_check_player
/* 805AA3D0  2C 03 00 00 */	cmpwi r3, 0
/* 805AA3D4  41 82 00 10 */	beq lbl_805AA3E4
/* 805AA3D8  4B FF FE 45 */	bl aBGY_open_check
/* 805AA3DC  2C 03 00 02 */	cmpwi r3, 2
/* 805AA3E0  41 82 00 14 */	beq lbl_805AA3F4
lbl_805AA3E4:
/* 805AA3E4  7F C3 F3 78 */	mr r3, r30
/* 805AA3E8  38 80 00 02 */	li r4, 2
/* 805AA3EC  48 00 00 ED */	bl aBGY_setup_action
/* 805AA3F0  48 00 00 70 */	b lbl_805AA460
lbl_805AA3F4:
/* 805AA3F4  7F C3 F3 78 */	mr r3, r30
/* 805AA3F8  7F A4 EB 78 */	mr r4, r29
/* 805AA3FC  4B FF FD 65 */	bl aBGY_check_player
/* 805AA400  2C 03 00 02 */	cmpwi r3, 2
/* 805AA404  40 82 00 5C */	bne lbl_805AA460
/* 805AA408  7F A3 EB 78 */	mr r3, r29
/* 805AA40C  4B FF FC FD */	bl aBGY_check_player2
/* 805AA410  2C 03 00 00 */	cmpwi r3, 0
/* 805AA414  41 82 00 4C */	beq lbl_805AA460
/* 805AA418  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805AA41C  7F A3 EB 78 */	mr r3, r29
/* 805AA420  D0 01 00 08 */	stfs f0, 8(r1)
/* 805AA424  4B E2 F2 1D */	bl get_player_actor_withoutCheck
/* 805AA428  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805AA42C  3C 60 80 65 */	lis r3, lit_631@ha /* 0x8064A600@ha */
/* 805AA430  38 83 A6 00 */	addi r4, r3, lit_631@l /* 0x8064A600@l */
/* 805AA434  7F A3 EB 78 */	mr r3, r29
/* 805AA438  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805AA43C  7F C7 F3 78 */	mr r7, r30
/* 805AA440  C0 24 00 00 */	lfs f1, 0(r4)
/* 805AA444  38 81 00 08 */	addi r4, r1, 8
/* 805AA448  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805AA44C  38 A0 80 00 */	li r5, -32768
/* 805AA450  38 C0 00 01 */	li r6, 1
/* 805AA454  EC 01 00 2A */	fadds f0, f1, f0
/* 805AA458  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805AA45C  4B E3 02 2D */	bl mPlib_request_main_door_type1
lbl_805AA460:
/* 805AA460  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA464  4B AF 0A BD */	bl func_8009AF20
/* 805AA468  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AA46C  7C 08 03 A6 */	mtlr r0
/* 805AA470  38 21 00 30 */	addi r1, r1, 0x30
/* 805AA474  4E 80 00 20 */	blr 
