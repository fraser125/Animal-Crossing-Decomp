lbl_8054A500:
/* 8054A500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A504  7C 08 02 A6 */	mflr r0
/* 8054A508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A50C  4B FF B9 09 */	bl aNSC_set_walk_spd
/* 8054A510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A514  7C 08 03 A6 */	mtlr r0
/* 8054A518  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A51C  4E 80 00 20 */	blr 
