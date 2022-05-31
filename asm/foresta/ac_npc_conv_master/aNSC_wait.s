lbl_8054A1D8:
/* 8054A1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A1DC  7C 08 02 A6 */	mflr r0
/* 8054A1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A1E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A1E8  7C 9F 23 78 */	mr r31, r4
/* 8054A1EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8054A1F0  7C 7E 1B 78 */	mr r30, r3
/* 8054A1F4  4B FF CE 89 */	bl aNSC_message_ctrl
/* 8054A1F8  2C 03 00 01 */	cmpwi r3, 1
/* 8054A1FC  41 82 00 3C */	beq lbl_8054A238
/* 8054A200  7F C3 F3 78 */	mr r3, r30
/* 8054A204  7F E4 FB 78 */	mr r4, r31
/* 8054A208  4B FF C3 D1 */	bl aNSC_decide_next_move_act
/* 8054A20C  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8054A210  7C 65 1B 78 */	mr r5, r3
/* 8054A214  7C 05 00 00 */	cmpw r5, r0
/* 8054A218  41 82 00 14 */	beq lbl_8054A22C
/* 8054A21C  7F C3 F3 78 */	mr r3, r30
/* 8054A220  7F E4 FB 78 */	mr r4, r31
/* 8054A224  48 00 0C F9 */	bl aNSC_setupAction
/* 8054A228  48 00 00 10 */	b lbl_8054A238
lbl_8054A22C:
/* 8054A22C  7F C3 F3 78 */	mr r3, r30
/* 8054A230  7F E4 FB 78 */	mr r4, r31
/* 8054A234  4B FF B5 FD */	bl aNCM_search_player
lbl_8054A238:
/* 8054A238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A240  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054A244  7C 08 03 A6 */	mtlr r0
/* 8054A248  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A24C  4E 80 00 20 */	blr 
