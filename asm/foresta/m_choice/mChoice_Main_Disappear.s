lbl_80384D88:
/* 80384D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384D8C  7C 08 02 A6 */	mflr r0
/* 80384D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384D98  7C 9F 23 78 */	mr r31, r4
/* 80384D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80384DA0  7C 7E 1B 78 */	mr r30, r3
/* 80384DA4  4B FF FE E9 */	bl func_80384C8C
/* 80384DA8  7C 60 1B 78 */	mr r0, r3
/* 80384DAC  7F C3 F3 78 */	mr r3, r30
/* 80384DB0  7C 05 03 78 */	mr r5, r0
/* 80384DB4  7F E4 FB 78 */	mr r4, r31
/* 80384DB8  4B FF FF A5 */	bl mChoice_request_main_index_fromDisappear
/* 80384DBC  7F C3 F3 78 */	mr r3, r30
/* 80384DC0  7F E4 FB 78 */	mr r4, r31
/* 80384DC4  4B FF E5 A1 */	bl func_80383364
/* 80384DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80384DD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80384DD4  7C 08 03 A6 */	mtlr r0
/* 80384DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80384DDC  4E 80 00 20 */	blr 
