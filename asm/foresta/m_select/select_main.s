lbl_80629A4C:
/* 80629A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629A50  7C 08 02 A6 */	mflr r0
/* 80629A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80629A5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80629A60  7C 7E 1B 78 */	mr r30, r3
/* 80629A64  7F DF F3 78 */	mr r31, r30
/* 80629A68  4B FF F3 39 */	bl select_move
/* 80629A6C  7F E3 FB 78 */	mr r3, r31
/* 80629A70  4B FF FF 19 */	bl select_draw
/* 80629A74  83 FE 00 00 */	lwz r31, 0(r30)
/* 80629A78  7F C3 F3 78 */	mr r3, r30
/* 80629A7C  7F E4 FB 78 */	mr r4, r31
/* 80629A80  4B DD B1 75 */	bl game_debug_draw_last
/* 80629A84  7F E3 FB 78 */	mr r3, r31
/* 80629A88  4B DD B2 F1 */	bl game_draw_last
/* 80629A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80629A94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80629A98  7C 08 03 A6 */	mtlr r0
/* 80629A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80629AA0  4E 80 00 20 */	blr 
