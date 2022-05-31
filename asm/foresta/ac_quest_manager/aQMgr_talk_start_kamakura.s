lbl_80486D8C:
/* 80486D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486D90  7C 08 02 A6 */	mflr r0
/* 80486D94  38 80 00 09 */	li r4, 9
/* 80486D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486D9C  4B FF FF 61 */	bl aQMgr_talk_start_kamakura_common
/* 80486DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486DA4  7C 08 03 A6 */	mtlr r0
/* 80486DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80486DAC  4E 80 00 20 */	blr 
