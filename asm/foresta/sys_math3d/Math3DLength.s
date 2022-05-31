lbl_80408F14:
/* 80408F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80408F18  7C 08 02 A6 */	mflr r0
/* 80408F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408F20  4B FB 20 B5 */	bl search_position_distance
/* 80408F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408F28  7C 08 03 A6 */	mtlr r0
/* 80408F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80408F30  4E 80 00 20 */	blr 
