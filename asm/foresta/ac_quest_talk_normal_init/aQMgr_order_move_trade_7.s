lbl_80494BD4:
/* 80494BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494BD8  7C 08 02 A6 */	mflr r0
/* 80494BDC  38 80 00 03 */	li r4, 3
/* 80494BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494BE4  4B FF E5 ED */	bl aQMgr_set_give_and_take_mode_GIVE
/* 80494BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494BEC  7C 08 03 A6 */	mtlr r0
/* 80494BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80494BF4  4E 80 00 20 */	blr 
