lbl_8057B770:
/* 8057B770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B774  7C 08 02 A6 */	mflr r0
/* 8057B778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B780  7C 9F 23 78 */	mr r31, r4
/* 8057B784  93 C1 00 08 */	stw r30, 8(r1)
/* 8057B788  7C 7E 1B 78 */	mr r30, r3
/* 8057B78C  4B FF CE 89 */	bl aNSC_message_ctrl
/* 8057B790  2C 03 00 01 */	cmpwi r3, 1
/* 8057B794  41 82 00 3C */	beq lbl_8057B7D0
/* 8057B798  7F C3 F3 78 */	mr r3, r30
/* 8057B79C  7F E4 FB 78 */	mr r4, r31
/* 8057B7A0  4B FF C3 D1 */	bl aNSC_decide_next_move_act
/* 8057B7A4  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8057B7A8  7C 65 1B 78 */	mr r5, r3
/* 8057B7AC  7C 05 00 00 */	cmpw r5, r0
/* 8057B7B0  41 82 00 14 */	beq lbl_8057B7C4
/* 8057B7B4  7F C3 F3 78 */	mr r3, r30
/* 8057B7B8  7F E4 FB 78 */	mr r4, r31
/* 8057B7BC  48 00 0C F9 */	bl aNSC_setupAction
/* 8057B7C0  48 00 00 10 */	b lbl_8057B7D0
lbl_8057B7C4:
/* 8057B7C4  7F C3 F3 78 */	mr r3, r30
/* 8057B7C8  7F E4 FB 78 */	mr r4, r31
/* 8057B7CC  4B FF B5 FD */	bl aNSM_search_player
lbl_8057B7D0:
/* 8057B7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B7D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B7D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057B7DC  7C 08 03 A6 */	mtlr r0
/* 8057B7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B7E4  4E 80 00 20 */	blr 
