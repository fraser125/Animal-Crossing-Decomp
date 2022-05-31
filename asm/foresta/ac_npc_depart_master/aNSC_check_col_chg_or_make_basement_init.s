lbl_80551E60:
/* 80551E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551E64  7C 08 02 A6 */	mflr r0
/* 80551E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551E6C  4B FF B8 C1 */	bl aNSC_set_walk_spd
/* 80551E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551E74  7C 08 03 A6 */	mtlr r0
/* 80551E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80551E7C  4E 80 00 20 */	blr 
