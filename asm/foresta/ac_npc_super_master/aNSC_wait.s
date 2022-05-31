lbl_8058527C:
/* 8058527C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585280  7C 08 02 A6 */	mflr r0
/* 80585284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058528C  7C 9F 23 78 */	mr r31, r4
/* 80585290  93 C1 00 08 */	stw r30, 8(r1)
/* 80585294  7C 7E 1B 78 */	mr r30, r3
/* 80585298  4B FF CE 89 */	bl aNSC_message_ctrl
/* 8058529C  2C 03 00 01 */	cmpwi r3, 1
/* 805852A0  41 82 00 3C */	beq lbl_805852DC
/* 805852A4  7F C3 F3 78 */	mr r3, r30
/* 805852A8  7F E4 FB 78 */	mr r4, r31
/* 805852AC  4B FF C3 D1 */	bl aNSC_decide_next_move_act
/* 805852B0  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 805852B4  7C 65 1B 78 */	mr r5, r3
/* 805852B8  7C 05 00 00 */	cmpw r5, r0
/* 805852BC  41 82 00 14 */	beq lbl_805852D0
/* 805852C0  7F C3 F3 78 */	mr r3, r30
/* 805852C4  7F E4 FB 78 */	mr r4, r31
/* 805852C8  48 00 0C F9 */	bl aNSC_setupAction
/* 805852CC  48 00 00 10 */	b lbl_805852DC
lbl_805852D0:
/* 805852D0  7F C3 F3 78 */	mr r3, r30
/* 805852D4  7F E4 FB 78 */	mr r4, r31
/* 805852D8  4B FF B5 F5 */	bl aNSPM_search_player
lbl_805852DC:
/* 805852DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805852E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805852E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805852E8  7C 08 03 A6 */	mtlr r0
/* 805852EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805852F0  4E 80 00 20 */	blr 
