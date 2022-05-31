lbl_8041E3BC:
/* 8041E3BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041E3C0  7C 08 02 A6 */	mflr r0
/* 8041E3C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041E3C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E3CC  4B C7 CB 09 */	bl func_8009AED4
/* 8041E3D0  7C 9E 23 78 */	mr r30, r4
/* 8041E3D4  7C 7D 1B 78 */	mr r29, r3
/* 8041E3D8  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E3DC  3B E0 00 02 */	li r31, 2
/* 8041E3E0  4B F7 F8 0D */	bl mEv_check_keep
/* 8041E3E4  2C 03 00 00 */	cmpwi r3, 0
/* 8041E3E8  40 82 00 10 */	bne lbl_8041E3F8
/* 8041E3EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E3F0  4B F7 F7 95 */	bl mEv_set_keep
/* 8041E3F4  3B E0 00 01 */	li r31, 1
lbl_8041E3F8:
/* 8041E3F8  2C 1F 00 00 */	cmpwi r31, 0
/* 8041E3FC  41 82 00 30 */	beq lbl_8041E42C
/* 8041E400  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D006@ha */
/* 8041E404  7F A3 EB 78 */	mr r3, r29
/* 8041E408  7F C4 F3 78 */	mr r4, r30
/* 8041E40C  38 C0 00 51 */	li r6, 0x51
/* 8041E410  38 A5 D0 06 */	addi r5, r5, 0xD006 /* 0x0000D006@l */
/* 8041E414  38 E0 00 01 */	li r7, 1
/* 8041E418  4B FF DB 95 */	bl make_actor_in_free_block
/* 8041E41C  3C 80 81 1D */	lis r4, spppp@ha /* 0x811CB960@ha */
/* 8041E420  90 64 B9 60 */	stw r3, spppp@l(r4)  /* 0x811CB960@l */
/* 8041E424  38 60 00 04 */	li r3, 4
/* 8041E428  4B F7 C5 51 */	bl mEv_EventON
lbl_8041E42C:
/* 8041E42C  7F E3 FB 78 */	mr r3, r31
/* 8041E430  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E434  4B C7 CA ED */	bl func_8009AF20
/* 8041E438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041E43C  7C 08 03 A6 */	mtlr r0
/* 8041E440  38 21 00 20 */	addi r1, r1, 0x20
/* 8041E444  4E 80 00 20 */	blr 
