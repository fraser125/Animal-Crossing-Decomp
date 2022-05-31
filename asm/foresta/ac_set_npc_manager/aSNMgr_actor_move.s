lbl_804993DC:
/* 804993DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804993E0  7C 08 02 A6 */	mflr r0
/* 804993E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804993E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804993EC  7C 7F 1B 78 */	mr r31, r3
/* 804993F0  38 7F 01 7C */	addi r3, r31, 0x17c
/* 804993F4  93 C1 00 08 */	stw r30, 8(r1)
/* 804993F8  7C 9E 23 78 */	mr r30, r4
/* 804993FC  4B FF DF 19 */	bl aSNMgr_get_player_pos
/* 80499400  4B F0 F7 5D */	bl mFI_GetPlayerWade
/* 80499404  2C 03 00 02 */	cmpwi r3, 2
/* 80499408  41 82 00 A0 */	beq lbl_804994A8
/* 8049940C  40 80 00 14 */	bge lbl_80499420
/* 80499410  2C 03 00 00 */	cmpwi r3, 0
/* 80499414  41 82 00 5C */	beq lbl_80499470
/* 80499418  40 80 00 14 */	bge lbl_8049942C
/* 8049941C  48 00 00 8C */	b lbl_804994A8
lbl_80499420:
/* 80499420  2C 03 00 04 */	cmpwi r3, 4
/* 80499424  40 80 00 84 */	bge lbl_804994A8
/* 80499428  48 00 00 30 */	b lbl_80499458
lbl_8049942C:
/* 8049942C  38 7F 02 A0 */	addi r3, r31, 0x2a0
/* 80499430  38 80 00 05 */	li r4, 5
/* 80499434  4B FF ED 41 */	bl aSNMgr_clear_make_npc
/* 80499438  7F E3 FB 78 */	mr r3, r31
/* 8049943C  4B FF DF 7D */	bl aSNMgr_renewal_player_next_block
/* 80499440  7F E3 FB 78 */	mr r3, r31
/* 80499444  4B FF DF A1 */	bl aSNMgr_renewal_set_scope
/* 80499448  7F E3 FB 78 */	mr r3, r31
/* 8049944C  38 80 00 01 */	li r4, 1
/* 80499450  4B FF FF 5D */	bl aSNMgr_setup_set_proc
/* 80499454  48 00 00 54 */	b lbl_804994A8
lbl_80499458:
/* 80499458  7F E3 FB 78 */	mr r3, r31
/* 8049945C  4B FF DF 15 */	bl aSNMgr_renewal_player_now_block
/* 80499460  7F E3 FB 78 */	mr r3, r31
/* 80499464  38 80 00 02 */	li r4, 2
/* 80499468  4B FF FF 45 */	bl aSNMgr_setup_set_proc
/* 8049946C  48 00 00 3C */	b lbl_804994A8
lbl_80499470:
/* 80499470  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 80499474  28 00 00 00 */	cmplwi r0, 0
/* 80499478  40 82 00 30 */	bne lbl_804994A8
/* 8049947C  38 7F 02 A0 */	addi r3, r31, 0x2a0
/* 80499480  38 80 00 05 */	li r4, 5
/* 80499484  4B FF EC F1 */	bl aSNMgr_clear_make_npc
/* 80499488  4B FF DE 0D */	bl aSNMgr_chk_arbeit_and_demo_and_halloween
/* 8049948C  2C 03 00 00 */	cmpwi r3, 0
/* 80499490  40 82 00 18 */	bne lbl_804994A8
/* 80499494  7F E3 FB 78 */	mr r3, r31
/* 80499498  4B FF FA 15 */	bl aSNMgr_force_go_home
/* 8049949C  7F E3 FB 78 */	mr r3, r31
/* 804994A0  7F C4 F3 78 */	mr r4, r30
/* 804994A4  4B FF F4 B9 */	bl aSNMgr_walk_npc
lbl_804994A8:
/* 804994A8  7F E3 FB 78 */	mr r3, r31
/* 804994AC  4B FF EB C9 */	bl aSNMgr_move_event_set
/* 804994B0  81 9F 01 78 */	lwz r12, 0x178(r31)
/* 804994B4  7F E3 FB 78 */	mr r3, r31
/* 804994B8  7D 89 03 A6 */	mtctr r12
/* 804994BC  4E 80 04 21 */	bctrl 
/* 804994C0  7F E3 FB 78 */	mr r3, r31
/* 804994C4  7F C4 F3 78 */	mr r4, r30
/* 804994C8  4B FF ED CD */	bl aSNMgr_make_npc
/* 804994CC  7F E3 FB 78 */	mr r3, r31
/* 804994D0  4B FF FB 2D */	bl aSNMgr_reset_npc
/* 804994D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804994D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804994DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804994E0  7C 08 03 A6 */	mtlr r0
/* 804994E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804994E8  4E 80 00 20 */	blr 
