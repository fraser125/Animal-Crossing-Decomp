lbl_80551E18:
/* 80551E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551E1C  7C 08 02 A6 */	mflr r0
/* 80551E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551E24  4B FF B9 09 */	bl aNSC_set_walk_spd
/* 80551E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551E2C  7C 08 03 A6 */	mtlr r0
/* 80551E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80551E34  4E 80 00 20 */	blr 
