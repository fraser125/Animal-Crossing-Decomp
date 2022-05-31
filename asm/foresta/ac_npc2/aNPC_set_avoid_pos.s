lbl_8053DB00:
/* 8053DB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DB04  7C 08 02 A6 */	mflr r0
/* 8053DB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DB0C  D0 23 09 0C */	stfs f1, 0x90c(r3)
/* 8053DB10  D0 43 09 10 */	stfs f2, 0x910(r3)
/* 8053DB14  4B FF FF A5 */	bl aNPC_set_mv_angl
/* 8053DB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DB1C  7C 08 03 A6 */	mtlr r0
/* 8053DB20  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DB24  4E 80 00 20 */	blr 
