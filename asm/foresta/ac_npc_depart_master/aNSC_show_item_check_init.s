lbl_80552508:
/* 80552508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055250C  7C 08 02 A6 */	mflr r0
/* 80552510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552514  4B FF B1 FD */	bl aNSC_set_stop_spd
/* 80552518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055251C  7C 08 03 A6 */	mtlr r0
/* 80552520  38 21 00 10 */	addi r1, r1, 0x10
/* 80552524  4E 80 00 20 */	blr 
