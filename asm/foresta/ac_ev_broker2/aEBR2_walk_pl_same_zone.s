lbl_8051B384:
/* 8051B384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B388  7C 08 02 A6 */	mflr r0
/* 8051B38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B394  7C 9F 23 78 */	mr r31, r4
/* 8051B398  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B39C  7C 7E 1B 78 */	mr r30, r3
/* 8051B3A0  4B FF FD B5 */	bl aEBR2_message_ctrl
/* 8051B3A4  2C 03 00 01 */	cmpwi r3, 1
/* 8051B3A8  41 82 00 38 */	beq lbl_8051B3E0
/* 8051B3AC  7F C3 F3 78 */	mr r3, r30
/* 8051B3B0  7F E4 FB 78 */	mr r4, r31
/* 8051B3B4  4B FF F9 61 */	bl aEBR2_decide_next_move_act
/* 8051B3B8  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8051B3BC  7C 64 1B 78 */	mr r4, r3
/* 8051B3C0  7C 04 00 00 */	cmpw r4, r0
/* 8051B3C4  41 82 00 10 */	beq lbl_8051B3D4
/* 8051B3C8  7F C3 F3 78 */	mr r3, r30
/* 8051B3CC  48 00 07 99 */	bl aEBR2_setupAction
/* 8051B3D0  48 00 00 10 */	b lbl_8051B3E0
lbl_8051B3D4:
/* 8051B3D4  7F C3 F3 78 */	mr r3, r30
/* 8051B3D8  7F E4 FB 78 */	mr r4, r31
/* 8051B3DC  4B FF FA 25 */	bl aEBR2_search_player
lbl_8051B3E0:
/* 8051B3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B3E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051B3EC  7C 08 03 A6 */	mtlr r0
/* 8051B3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B3F4  4E 80 00 20 */	blr 
