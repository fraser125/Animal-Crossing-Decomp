lbl_80552024:
/* 80552024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552028  7C 08 02 A6 */	mflr r0
/* 8055202C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552030  4B FF B6 E1 */	bl aNSC_set_stop_spd
/* 80552034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552038  7C 08 03 A6 */	mtlr r0
/* 8055203C  38 21 00 10 */	addi r1, r1, 0x10
/* 80552040  4E 80 00 20 */	blr 