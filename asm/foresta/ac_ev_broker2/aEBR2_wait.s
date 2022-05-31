lbl_8051B310:
/* 8051B310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B314  7C 08 02 A6 */	mflr r0
/* 8051B318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B31C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B320  7C 9F 23 78 */	mr r31, r4
/* 8051B324  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B328  7C 7E 1B 78 */	mr r30, r3
/* 8051B32C  4B FF FE 29 */	bl aEBR2_message_ctrl
/* 8051B330  2C 03 00 01 */	cmpwi r3, 1
/* 8051B334  41 82 00 38 */	beq lbl_8051B36C
/* 8051B338  7F C3 F3 78 */	mr r3, r30
/* 8051B33C  7F E4 FB 78 */	mr r4, r31
/* 8051B340  4B FF F9 D5 */	bl aEBR2_decide_next_move_act
/* 8051B344  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8051B348  7C 64 1B 78 */	mr r4, r3
/* 8051B34C  7C 04 00 00 */	cmpw r4, r0
/* 8051B350  41 82 00 10 */	beq lbl_8051B360
/* 8051B354  7F C3 F3 78 */	mr r3, r30
/* 8051B358  48 00 08 0D */	bl aEBR2_setupAction
/* 8051B35C  48 00 00 10 */	b lbl_8051B36C
lbl_8051B360:
/* 8051B360  7F C3 F3 78 */	mr r3, r30
/* 8051B364  7F E4 FB 78 */	mr r4, r31
/* 8051B368  4B FF FA 99 */	bl aEBR2_search_player
lbl_8051B36C:
/* 8051B36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B374  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051B378  7C 08 03 A6 */	mtlr r0
/* 8051B37C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B380  4E 80 00 20 */	blr 
