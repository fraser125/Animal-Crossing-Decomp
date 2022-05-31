lbl_804D591C:
/* 804D591C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5920  7C 08 02 A6 */	mflr r0
/* 804D5924  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5928  4B E9 E9 ED */	bl Actor_position_moveF
/* 804D592C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5930  7C 08 03 A6 */	mtlr r0
/* 804D5934  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5938  4E 80 00 20 */	blr 
