lbl_8054A250:
/* 8054A250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A254  7C 08 02 A6 */	mflr r0
/* 8054A258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A260  7C 9F 23 78 */	mr r31, r4
/* 8054A264  93 C1 00 08 */	stw r30, 8(r1)
/* 8054A268  7C 7E 1B 78 */	mr r30, r3
/* 8054A26C  4B FF CE 11 */	bl aNSC_message_ctrl
/* 8054A270  2C 03 00 01 */	cmpwi r3, 1
/* 8054A274  41 82 00 3C */	beq lbl_8054A2B0
/* 8054A278  7F C3 F3 78 */	mr r3, r30
/* 8054A27C  7F E4 FB 78 */	mr r4, r31
/* 8054A280  4B FF C3 59 */	bl aNSC_decide_next_move_act
/* 8054A284  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8054A288  7C 65 1B 78 */	mr r5, r3
/* 8054A28C  7C 05 00 00 */	cmpw r5, r0
/* 8054A290  41 82 00 14 */	beq lbl_8054A2A4
/* 8054A294  7F C3 F3 78 */	mr r3, r30
/* 8054A298  7F E4 FB 78 */	mr r4, r31
/* 8054A29C  48 00 0C 81 */	bl aNSC_setupAction
/* 8054A2A0  48 00 00 10 */	b lbl_8054A2B0
lbl_8054A2A4:
/* 8054A2A4  7F C3 F3 78 */	mr r3, r30
/* 8054A2A8  7F E4 FB 78 */	mr r4, r31
/* 8054A2AC  4B FF B6 15 */	bl aNCM_search_player2
lbl_8054A2B0:
/* 8054A2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A2B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A2B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054A2BC  7C 08 03 A6 */	mtlr r0
/* 8054A2C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A2C4  4E 80 00 20 */	blr 
