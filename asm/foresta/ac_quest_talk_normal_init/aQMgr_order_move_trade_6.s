lbl_80494BB0:
/* 80494BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494BB4  7C 08 02 A6 */	mflr r0
/* 80494BB8  38 80 00 02 */	li r4, 2
/* 80494BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494BC0  4B FF E6 11 */	bl aQMgr_set_give_and_take_mode_GIVE
/* 80494BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494BC8  7C 08 03 A6 */	mtlr r0
/* 80494BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80494BD0  4E 80 00 20 */	blr 
