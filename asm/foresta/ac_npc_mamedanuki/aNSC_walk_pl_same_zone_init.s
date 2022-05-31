lbl_8055ED18:
/* 8055ED18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055ED1C  7C 08 02 A6 */	mflr r0
/* 8055ED20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055ED24  4B FF B9 F5 */	bl aNSC_set_walk_spd
/* 8055ED28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055ED2C  7C 08 03 A6 */	mtlr r0
/* 8055ED30  38 21 00 10 */	addi r1, r1, 0x10
/* 8055ED34  4E 80 00 20 */	blr 
