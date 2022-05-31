lbl_8053DE34:
/* 8053DE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DE38  7C 08 02 A6 */	mflr r0
/* 8053DE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DE40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DE44  7C 7F 1B 78 */	mr r31, r3
/* 8053DE48  4B FF DD A1 */	bl aNPC_anime_proc
/* 8053DE4C  7F E3 FB 78 */	mr r3, r31
/* 8053DE50  4B FF E3 89 */	bl aNPC_tex_anm_ctrl
/* 8053DE54  7F E3 FB 78 */	mr r3, r31
/* 8053DE58  4B FF FD AD */	bl aNPC_position_move
/* 8053DE5C  7F E3 FB 78 */	mr r3, r31
/* 8053DE60  7F E4 FB 78 */	mr r4, r31
/* 8053DE64  4B FF FA 79 */	bl aNPC_BGcheck
/* 8053DE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DE70  7C 08 03 A6 */	mtlr r0
/* 8053DE74  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DE78  4E 80 00 20 */	blr 
