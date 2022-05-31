lbl_80494B8C:
/* 80494B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494B90  7C 08 02 A6 */	mflr r0
/* 80494B94  38 80 00 01 */	li r4, 1
/* 80494B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494B9C  4B FF E6 35 */	bl aQMgr_set_give_and_take_mode_GIVE
/* 80494BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494BA4  7C 08 03 A6 */	mtlr r0
/* 80494BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80494BAC  4E 80 00 20 */	blr 
