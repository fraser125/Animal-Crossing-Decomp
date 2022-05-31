lbl_8041DE48:
/* 8041DE48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041DE4C  7C 08 02 A6 */	mflr r0
/* 8041DE50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041DE54  39 61 00 20 */	addi r11, r1, 0x20
/* 8041DE58  4B C7 D0 7D */	bl func_8009AED4
/* 8041DE5C  7C 9E 23 78 */	mr r30, r4
/* 8041DE60  7C 7D 1B 78 */	mr r29, r3
/* 8041DE64  80 64 00 00 */	lwz r3, 0(r4)
/* 8041DE68  3B E0 00 02 */	li r31, 2
/* 8041DE6C  4B F7 FD 81 */	bl mEv_check_keep
/* 8041DE70  2C 03 00 00 */	cmpwi r3, 0
/* 8041DE74  40 82 00 10 */	bne lbl_8041DE84
/* 8041DE78  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041DE7C  4B F7 FD 09 */	bl mEv_set_keep
/* 8041DE80  3B E0 00 01 */	li r31, 1
lbl_8041DE84:
/* 8041DE84  2C 1F 00 00 */	cmpwi r31, 0
/* 8041DE88  41 82 00 30 */	beq lbl_8041DEB8
/* 8041DE8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D000@ha */
/* 8041DE90  7F A3 EB 78 */	mr r3, r29
/* 8041DE94  7F C4 F3 78 */	mr r4, r30
/* 8041DE98  38 C0 00 51 */	li r6, 0x51
/* 8041DE9C  38 A5 D0 00 */	addi r5, r5, 0xD000 /* 0x0000D000@l */
/* 8041DEA0  38 E0 00 01 */	li r7, 1
/* 8041DEA4  4B FF E1 09 */	bl make_actor_in_free_block
/* 8041DEA8  3C 80 81 1D */	lis r4, spppp@ha /* 0x811CB960@ha */
/* 8041DEAC  90 64 B9 60 */	stw r3, spppp@l(r4)  /* 0x811CB960@l */
/* 8041DEB0  38 60 00 03 */	li r3, 3
/* 8041DEB4  4B F7 CA C5 */	bl mEv_EventON
lbl_8041DEB8:
/* 8041DEB8  7F E3 FB 78 */	mr r3, r31
/* 8041DEBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8041DEC0  4B C7 D0 61 */	bl func_8009AF20
/* 8041DEC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041DEC8  7C 08 03 A6 */	mtlr r0
/* 8041DECC  38 21 00 20 */	addi r1, r1, 0x20
/* 8041DED0  4E 80 00 20 */	blr 
