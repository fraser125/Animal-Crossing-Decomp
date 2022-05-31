lbl_8053A09C:
/* 8053A09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053A0A0  7C 08 02 A6 */	mflr r0
/* 8053A0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053A0A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053A0AC  7C 7F 1B 78 */	mr r31, r3
/* 8053A0B0  7C 83 23 78 */	mr r3, r4
/* 8053A0B4  4B FF F5 F9 */	bl aNPC_get_draw_data_idx
/* 8053A0B8  1C C3 00 6C */	mulli r6, r3, 0x6c
/* 8053A0BC  3C 80 80 97 */	lis r4, npc_draw_data_tbl@ha /* 0x8096D228@ha */
/* 8053A0C0  7F E3 FB 78 */	mr r3, r31
/* 8053A0C4  38 04 D2 28 */	addi r0, r4, npc_draw_data_tbl@l /* 0x8096D228@l */
/* 8053A0C8  38 A0 00 6C */	li r5, 0x6c
/* 8053A0CC  7C 80 32 14 */	add r4, r0, r6
/* 8053A0D0  4B E8 09 55 */	bl func_803BAA24
/* 8053A0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053A0D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053A0DC  7C 08 03 A6 */	mtlr r0
/* 8053A0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053A0E4  4E 80 00 20 */	blr 
