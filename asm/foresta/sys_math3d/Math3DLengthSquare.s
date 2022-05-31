lbl_80408EE8:
/* 80408EE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80408EEC  7C 08 02 A6 */	mflr r0
/* 80408EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80408EF4  38 A1 00 08 */	addi r5, r1, 8
/* 80408EF8  4B FB 20 81 */	bl xyz_t_sub
/* 80408EFC  38 61 00 08 */	addi r3, r1, 8
/* 80408F00  4B FF FE F9 */	bl Math3DVecLengthSquare
/* 80408F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80408F08  7C 08 03 A6 */	mtlr r0
/* 80408F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80408F10  4E 80 00 20 */	blr 
