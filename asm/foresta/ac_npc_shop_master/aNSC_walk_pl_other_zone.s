lbl_8057B7E8:
/* 8057B7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B7EC  7C 08 02 A6 */	mflr r0
/* 8057B7F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B7F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B7F8  7C 9F 23 78 */	mr r31, r4
/* 8057B7FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8057B800  7C 7E 1B 78 */	mr r30, r3
/* 8057B804  4B FF CE 11 */	bl aNSC_message_ctrl
/* 8057B808  2C 03 00 01 */	cmpwi r3, 1
/* 8057B80C  41 82 00 3C */	beq lbl_8057B848
/* 8057B810  7F C3 F3 78 */	mr r3, r30
/* 8057B814  7F E4 FB 78 */	mr r4, r31
/* 8057B818  4B FF C3 59 */	bl aNSC_decide_next_move_act
/* 8057B81C  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8057B820  7C 65 1B 78 */	mr r5, r3
/* 8057B824  7C 05 00 00 */	cmpw r5, r0
/* 8057B828  41 82 00 14 */	beq lbl_8057B83C
/* 8057B82C  7F C3 F3 78 */	mr r3, r30
/* 8057B830  7F E4 FB 78 */	mr r4, r31
/* 8057B834  48 00 0C 81 */	bl aNSC_setupAction
/* 8057B838  48 00 00 10 */	b lbl_8057B848
lbl_8057B83C:
/* 8057B83C  7F C3 F3 78 */	mr r3, r30
/* 8057B840  7F E4 FB 78 */	mr r4, r31
/* 8057B844  4B FF B6 15 */	bl aNSM_search_player2
lbl_8057B848:
/* 8057B848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B850  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057B854  7C 08 03 A6 */	mtlr r0
/* 8057B858  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B85C  4E 80 00 20 */	blr 
