lbl_8055ECF8:
/* 8055ECF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055ECFC  7C 08 02 A6 */	mflr r0
/* 8055ED00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055ED04  4B FF B9 F9 */	bl aNSC_set_stop_spd
/* 8055ED08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055ED0C  7C 08 03 A6 */	mtlr r0
/* 8055ED10  38 21 00 10 */	addi r1, r1, 0x10
/* 8055ED14  4E 80 00 20 */	blr 
