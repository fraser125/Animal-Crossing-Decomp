lbl_8052FE10:
/* 8052FE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FE14  7C 08 02 A6 */	mflr r0
/* 8052FE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FE1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052FE20  7C 7F 1B 78 */	mr r31, r3
/* 8052FE24  4B FF D1 CD */	bl aNPC_anime_proc
/* 8052FE28  7F E3 FB 78 */	mr r3, r31
/* 8052FE2C  4B FF D7 B5 */	bl aNPC_tex_anm_ctrl
/* 8052FE30  7F E3 FB 78 */	mr r3, r31
/* 8052FE34  4B FF FB 55 */	bl aNPC_position_move
/* 8052FE38  7F E3 FB 78 */	mr r3, r31
/* 8052FE3C  7F E4 FB 78 */	mr r4, r31
/* 8052FE40  4B FF EE D9 */	bl func_8052ED18
/* 8052FE44  7F E3 FB 78 */	mr r3, r31
/* 8052FE48  4B FF F5 09 */	bl aNPC_entranceCheck
/* 8052FE4C  7F E3 FB 78 */	mr r3, r31
/* 8052FE50  4B FF F2 31 */	bl aNPC_circleRangeRevice
/* 8052FE54  7F E3 FB 78 */	mr r3, r31
/* 8052FE58  4B FF FE 61 */	bl aNPC_set_condition_info
/* 8052FE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FE64  7C 08 03 A6 */	mtlr r0
/* 8052FE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FE6C  4E 80 00 20 */	blr 
