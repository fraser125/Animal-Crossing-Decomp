lbl_80544F00:
/* 80544F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80544F04  7C 08 02 A6 */	mflr r0
/* 80544F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80544F10  7C 7F 1B 78 */	mr r31, r3
/* 80544F14  7C 83 23 78 */	mr r3, r4
/* 80544F18  4B FF FA 1D */	bl aNPC_get_draw_data_idx
/* 80544F1C  1C C3 00 6C */	mulli r6, r3, 0x6c
/* 80544F20  3C 80 80 97 */	lis r4, npc_draw_data_tbl@ha /* 0x8096D228@ha */
/* 80544F24  7F E3 FB 78 */	mr r3, r31
/* 80544F28  38 04 D2 28 */	addi r0, r4, npc_draw_data_tbl@l /* 0x8096D228@l */
/* 80544F2C  38 A0 00 6C */	li r5, 0x6c
/* 80544F30  7C 80 32 14 */	add r4, r0, r6
/* 80544F34  4B E7 5A F1 */	bl func_803BAA24
/* 80544F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80544F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80544F40  7C 08 03 A6 */	mtlr r0
/* 80544F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80544F48  4E 80 00 20 */	blr 
