lbl_8051B3F8:
/* 8051B3F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B3FC  7C 08 02 A6 */	mflr r0
/* 8051B400  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B408  7C 9F 23 78 */	mr r31, r4
/* 8051B40C  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B410  7C 7E 1B 78 */	mr r30, r3
/* 8051B414  4B FF FD 41 */	bl aEBR2_message_ctrl
/* 8051B418  2C 03 00 01 */	cmpwi r3, 1
/* 8051B41C  41 82 00 38 */	beq lbl_8051B454
/* 8051B420  7F C3 F3 78 */	mr r3, r30
/* 8051B424  7F E4 FB 78 */	mr r4, r31
/* 8051B428  4B FF F8 ED */	bl aEBR2_decide_next_move_act
/* 8051B42C  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8051B430  7C 64 1B 78 */	mr r4, r3
/* 8051B434  7C 04 00 00 */	cmpw r4, r0
/* 8051B438  41 82 00 10 */	beq lbl_8051B448
/* 8051B43C  7F C3 F3 78 */	mr r3, r30
/* 8051B440  48 00 07 25 */	bl aEBR2_setupAction
/* 8051B444  48 00 00 10 */	b lbl_8051B454
lbl_8051B448:
/* 8051B448  7F C3 F3 78 */	mr r3, r30
/* 8051B44C  7F E4 FB 78 */	mr r4, r31
/* 8051B450  4B FF FA 31 */	bl aEBR2_search_player2
lbl_8051B454:
/* 8051B454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B45C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051B460  7C 08 03 A6 */	mtlr r0
/* 8051B464  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B468  4E 80 00 20 */	blr 
