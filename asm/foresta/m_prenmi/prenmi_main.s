lbl_8062DA68:
/* 8062DA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DA6C  7C 08 02 A6 */	mflr r0
/* 8062DA70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DA74  38 00 00 01 */	li r0, 1
/* 8062DA78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062DA7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8062DA80  7C 7E 1B 78 */	mr r30, r3
/* 8062DA84  7F DF F3 78 */	mr r31, r30
/* 8062DA88  90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 8062DA8C  4B FF FD 89 */	bl func_8062D814
/* 8062DA90  7F E3 FB 78 */	mr r3, r31
/* 8062DA94  4B FF FE 15 */	bl prenmi_draw
/* 8062DA98  83 FE 00 00 */	lwz r31, 0(r30)
/* 8062DA9C  7F C3 F3 78 */	mr r3, r30
/* 8062DAA0  7F E4 FB 78 */	mr r4, r31
/* 8062DAA4  4B DD 71 51 */	bl game_debug_draw_last
/* 8062DAA8  7F E3 FB 78 */	mr r3, r31
/* 8062DAAC  4B DD 72 CD */	bl game_draw_last
/* 8062DAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DAB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062DAB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062DABC  7C 08 03 A6 */	mtlr r0
/* 8062DAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DAC4  4E 80 00 20 */	blr 
