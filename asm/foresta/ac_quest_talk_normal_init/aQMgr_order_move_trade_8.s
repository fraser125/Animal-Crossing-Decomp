lbl_80494BF8:
/* 80494BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494BFC  7C 08 02 A6 */	mflr r0
/* 80494C00  38 80 00 04 */	li r4, 4
/* 80494C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494C08  4B FF E5 C9 */	bl aQMgr_set_give_and_take_mode_GIVE
/* 80494C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494C10  7C 08 03 A6 */	mtlr r0
/* 80494C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80494C18  4E 80 00 20 */	blr 
